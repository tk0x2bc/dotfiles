#require 'irb/completion'
require 'pp'
require 'rubygems'
require 'wirble'

IRB.conf[:SAVE_HISTORY] = 100000

Wirble.init
Wirble.colorize
