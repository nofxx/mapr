require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')



describe Bin do
  
  it "should pull a url back together nicely" do
    url = 'http://maps.google.com/?ie=UTF8&ll=-20.78356,-51.715693&spn=0.023753,0.031242&z=15'
    Bin.run! url, 10, 10, 10
  end
  
  
  
  
  
  
  
  
  
  
end