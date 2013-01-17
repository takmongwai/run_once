# RunOnce

避免ruby脚本重复运行的函数

## Installation

Add this line to your application's Gemfile:

    gem 'run_once'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install run_once

## Usage

<pre>
#!/usr/bin/env ruby

require 'rubygems'
require 'run_once'

RunOnce.runing{|pid| 
  puts %Q~#{$0} is runing,pid is #{pid}~
  exit(0)
}


 # you code

exit(0)
</pre>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request