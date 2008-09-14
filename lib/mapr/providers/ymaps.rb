module Mapr
  module Providers
    def from_ymaps
      
      tiles = []
      
      
      tiles.each { |t| Tile.new(:url => t)}
      
    end
      
    def to_ymaps
      "http://maps.yahoo.com/#mvt=m&lat=#{@x}&lon=#{@y}&zoom=#{@z}"      
    end
    
    def geolocate_ymaps          
      url = "http://local.yahooapis.com/MapsService/V1/geocode?appid=54&street=701+First+Ave&city=Sunnyvale&state=CA"
      open(url) do |file|    
        @body = file.read    
        doc = Hpricot(@body)
        @x = (doc/"Longitude").inner_html.to_f
        @y = (doc/"Latitude").inner_html.to_f         
      end      
    end
   
  end
end