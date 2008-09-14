require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Map do
  it "should parse yahoo" do
    @map = Map.new({:url => 'http://maps.yahoo.com/#mvt=m&lat=-6.664608&lon=-56.887207&zoom=6'})
    @map.provider.should eql('ymaps')    
  end

  it "should parse ostreet" do
    @map = Map.new({:url => 'http://www.openstreetmap.org/?lat=-22.2&lon=-47.45&zoom=7&layers=B000FTF'})
    @map.provider.should eql('omaps')    
  end

  it "should parse live" do
    @map = Map.new({:url => 'http://maps.live.com/default.aspx?v=2&FORM=LMLTCP&cp=43.75~-99.71&style=r&lvl=4'})
    @map.provider.should eql('lmaps')    
  end

  it "should raise if not found" do
    lambda{ @map = Map.new({:url => 'http://some.new.map.thing'}) }.should raise_error    
  end  
end

# => http://www.openstreetmap.org/?lat=-22.2&lon=-47.45&zoom=7&layers=B000FTF

# => http://maps.live.com/default.aspx?v=2&FORM=LMLTCP&cp=43.75~-99.71&style=r&lvl=4&tilt=-90&dir=0&alt=-1000&phx=0&phy=0&phscl=1&encType=1
# => http://maps.google.com/?ie=UTF8&ll=-7.100893,-57.041016&spn=25.603674,31.992187&z=5
