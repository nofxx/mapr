$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'mapr/bin'
require 'mapr/version'
require 'mapr/tile'
require 'mapr/map'
require 'mapr/export'


module Mapr
  #Is on mapr/
end