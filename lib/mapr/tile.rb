require 'open-uri'

module Mapr
  class Tile
    attr_reader :filename, :size, :url
        
    def initialize(args)
      @url = args[:url]
      @filename = args[:filename]
      @points = args[:points]
      @raw = File.open(@url).read           
    end
    
    # Save the tile to the disk
    # 'b' for binary mode (needed in winshit)
    def write_down!      
      File.open(@filename, "wb").write(@raw)
    end    
  end
end