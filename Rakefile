require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('vanities', '0.1.0') do |x|
  x.description               = "Give each of your models a simple 'vanity' URL.  
                                Makes example.com/users/1 into something like example.com/foobar"
  x.url                       = "http://githbub.com/jaustinhughey/vanities"
  x.author                    = "J. Austin Hughey"
  x.email                     = "jaustinhughey@gmail.com"
  x.ignore_pattern            = ["tmp/*", "script/*"]
  x.development_dependencies  = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }