require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

module TilespecHelper
  def attr_valid_tile
   {
     :url => "http://maps.yahoo.com",
     :points => [10.313, 23.2323],
     :filename => "mapx/tile.jpg"     
   }            
  end
end


describe Tile do
  include TilespecHelper
  
  
  it "should instantiate" do
    
    @tile = Tile.new(attr_valid_tile)
    
    
    
    
    
  end
  
  it "should read the image"
  
  it "should write the image down"
  
  
  
  
  
  
end