require 'mapr/providers/ostreet'
require 'mapr/providers/ymaps'
require 'mapr/providers/lmaps'
require 'mapr/providers/gmaps'

module Mapr
  
  PROVIDERS = %w{ yahoo google live openstreetmaps }
  
  class Map
    include Providers    
    attr_reader :url, :provider, :x, :y, :z
    alias :zoom :z
    alias :lat :x
    alias :lon :y
      
    def initialize(args) 
      @z = args[:z]; @x = args[:x]; @y = args[:y]
      @url = args[:url];       
      @provider = @url.scan(PROVIDERS)
      @tiles = self.send :"parse_#{@provider}"
    end   
  end
end