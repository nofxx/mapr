require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

module TilespecHelper
  def attr_valid_tile
   {
     :url => "http://us.i1.yimg.com/us.yimg.com/i/ww/rb/br/br_newlogonight_1.1.gif",
     :points => [10.313, 23.2323],
     :filename => "mapx/tile.jpg"     
   }            
  end
  def mock_image
    @mock_image ||= mock(File)#, :null_object => true)
  end
  def mock_file
    @mock_file ||= mock(File)#, :null_object => true)
  end
end


describe Tile do
  include TilespecHelper
  
  describe ".Utopia" do
    before(:each) do
      @tile = Tile.new(attr_valid_tile)     
    end
  
    it "should instantiate" do
      @tile.url.should eql('http://us.i1.yimg.com/us.yimg.com/i/ww/rb/br/br_newlogonight_1.1.gif')
      @tile.filename.should eql('mapx/tile.jpg')
    end
  
    it "should write the image down" do
      File.should_receive(:open).with("mapx/tile.jpg", "wb").and_return(mock_file)
      @tile.should_receive(:open).with('http://us.i1.yimg.com/us.yimg.com/i/ww/rb/br/br_newlogonight_1.1.gif').and_return(mock_image)
      @mock_image.should_receive(:read).and_return('JPG00000000000094')
      @mock_file.should_receive(:write).with('JPG00000000000094')
      @tile.write_down!    
    end
  end
end
  
describe ".Wired tests" do
  include TilespecHelper
  
  it "should get the file" do
      #File.should_receive(:write).with('')
      #@tile = Tile.new(attr_valid_tile.with(:url => 'http://mt1.google.com/mt/v=nq.83&hl=en&x=7&y=5&z=4&s=Ga'))
    
    
  end
  

end