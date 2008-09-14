require 'open-uri'
require 'hpricot'
 
module Mapr
  module Providers
    def from_gmaps
      
      
    end
      
      
    def to_gmaps
      
    end
    
    def geolocate_gmaps            
      url = "http://maps.google.com/maps/geo?q=#{@search}&output=xml"  
      open(url) do |file|    
        @body = file.read    
        doc = Hpricot(@body)    
        (doc/:point/:coordinates).each do |link|      
          @x, @y = link.inner_html.split(',')    
        end  
      end      
    end        
    
  end
end