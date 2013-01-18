require "run_once/version"
require 'fileutils'

module RunOnce
  def self.runing(args={})
    args = { 
      :pid_dir => Dir::tmpdir,
      :file_name => $0
    }.merge(args)
    pid_dir = File.join( args[:pid_dir],'run_once')
    FileUtils.mkdir_p(pid_dir) unless File.exists?(pid_dir)
    pid_file = File.join( pid_dir,%Q~run_once_#{args[:file_name].gsub(/\/|\./,'')}.pid~ )
    old_pid = File.open(pid_file).read.to_s.to_i if File.exists?(pid_file)
    old_pid ||= 0

    begin
      Process.getpgid(old_pid)
      return yield(old_pid) if block_given?
      return old_pid
    rescue Errno::ESRCH
      File.open(pid_file,'w') do |f|
        f.write Process.pid
      end
    end
    nil
  end
end
