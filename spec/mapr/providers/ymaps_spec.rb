require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

module YmapsSpecHelper
  def attr_valid_ymaps
   {
     :url => "http://us.i1.yimg.com/us.yimg.com/i/ww/rb/br/br_newlogonight_1.1.gif",
     :x => -6.664608,
     :y => -56.887207,
     :z => 6,
     :filename => "mapx/tile.jpg"     
   }
  end
end

describe Providers do
  include YmapsSpecHelper




  describe " to ymaps" do
    
    before(:each) do
      @map = Map.new(attr_valid_ymaps.with(:url => nil))
    end
    
    it "should generate a valid yahoo url" do
    
      @map.to_ymaps.should eql('http://maps.yahoo.com/#mvt=m&lat=-6.664608&lon=-56.887207&zoom=6')
    
    end
    
  end







end


# => http://maps.yahoo.com/#mvt=m&lat=-6.664608&lon=-56.887207&zoom=6
#
#
#
# YAHOO
#
# GET 200 application/json  http://maps.yahoo.com/services/1.0.0/bizloc?q=&intl=us&mag=11&zoom=11&rn=1221361233241
#   GET 200 text/html http://maps.yahoo.com/darla_fc?cb=YAHOO.ads.darla._loaded&p=maps&f=2022332404&l=LREC&en=utf-8&rn=1221361233355&em=%7B%22site-attribute%22%3A%22content%3Dno_expandable%3Bajax_cert_expandable%22%2C%22ad-logoption%22%3A%22NOPAGEVIEW%22%7D&t_e=1&.intl=us
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=50&y=-10&z=8&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=50&y=-9&z=8&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=50&y=-8&z=8&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=50&y=-7&z=8&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=44&y=-6&z=8&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=45&y=-6&z=8&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=46&y=-6&z=8&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=47&y=-6&z=8&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=48&y=-6&z=8&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=49&y=-6&z=8&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=50&y=-6&z=8&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=43&y=-6&z=8&r=1
# GET 200 image/gif http://us.bc.yahoo.com/b?P=qDx5pWKIKoRog3QXSKCVQwBDyRDx20jMflEACMIr&T=15d7phn79%2fX%3d1221361233%2fE%3d97161599%2fR%3dmaps%2fK%3d5%2fV%3d10.1%2fW%3dC%2fY%3dYAHOO%2fF%3d3415030943%2fG%3dCnVzCgo-%2fH%3dY29udGVudD1ub19leHBhbmRhYmxl%2fQ%3d-1%2fI%3d1%2fS%3d1%2fJ%3dC82A8862&U=13fpodr52%2fN%3d5CW7CNGDJGs-%2fC%3d661339.12657981.13065819.11596560%2fD%3dBIZ%2fB%3d5307536%2fV%3d1
# GET 200 image/gif http://us.bc.yahoo.com/b?P=qDx5pWKIKoRog3QXSKCVQwBDyRDx20jMflEACMIr&T=15di7eqji%2fX%3d1221361233%2fE%3d97161599%2fR%3dmaps%2fK%3d5%2fV%3d10.1%2fW%3dC%2fY%3dYAHOO%2fF%3d3456645366%2fG%3dCnVzCgo-%2fH%3dY29udGVudD1ub19leHBhbmRhYmxl%2fQ%3d-1%2fI%3d1%2fS%3d1%2fJ%3dC82A8862&U=13f70gu6b%2fN%3d5SW7CNGDJGs-%2fC%3d638874.12115966.12752630.11650507%2fD%3dBIZ%2fB%3d5277622%2fV%3d1
# 19  GET 200 text/html http://ad.yieldmanager.com/st?ad_type=iframe&ad_size=300x250&site=140469&section_code=12804709&cb=1221361233801951&zip=&ycg=&yyob=&pub_redirect_unencoded=1&pub_redirect=http://us.ard.yahoo.com/SIG=150lgkhtq/M=674272.12804709.13083635.1659633/D=maps/S=2022332404:LREC/Y=YAHOO/EXP=1221368433/L=K5I_CGKIKoRog3QXSKCVQwKjyRDx20jMflEADA.e/B=RSa7CNGDJGs-/J=1221361233801951/A=5404814/R=0/*
# ) GET (Cache) application/x-javascript  http://l.yimg.com/us.js.yimg.com/lib/bc/bc_2.0.4.js
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=94&y=-16&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=94&y=-15&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=93&y=-16&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=93&y=-15&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=92&y=-16&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=92&y=-15&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=91&y=-16&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=91&y=-15&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=94&y=-17&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=94&y=-18&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=93&y=-17&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=93&y=-18&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=92&y=-17&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=92&y=-18&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=91&y=-17&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=91&y=-18&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=95&y=-16&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=95&y=-15&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=96&y=-16&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=96&y=-15&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=97&y=-16&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=97&y=-15&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=95&y=-17&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=95&y=-18&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=96&y=-17&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=96&y=-18&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=97&y=-17&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=97&y=-18&z=9&r=1
# GET 200 image/gif http://geo.yahoo.com/p?s=2022332405&appid=YahooEn_USMaps&swpx=1680&shpx=1050&wpx=1280&hpx=463&oper=zoom&i_api=0&apptype=ajax&nloc=1&i_trf=0&ds_i=n&ds_maptr=n&mvt=m&mag=9&lat=-21.407048&lon=-47.087403&ds_zmtr=n
# GET (Cache) image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=5&y=-1&z=5&r=1
# GET (Cache) image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=5&y=-2&z=5&r=1
# GET (Cache) image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=6&y=-1&z=5&r=1
# GET (Cache) image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=6&y=-2&z=5&r=1
# T (Aborted) NS_BINDING_ABORTED  http://us.maps1.yimg.com/us.tile.maps.yimg.com/copyright?t=png&color=black&aa=-1&x=94&y=-16&z=9&top=1&left=3&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/copyright?t=png&color=black&aa=-1&x=94&y=-16&z=9&top=1&left=3&r=1
# GET 200 image/gif http://geo.yahoo.com/p?s=2022332405&appid=YahooEn_USMaps&swpx=1680&shpx=1050&wpx=1280&hpx=463&oper=pan_auto&i_api=0&apptype=ajax&nloc=1&i_trf=0&ds_i=n&ds_maptr=n&mvt=m&mag=9&lat=-21.407048&lon=-47.087403&=n
# 0 GET 200 image/gif http://us.bc.yahoo.com/b?P=K5I_CGKIKoRog3QXSKCVQwKjyRDx20jMflEADA.e&T=15q5rd609%2fX%3d1221361233%2fE%3d2022332404%2fR%3dmaps%2fK%3d5%2fV%3d1.1%2fW%3dJ%2fY%3dYAHOO%2fF%3d1767612563%2fH%3dY29udGVudD1ub19leHBhbmRhYmxlO2FqYXhfY2VydF9leHBhbmRhYmxl%2fI%3d1%2fS%3d1%2fJ%3dC72A8862&U=13fhm9bcf%2fN%3dRSa7CNGDJGs-%2fC%3d674272.12804709.13083635.1659633%2fD%3dLREC%2fB%3d5404814%2fV%3d1&Q=0&O=0.9902338834143817
# GET 200 image/gif http://content.yieldmanager.edgesuite.net/atoms/39/60/22/8e/3960228ea5377ce67ee8531596542dfb.gif
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=98&y=-18&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=98&y=-17&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=98&y=-16&z=9&r=1
#   GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=98&y=-15&z=9&r=1
# 2 GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=92&y=-14&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=93&y=-14&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=94&y=-14&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=95&y=-14&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=96&y=-14&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=97&y=-14&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=98&y=-14&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=91&y=-14&z=9&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=189&y=-31&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=189&y=-30&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=188&y=-31&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=188&y=-30&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=187&y=-31&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=187&y=-30&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=186&y=-31&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=186&y=-30&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=189&y=-32&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=189&y=-33&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=188&y=-32&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=188&y=-33&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=187&y=-32&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=187&y=-33&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=186&y=-32&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=186&y=-33&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=190&y=-31&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=190&y=-30&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=191&y=-31&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=191&y=-30&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=192&y=-31&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=192&y=-30&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=190&y=-32&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=190&y=-33&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=191&y=-32&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=191&y=-33&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=192&y=-32&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=192&y=-33&z=10&r=1
# GET 200 image/gif http://geo.yahoo.com/p?s=2022332405&appid=YahooEn_USMaps&swpx=1680&shpx=1050&wpx=1280&hpx=463&oper=zoom&i_api=0&apptype=ajax&nloc=1&i_trf=0&ds_i=n&ds_maptr=n&mvt=m&mag=10&lat=-21.174168&lon=-46.977539&ds_zmtr=n
# GET (Cache) image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=11&y=-2&z=6&r=1
# GET (Cache) image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=11&y=-3&z=6&r=1
# GET (Cache) image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=12&y=-2&z=6&r=1
# GET (Cache) image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=12&y=-3&z=6&r=1
# T (Aborted) NS_BINDING_ABORTED  http://us.maps1.yimg.com/us.tile.maps.yimg.com/copyright?t=png&color=black&aa=-1&x=189&y=-31&z=10&top=1&left=3&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/copyright?t=png&color=black&aa=-1&x=189&y=-31&z=10&top=1&left=3&r=1
# GET 200 image/gif http://geo.yahoo.com/p?s=2022332405&appid=YahooEn_USMaps&swpx=1680&shpx=1050&wpx=1280&hpx=463&oper=pan_auto&i_api=0&apptype=ajax&nloc=1&i_trf=0&ds_i=n&ds_maptr=n&mvt=m&mag=10&lat=-21.174168&lon=-46.977539&=n
# GET 200 application/json  http://maps.yahoo.com/services/1.0.0/bizloc?q=&intl=us&mag=9&zoom=9&rn=1221361250489
#   GET 200 text/html http://maps.yahoo.com/darla_fc?cb=YAHOO.ads.darla._loaded&p=maps&f=2022332404&l=LREC&en=utf-8&rn=1221361250626&em=%7B%22site-attribute%22%3A%22content%3Dno_expandable%3Bajax_cert_expandable%22%2C%22ad-logoption%22%3A%22NOPAGEVIEW%22%7D&t_e=1&.intl=us
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=185&y=-33&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=185&y=-32&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=185&y=-31&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=185&y=-30&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=185&y=-29&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=186&y=-29&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=187&y=-29&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=188&y=-29&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=189&y=-29&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=190&y=-29&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=191&y=-29&z=10&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=192&y=-29&z=10&r=1
# GET 200 image/gif http://us.bc.yahoo.com/b?P=RuZFWmKIKoRog3QXSKCVQwBqyRDx20jMfmIADISl&T=15d5vpo8k%2fX%3d1221361250%2fE%3d97161599%2fR%3dmaps%2fK%3d5%2fV%3d10.1%2fW%3dC%2fY%3dYAHOO%2fF%3d4130129416%2fG%3dCnVzCgo-%2fH%3dY29udGVudD1ub19leHBhbmRhYmxl%2fQ%3d-1%2fI%3d1%2fS%3d1%2fJ%3dC32A8862&U=13fudas3u%2fN%3dAASTANGDJGo-%2fC%3d638874.12115966.12752630.11650507%2fD%3dBIZ%2fB%3d5277622%2fV%3d1
# GET 200 image/gif http://us.bc.yahoo.com/b?P=RuZFWmKIKoRog3QXSKCVQwBqyRDx20jMfmIADISl&T=15dnan7qo%2fX%3d1221361250%2fE%3d97161599%2fR%3dmaps%2fK%3d5%2fV%3d10.1%2fW%3dC%2fY%3dYAHOO%2fF%3d3185281835%2fG%3dCnVzCgo-%2fH%3dY29udGVudD1ub19leHBhbmRhYmxl%2fQ%3d-1%2fI%3d1%2fS%3d1%2fJ%3dC32A8862&U=13f1snin6%2fN%3dAQSTANGDJGo-%2fC%3d661339.12657981.13065819.11596560%2fD%3dBIZ%2fB%3d5307536%2fV%3d1
# 89  GET 200 text/html http://ad.yieldmanager.com/st?ad_type=iframe&ad_size=300x250&site=140469&section_code=12804709&cb=1221361251019984&zip=&ycg=&yyob=&pub_redirect_unencoded=1&pub_redirect=http://us.ard.yahoo.com/SIG=150ose2a1/M=674272.12804709.13083635.1659633/D=maps/S=2022332404:LREC/Y=YAHOO/EXP=1221368451/L=fctia2KIKoRog3QXSKCVQwEryRDx20jMfmMAAC49/B=3ku7CNGDJGs-/J=1221361251019984/A=5404814/R=0/*
# ) GET (Cache) application/x-javascript  http://l.yimg.com/us.js.yimg.com/lib/bc/bc_2.0.4.js
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=378&y=-62&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=378&y=-61&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=377&y=-62&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=377&y=-61&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=376&y=-62&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=376&y=-61&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=375&y=-62&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=375&y=-61&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=378&y=-63&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=378&y=-64&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=377&y=-63&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=377&y=-64&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=376&y=-63&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=376&y=-64&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=375&y=-63&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=375&y=-64&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=379&y=-62&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=379&y=-61&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=380&y=-62&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=380&y=-61&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=381&y=-62&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=381&y=-61&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=379&y=-63&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=379&y=-64&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=380&y=-63&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=380&y=-64&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=381&y=-63&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=381&y=-64&z=11&r=1
# GET 200 image/gif http://geo.yahoo.com/p?s=2022332405&appid=YahooEn_USMaps&swpx=1680&shpx=1050&wpx=1280&hpx=463&oper=zoom&i_api=0&apptype=ajax&nloc=1&i_trf=0&ds_i=n&ds_maptr=n&mvt=m&mag=11&lat=-21.178009&lon=-46.974793&ds_zmtr=n
# GET (Cache) image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=23&y=-4&z=7&r=1
# GET (Cache) image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=23&y=-5&z=7&r=1
# GET (Cache) image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=24&y=-4&z=7&r=1
# GET (Cache) image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=24&y=-5&z=7&r=1
# T (Aborted) NS_BINDING_ABORTED  http://us.maps1.yimg.com/us.tile.maps.yimg.com/copyright?t=png&color=black&aa=-1&x=378&y=-62&z=11&top=1&left=3&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/copyright?t=png&color=black&aa=-1&x=378&y=-62&z=11&top=1&left=3&r=1
# GET 200 image/gif http://geo.yahoo.com/p?s=2022332405&appid=YahooEn_USMaps&swpx=1680&shpx=1050&wpx=1280&hpx=463&oper=pan_auto&i_api=0&apptype=ajax&nloc=1&i_trf=0&ds_i=n&ds_maptr=n&mvt=m&mag=11&lat=-21.178009&lon=-46.974793&=n
# ) GET (Cache) application/x-javascript  http://content.yieldmanager.edgesuite.net/flash_activate.js
# 0 GET 200 image/gif http://us.bc.yahoo.com/b?P=fctia2KIKoRog3QXSKCVQwEryRDx20jMfmMAAC49&T=15qgr3mvk%2fX%3d1221361251%2fE%3d2022332404%2fR%3dmaps%2fK%3d5%2fV%3d1.1%2fW%3dJ%2fY%3dYAHOO%2fF%3d4102724438%2fH%3dY29udGVudD1ub19leHBhbmRhYmxlO2FqYXhfY2VydF9leHBhbmRhYmxl%2fI%3d1%2fS%3d1%2fJ%3dC22A8862&U=13foqapqm%2fN%3d3ku7CNGDJGs-%2fC%3d674272.12804709.13083635.1659633%2fD%3dLREC%2fB%3d5404814%2fV%3d1&Q=0&O=0.9358860883151412
# 829 GET 200 application/x-shockwave-flash http://content.yieldmanager.edgesuite.net/atoms/04/57/37/0c/0457370c9a64b76ecce630a61edf0757.swf?clickTag=http%3A%2F%2Fad%2Eyieldmanager%2Ecom%2Fclick%2CVqUDAMlxBQBDdQ0AapIFAAIADAAAAP8AAAAHFwIAAgKNrgEAJVQIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGR%2DzEgAAAAA%2Chttp%253A%252F%252Fus%2Eard%2Eyahoo%2Ecom%252FSIG%253D150ose2a1%252FM%253D674272%2E12804709%2E13083635%2E1659633%252FD%253Dmaps%252FS%253D2022332404%253ALREC%252FY%253DYAHOO%252FEXP%253D1221368451%252FL%253Dfctia2KIKoRog3QXSKCVQwEryRDx20jMfmMAAC49%252FB%253D3ku7CNGDJGs%2D%252FJ%253D1221361251019984%252FA%253D5404814%252FR%253D0%252F%252A%2524%2Chttp%253A%252F%252Fmaps%2Eyahoo%2Ecom%252Fdarla%5Ffc%253Fcb%253Dyahoo%2Eads%2Edarla%2E%5Floaded%2526p%253Dmaps%2526f%253D2022332404%2526l%253Dlrec%2526en%253Dutf%2D8%2526rn%253D1221361250626%2526em%253D%25257b%252522site%2Dattribute%252522%25253a%252522content%25253dno%5Fexpandable%25253bajax%5Fcert%5Fexpandable%252522%25252c%252522ad%2Dlogoption%252522%25253a%252522nopageview%252522%25257d%2526t%5Fe%253D1%2526%2Eintl%253Dus%2C
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=374&y=-64&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=374&y=-63&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=374&y=-62&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=374&y=-61&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=374&y=-60&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=375&y=-60&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=376&y=-60&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=377&y=-60&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=378&y=-60&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=379&y=-60&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=380&y=-60&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=381&y=-60&z=11&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=756&y=-124&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=756&y=-123&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=755&y=-124&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=755&y=-123&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=754&y=-124&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=754&y=-123&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=753&y=-124&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=753&y=-123&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=756&y=-125&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=756&y=-126&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=755&y=-125&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=755&y=-126&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=754&y=-125&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=754&y=-126&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=753&y=-125&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=753&y=-126&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=757&y=-124&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=757&y=-123&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=758&y=-124&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=758&y=-123&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=759&y=-124&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=759&y=-123&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=757&y=-125&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=757&y=-126&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=758&y=-125&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=758&y=-126&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=759&y=-125&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=759&y=-126&z=12&r=1
# GET 200 image/gif http://geo.yahoo.com/p?s=2022332405&appid=YahooEn_USMaps&swpx=1680&shpx=1050&wpx=1280&hpx=463&oper=zoom&i_api=0&apptype=ajax&nloc=1&i_trf=0&ds_i=n&ds_maptr=n&mvt=m&mag=12&lat=-21.176088&lon=-46.978913&ds_zmtr=n
# GET (Cache) image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=47&y=-8&z=8&r=1
# GET (Cache) image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=47&y=-9&z=8&r=1
# GET (Cache) image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=48&y=-8&z=8&r=1
# GET (Cache) image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=48&y=-9&z=8&r=1
# T (Aborted) NS_BINDING_ABORTED  http://us.maps1.yimg.com/us.tile.maps.yimg.com/copyright?t=png&color=black&aa=-1&x=756&y=-124&z=12&top=1&left=3&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/copyright?t=png&color=black&aa=-1&x=756&y=-124&z=12&top=1&left=3&r=1
# GET 200 image/gif http://geo.yahoo.com/p?s=2022332405&appid=YahooEn_USMaps&swpx=1680&shpx=1050&wpx=1280&hpx=463&oper=pan_auto&i_api=0&apptype=ajax&nloc=1&i_trf=0&ds_i=n&ds_maptr=n&mvt=m&mag=12&lat=-21.176088&lon=-46.978913&=n
# GET (Cache) image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=46&y=-9&z=8&r=1
# GET (Cache) image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=46&y=-8&z=8&r=1
# GET (Cache) image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=46&y=-7&z=8&r=1
# GET (Cache) image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=47&y=-7&z=8&r=1
#   GET 200 application/vnd.google.safebrowsing-chunk http://static.cache.l.google.com/safebrowsing/rd/goog-phish-shavar_a_25921-26080:25921-25930,25932-25938,25940-25956,25958-25973,25975-26018
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=760&y=-126&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=760&y=-125&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=760&y=-124&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=760&y=-123&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=754&y=-122&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=755&y=-122&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=756&y=-122&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=757&y=-122&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=758&y=-122&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=759&y=-122&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=760&y=-122&z=12&r=1
# GET 200 image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=753&y=-122&z=12&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1513&y=-247&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1513&y=-246&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1512&y=-247&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1512&y=-246&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1511&y=-247&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1511&y=-246&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1510&y=-247&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1510&y=-246&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1513&y=-248&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1513&y=-249&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1512&y=-248&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1512&y=-249&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1511&y=-248&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1511&y=-249&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1510&y=-248&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1510&y=-249&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1514&y=-247&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1514&y=-246&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1515&y=-247&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1515&y=-246&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1516&y=-247&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1516&y=-246&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1514&y=-248&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1514&y=-249&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1515&y=-248&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1515&y=-249&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1516&y=-248&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1516&y=-249&z=13&r=1
# GET 200 image/gif http://geo.yahoo.com/p?s=2022332405&appid=YahooEn_USMaps&swpx=1680&shpx=1050&wpx=1280&hpx=463&oper=zoom&i_api=0&apptype=ajax&nloc=1&i_trf=0&ds_i=n&ds_maptr=n&mvt=m&mag=13&lat=-21.175128&lon=-46.980973&ds_zmtr=n
# GET (Cache) image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=94&y=-17&z=9&r=1
# GET (Cache) image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=95&y=-16&z=9&r=1
# GET (Cache) image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=95&y=-17&z=9&r=1
# T (Aborted) NS_BINDING_ABORTED  http://us.maps1.yimg.com/us.tile.maps.yimg.com/copyright?t=png&color=black&aa=-1&x=1513&y=-247&z=13&top=1&left=3&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/copyright?t=png&color=black&aa=-1&x=1513&y=-247&z=13&top=1&left=3&r=1
# GET 200 application/json  http://maps.yahoo.com/services/1.0.0/bizloc?q=&intl=us&mag=6&zoom=6&rn=1221361266904
# GET 200 image/gif http://geo.yahoo.com/p?s=2022332405&appid=YahooEn_USMaps&swpx=1680&shpx=1050&wpx=1280&hpx=463&oper=pan_auto&i_api=0&apptype=ajax&nloc=1&i_trf=0&ds_i=n&ds_maptr=n&mvt=m&mag=13&lat=-21.175128&lon=-46.980973&=n
#   GET 200 text/html http://maps.yahoo.com/darla_fc?cb=YAHOO.ads.darla._loaded&p=maps&f=2022332404&l=LREC&en=utf-8&rn=1221361267872&em=%7B%22site-attribute%22%3A%22content%3Dno_expandable%3Bajax_cert_expandable%22%2C%22ad-logoption%22%3A%22NOPAGEVIEW%22%7D&t_e=1&.intl=us
# GET 200 image/gif http://us.bc.yahoo.com/b?P=wIQa_2KIKoRog3QXSKCVQwI3yRDx20jMfnMABDqU&T=15dv7t0bs%2fX%3d1221361267%2fE%3d97161599%2fR%3dmaps%2fK%3d5%2fV%3d10.1%2fW%3dC%2fY%3dYAHOO%2fF%3d2795971025%2fG%3dCnVzCgo-%2fH%3dY29udGVudD1ub19leHBhbmRhYmxl%2fQ%3d-1%2fI%3d1%2fS%3d1%2fJ%3dC92A8862&U=13fu42trj%2fN%3db227CNGDJGs-%2fC%3d661339.12657981.13065819.11596560%2fD%3dBIZ%2fB%3d5307536%2fV%3d1
# GET 200 image/gif http://us.bc.yahoo.com/b?P=wIQa_2KIKoRog3QXSKCVQwI3yRDx20jMfnMABDqU&T=15da0dk2m%2fX%3d1221361267%2fE%3d97161599%2fR%3dmaps%2fK%3d5%2fV%3d10.1%2fW%3dC%2fY%3dYAHOO%2fF%3d2784682512%2fG%3dCnVzCgo-%2fH%3dY29udGVudD1ub19leHBhbmRhYmxl%2fQ%3d-1%2fI%3d1%2fS%3d1%2fJ%3dC92A8862&U=13fkn9pq4%2fN%3dcG27CNGDJGs-%2fC%3d638874.12115966.12752630.11650507%2fD%3dBIZ%2fB%3d5277622%2fV%3d1
# 19  GET 200 text/html http://ad.yieldmanager.com/st?ad_type=iframe&ad_size=300x250&site=140469&section_code=12804709&cb=1221361268211924&zip=&ycg=&yyob=&pub_redirect_unencoded=1&pub_redirect=http://us.ard.yahoo.com/SIG=1506ton7u/M=674272.12804709.13083635.1659633/D=maps/S=2022332404:LREC/Y=YAHOO/EXP=1221368468/L=AtluUGKIKoRog3QXSKCVQwJXyRDx20jMfnQAAya7/B=w2.7CNGDJGs-/J=1221361268211924/A=5404814/R=0/*
# ) GET (Cache) application/x-javascript  http://l.yimg.com/us.js.yimg.com/lib/bc/bc_2.0.4.js
# 0 GET 200 image/gif http://us.bc.yahoo.com/b?P=AtluUGKIKoRog3QXSKCVQwJXyRDx20jMfnQAAya7&T=15qfkb39h%2fX%3d1221361268%2fE%3d2022332404%2fR%3dmaps%2fK%3d5%2fV%3d1.1%2fW%3dJ%2fY%3dYAHOO%2fF%3d1215661897%2fH%3dY29udGVudD1ub19leHBhbmRhYmxlO2FqYXhfY2VydF9leHBhbmRhYmxl%2fI%3d1%2fS%3d1%2fJ%3dC42A8862&U=13f93mijn%2fN%3dw2.7CNGDJGs-%2fC%3d674272.12804709.13083635.1659633%2fD%3dLREC%2fB%3d5404814%2fV%3d1&Q=0&O=0.4232579913125446
# 5 GET 200 image/jpeg  http://content.yieldmanager.edgesuite.net/atoms/c5/cf/ae/ef/c5cfaeef74d9f49369bb666dac6139ed.jpg
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1509&y=-249&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1509&y=-248&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1509&y=-247&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1509&y=-246&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1509&y=-245&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1510&y=-245&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1511&y=-245&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1512&y=-245&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1513&y=-245&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1514&y=-245&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1515&y=-245&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=1516&y=-245&z=13&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=3026&y=-494&z=14&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=3026&y=-493&z=14&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=3025&y=-494&z=14&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=3025&y=-493&z=14&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=3024&y=-494&z=14&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=3024&y=-493&z=14&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=3023&y=-494&z=14&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=3023&y=-493&z=14&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=3026&y=-495&z=14&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=3026&y=-496&z=14&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=3025&y=-495&z=14&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=3025&y=-496&z=14&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=3024&y=-495&z=14&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=3024&y=-496&z=14&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=3023&y=-495&z=14&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=3023&y=-496&z=14&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=3027&y=-494&z=14&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=3027&y=-493&z=14&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=3028&y=-494&z=14&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=3028&y=-493&z=14&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=3029&y=-494&z=14&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=3029&y=-493&z=14&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=3027&y=-495&z=14&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=3027&y=-496&z=14&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=3028&y=-495&z=14&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=3028&y=-496&z=14&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=3029&y=-495&z=14&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=3029&y=-496&z=14&r=1
# GET 200 image/gif http://geo.yahoo.com/p?s=2022332405&appid=YahooEn_USMaps&swpx=1680&shpx=1050&wpx=1280&hpx=463&oper=zoom&i_api=0&apptype=ajax&nloc=1&i_trf=0&ds_i=n&ds_maptr=n&mvt=m&mag=14&lat=-21.174648&lon=-46.982003&ds_zmtr=n
# GET (Cache) image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=189&y=-31&z=10&r=1
# GET (Cache) image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=188&y=-31&z=10&r=1
# GET (Cache) image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=189&y=-32&z=10&r=1
# GET (Cache) image/jpeg  http://us.maps1.yimg.com/us.tile.maps.yimg.com/tl?v=4.1&md=2&x=188&y=-32&z=10&r=1
# T (Aborted) NS_BINDING_ABORTED  http://us.maps1.yimg.com/us.tile.maps.yimg.com/copyright?t=png&color=black&aa=-1&x=3026&y=-494&z=14&top=1&left=3&r=1
# GET 200 image/png http://us.maps1.yimg.com/us.tile.maps.yimg.com/copyright?t=png&color=black&aa=-1&x=3026&y=-494&z=14&top=1&left=3&r=1
# GET 200 image/gif http://geo.yahoo.com/p?s=2022332405&appid=YahooEn_USMaps&swpx=1680&shpx=1050&wpx=1280&hpx=463&oper=pan_auto&i_api=0&apptype=ajax&nloc=1&i_trf=0&ds_i=n&ds_maptr=n&mvt=m&mag=14&lat=-21.174648&lon=-46.982003&=n
