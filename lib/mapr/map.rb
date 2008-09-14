require 'mapr/providers/omaps'
require 'mapr/providers/ymaps'
require 'mapr/providers/lmaps'
require 'mapr/providers/gmaps'

module Mapr  
  PROVIDERS = %w{ yahoo google live openstreetmaps }
  class Map
    include Providers   
    attr_reader :url, :provider, :x, :y, :z, :depth, :name
    alias :zoom :z
    alias :lat :x
    alias :lon :y
      
    def initialize(args) 
      @z = args[:z]; @x = args[:x]; @y = args[:y]
      @depth = args[:depth]
      if @url = args[:url]
        @provider = case @url #.scan('yahoo google live openstreetmaps')
        when /yaho/ then 'ymaps'
        when /live/ then 'lmaps'            
        when /goog/ then 'gmaps'        
        when /open/ then 'omaps'        
        else raise 'Provider not supported.'
        end
      end
    end   
    
    def fill_tiles
      @tiles ||= self.send :"from_#{@provider}"
    end
  end
end