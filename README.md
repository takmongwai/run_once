# RunOnce

避免ruby脚本重复运行的函数

## Installation
<pre>
 git clone git://github.com/weidewang/run_once.git
 cd run_once
 rake install
</pre>
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
1. Create your feature branch (git checkout -b my-new-feature)
1. Commit your changes (git commit -am 'Add some feature')
1. Push to the branch (git push origin my-new-feature)
1. Create new Pull Request
