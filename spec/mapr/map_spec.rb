require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')


describe Map do
  
  it "should parse yahoo" do
    @map = Map.new({:url => 'http://maps.yahoo.com/something'})
    @map.provider.should eql('ymaps')    
  end

  it "should parse ostreet" do
    @map = Map.new({:url => 'http://openstreetmaps.org'})
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

# live link => http://maps.live.com/default.aspx?v=2&FORM=LMLTCP&cp=43.75~-99.71&style=r&lvl=4&tilt=-90&dir=0&alt=-1000&phx=0&phy=0&phscl=1&encType=1