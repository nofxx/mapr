require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')












#
# LIVE
## 
# 
# ) GET (Cache) image/x-icon  http://maps.live.com/favicon.ico
# GET 200 image/gif http://msnportal.112.2o7.net/b/ss/msnportalearth/1/H.1-pdv-2/s95644930846513?[AQB]&ndh=1&t=14/8/2008%200%3A3%3A30%200%20180&ce=UTF-8&ns=msnportal&pageName=Map%20Control&g=http%3A//maps.live.com/&cc=USD&ch=VirtualEarth&server=maps.live.com&events=Event9&c1=VirtualEarth&c2=en-us&c3=r&c4=5&c5=-21.243%2C-48.076&c6=Zoom%20in&c13=Mode2D&c17=Mouse&c36=1&s=1680x1050&c=24&j=1.3&v=Y&k=Y&bw=1680&bh=628&p=Default%20Plug-in%3BJava%20Embedding%20Plugin%200.9.6.4%3BQuickTime%20Plug-in%207.4.5%3BShockwave%20Flash%3B&[AQE]
# 0 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r210120.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r210121.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r210130.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r210131.png?g=174&shading=hill
# 4 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r211020.png?g=174&shading=hill
#   GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r211021.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r210122.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r210123.png?g=174&shading=hill
# 8 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r210132.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r210133.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r211022.png?g=174&shading=hill
# GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r211023.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r210300.png?g=174&shading=hill
# 2 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r210301.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r210310.png?g=174&shading=hill
# 4 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r210311.png?g=174&shading=hill
#   GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r211200.png?g=174&shading=hill
# GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r211201.png?g=174&shading=hill
# GET 200 image/gif http://msnportal.112.2o7.net/b/ss/msnportalearth/1/H.1-pdv-2/s98674523088889?[AQB]&ndh=1&t=14/8/2008%200%3A3%3A47%200%20180&ce=UTF-8&ns=msnportal&pageName=Map%20Control&g=http%3A//maps.live.com/&cc=USD&ch=VirtualEarth&server=maps.live.com&events=Event9&c1=VirtualEarth&c2=en-us&c3=r&c4=6&c5=-21.307%2C-47.900&c6=Zoom%20in&c13=Mode2D&c17=Mouse&c36=1&s=1680x1050&c=24&j=1.3&v=Y&k=Y&bw=1680&bh=628&p=Default%20Plug-in%3BJava%20Embedding%20Plugin%200.9.6.4%3BQuickTime%20Plug-in%207.4.5%3BShockwave%20Flash%3B&[AQE]
# GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r2101320.png?g=174&shading=hill
#   GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r2101321.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r2101330.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r2101331.png?g=174&shading=hill
# 2 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r2110220.png?g=174&shading=hill
# 8 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r2110221.png?g=174&shading=hill
# 8 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r2101322.png?g=174&shading=hill
# 8 GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r2101323.png?g=174&shading=hill
# 8 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r2101332.png?g=174&shading=hill
# 2 GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r2101333.png?g=174&shading=hill
# 2 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r2110222.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r2110223.png?g=174&shading=hill
# 8 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r2103100.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r2103101.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r2103110.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r2103111.png?g=174&shading=hill
# 2 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r2112000.png?g=174&shading=hill
#   GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r2112001.png?g=174&shading=hill
# GET 200 image/gif http://msnportal.112.2o7.net/b/ss/msnportalearth/1/H.1-pdv-2/s93628311029550?[AQB]&ndh=1&t=14/8/2008%200%3A3%3A53%200%20180&ce=UTF-8&ns=msnportal&pageName=Map%20Control&g=http%3A//maps.live.com/&cc=USD&ch=VirtualEarth&server=maps.live.com&events=Event9&c1=VirtualEarth&c2=en-us&c3=r&c4=7&c5=-21.339%2C-47.637&c6=Zoom%20in&c13=Mode2D&c17=Mouse&c36=1&s=1680x1050&c=24&j=1.3&v=Y&k=Y&bw=1680&bh=628&p=Default%20Plug-in%3BJava%20Embedding%20Plugin%200.9.6.4%3BQuickTime%20Plug-in%207.4.5%3BShockwave%20Flash%3B&[AQE]
# 4 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r21013320.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r21013321.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r21013330.png?g=174&shading=hill
# 2 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r21013331.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r21102220.png?g=174&shading=hill
# 4 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r21102221.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r21013322.png?g=174&shading=hill
# 4 GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r21013323.png?g=174&shading=hill
# 4 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r21013332.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r21013333.png?g=174&shading=hill
# 2 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r21102222.png?g=174&shading=hill
# 8 GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r21102223.png?g=174&shading=hill
# 2 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r21031100.png?g=174&shading=hill
# 2 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r21031101.png?g=174&shading=hill
# 4 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r21031110.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r21031111.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r21120000.png?g=174&shading=hill
# 2 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r21120001.png?g=174&shading=hill
# GET 200 image/gif http://msnportal.112.2o7.net/b/ss/msnportalearth/1/H.1-pdv-2/s93942742317825?[AQB]&ndh=1&t=14/8/2008%200%3A4%3A7%200%20180&ce=UTF-8&ns=msnportal&pageName=Map%20Control&g=http%3A//maps.live.com/&cc=USD&ch=VirtualEarth&server=maps.live.com&events=Event9&c1=VirtualEarth&c2=en-us&c3=r&c4=8&c5=-21.560%2C-46.967&c6=Zoom%20in&c13=Mode2D&c17=Mouse&c36=1&s=1680x1050&c=24&j=1.3&v=Y&k=Y&bw=1680&bh=628&p=Default%20Plug-in%3BJava%20Embedding%20Plugin%200.9.6.4%3BQuickTime%20Plug-in%207.4.5%3BShockwave%20Flash%3B&[AQE]
# 0 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r210133231.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r210133320.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r210133321.png?g=174&shading=hill
# 8 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r210133330.png?g=174&shading=hill
# 4 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r210133331.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r211022220.png?g=174&shading=hill
# 4 GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r210133233.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r210133322.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r210133323.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r210133332.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r210133333.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r211022222.png?g=174&shading=hill
# GET 200 image/gif http://msnportal.112.2o7.net/b/ss/msnportalearth/1/H.1-pdv-2/s99143193545255?[AQB]&ndh=1&t=14/8/2008%200%3A4%3A28%200%20180&ce=UTF-8&ns=msnportal&pageName=Map%20Control&g=http%3A//maps.live.com/&cc=USD&ch=VirtualEarth&server=maps.live.com&events=Event9&c1=VirtualEarth&c2=en-us&c3=r&c4=9&c5=-21.333%2C-46.714&c6=Zoom%20in&c13=Mode2D&c17=Mouse&c36=1&s=1680x1050&c=24&j=1.3&v=Y&k=Y&bw=1680&bh=628&p=Default%20Plug-in%3BJava%20Embedding%20Plugin%200.9.6.4%3BQuickTime%20Plug-in%207.4.5%3BShockwave%20Flash%3B&[AQE]
# 0 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r2101332311.png?g=174&shading=hill
# GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r2101333200.png?g=174&shading=hill
#   GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r2101333201.png?g=174&shading=hill
# GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r2101333210.png?g=174&shading=hill
# 8 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r2101333211.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r2101333300.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r2101332313.png?g=174&shading=hill
# 8 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r2101333202.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r2101333203.png?g=174&shading=hill
# 8 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r2101333212.png?g=174&shading=hill
# 4 GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r2101333213.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r2101333302.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r2101332331.png?g=174&shading=hill
#   GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r2101333220.png?g=174&shading=hill
# GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r2101333221.png?g=174&shading=hill
# 8 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r2101333230.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r2101333231.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r2101333320.png?g=174&shading=hill
# GET 200 image/gif http://msnportal.112.2o7.net/b/ss/msnportalearth/1/H.1-pdv-2/s93662684363009?[AQB]&ndh=1&t=14/8/2008%200%3A4%3A33%200%20180&ce=UTF-8&ns=msnportal&pageName=Map%20Control&g=http%3A//maps.live.com/&cc=USD&ch=VirtualEarth&server=maps.live.com&events=Event9&c1=VirtualEarth&c2=en-us&c3=r&c4=10&c5=-21.198%2C-46.964&c6=Zoom%20in&c13=Mode2D&c17=Mouse&c36=1&s=1680x1050&c=24&j=1.3&v=Y&k=Y&bw=1680&bh=628&p=Default%20Plug-in%3BJava%20Embedding%20Plugin%200.9.6.4%3BQuickTime%20Plug-in%207.4.5%3BShockwave%20Flash%3B&[AQE]
#   GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r21013332030.png?g=174&shading=hill
# 8 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r21013332031.png?g=174&shading=hill
#   GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r21013332120.png?g=174&shading=hill
#   GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r21013332121.png?g=174&shading=hill
# GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r21013332130.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r21013332131.png?g=174&shading=hill
# GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r21013332032.png?g=174&shading=hill
# GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r21013332033.png?g=174&shading=hill
#   GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r21013332122.png?g=174&shading=hill
#   GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r21013332123.png?g=174&shading=hill
# GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r21013332132.png?g=174&shading=hill
#   GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r21013332133.png?g=174&shading=hill
#   GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r21013332210.png?g=174&shading=hill
#   GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r21013332211.png?g=174&shading=hill
#   GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r21013332300.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r21013332301.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r21013332310.png?g=174&shading=hill
# GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r21013332311.png?g=174&shading=hill
# GET 200 image/gif http://msnportal.112.2o7.net/b/ss/msnportalearth/1/H.1-pdv-2/s97671768750008?[AQB]&ndh=1&t=14/8/2008%200%3A4%3A36%200%20180&ce=UTF-8&ns=msnportal&pageName=Map%20Control&g=http%3A//maps.live.com/&cc=USD&ch=VirtualEarth&server=maps.live.com&events=Event9&c1=VirtualEarth&c2=en-us&c3=r&c4=11&c5=-21.195%2C-46.957&c6=Zoom%20in&c13=Mode2D&c17=Mouse&c36=1&s=1680x1050&c=24&j=1.3&v=Y&k=Y&bw=1680&bh=628&p=Default%20Plug-in%3BJava%20Embedding%20Plugin%200.9.6.4%3BQuickTime%20Plug-in%207.4.5%3BShockwave%20Flash%3B&[AQE]
# GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r210133320313.png?g=174&shading=hill
# GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r210133321202.png?g=174&shading=hill
# GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r210133321203.png?g=174&shading=hill
# GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r210133321212.png?g=174&shading=hill
# GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r210133321213.png?g=174&shading=hill
# GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r210133321302.png?g=174&shading=hill
# GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r210133320331.png?g=174&shading=hill
# GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r210133321220.png?g=174&shading=hill
# GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r210133321221.png?g=174&shading=hill
# GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r210133321230.png?g=174&shading=hill
# GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r210133321231.png?g=174&shading=hill
# GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r210133321320.png?g=174&shading=hill
# GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r210133320333.png?g=174&shading=hill
# GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r210133321222.png?g=174&shading=hill
# GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r210133321223.png?g=174&shading=hill
# GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r210133321232.png?g=174&shading=hill
# GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r210133321233.png?g=174&shading=hill
# GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r210133321322.png?g=174&shading=hill
# 
# 
# AERIAL
# #
# #
# #
# #
# #
# 
# ) GET (Cache) image/x-icon  http://maps.live.com/favicon.ico
# GET 200 image/gif http://msnportal.112.2o7.net/b/ss/msnportalearth/1/H.1-pdv-2/s95644930846513?[AQB]&ndh=1&t=14/8/2008%200%3A3%3A30%200%20180&ce=UTF-8&ns=msnportal&pageName=Map%20Control&g=http%3A//maps.live.com/&cc=USD&ch=VirtualEarth&server=maps.live.com&events=Event9&c1=VirtualEarth&c2=en-us&c3=r&c4=5&c5=-21.243%2C-48.076&c6=Zoom%20in&c13=Mode2D&c17=Mouse&c36=1&s=1680x1050&c=24&j=1.3&v=Y&k=Y&bw=1680&bh=628&p=Default%20Plug-in%3BJava%20Embedding%20Plugin%200.9.6.4%3BQuickTime%20Plug-in%207.4.5%3BShockwave%20Flash%3B&[AQE]
# 0 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r210120.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r210121.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r210130.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r210131.png?g=174&shading=hill
# 4 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r211020.png?g=174&shading=hill
#   GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r211021.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r210122.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r210123.png?g=174&shading=hill
# 8 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r210132.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r210133.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r211022.png?g=174&shading=hill
# GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r211023.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r210300.png?g=174&shading=hill
# 2 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r210301.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r210310.png?g=174&shading=hill
# 4 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r210311.png?g=174&shading=hill
#   GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r211200.png?g=174&shading=hill
# GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r211201.png?g=174&shading=hill
# GET 200 image/gif http://msnportal.112.2o7.net/b/ss/msnportalearth/1/H.1-pdv-2/s98674523088889?[AQB]&ndh=1&t=14/8/2008%200%3A3%3A47%200%20180&ce=UTF-8&ns=msnportal&pageName=Map%20Control&g=http%3A//maps.live.com/&cc=USD&ch=VirtualEarth&server=maps.live.com&events=Event9&c1=VirtualEarth&c2=en-us&c3=r&c4=6&c5=-21.307%2C-47.900&c6=Zoom%20in&c13=Mode2D&c17=Mouse&c36=1&s=1680x1050&c=24&j=1.3&v=Y&k=Y&bw=1680&bh=628&p=Default%20Plug-in%3BJava%20Embedding%20Plugin%200.9.6.4%3BQuickTime%20Plug-in%207.4.5%3BShockwave%20Flash%3B&[AQE]
# GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r2101320.png?g=174&shading=hill
#   GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r2101321.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r2101330.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r2101331.png?g=174&shading=hill
# 2 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r2110220.png?g=174&shading=hill
# 8 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r2110221.png?g=174&shading=hill
# 8 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r2101322.png?g=174&shading=hill
# 8 GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r2101323.png?g=174&shading=hill
# 8 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r2101332.png?g=174&shading=hill
# 2 GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r2101333.png?g=174&shading=hill
# 2 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r2110222.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r2110223.png?g=174&shading=hill
# 8 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r2103100.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r2103101.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r2103110.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r2103111.png?g=174&shading=hill
# 2 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r2112000.png?g=174&shading=hill
#   GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r2112001.png?g=174&shading=hill
# GET 200 image/gif http://msnportal.112.2o7.net/b/ss/msnportalearth/1/H.1-pdv-2/s93628311029550?[AQB]&ndh=1&t=14/8/2008%200%3A3%3A53%200%20180&ce=UTF-8&ns=msnportal&pageName=Map%20Control&g=http%3A//maps.live.com/&cc=USD&ch=VirtualEarth&server=maps.live.com&events=Event9&c1=VirtualEarth&c2=en-us&c3=r&c4=7&c5=-21.339%2C-47.637&c6=Zoom%20in&c13=Mode2D&c17=Mouse&c36=1&s=1680x1050&c=24&j=1.3&v=Y&k=Y&bw=1680&bh=628&p=Default%20Plug-in%3BJava%20Embedding%20Plugin%200.9.6.4%3BQuickTime%20Plug-in%207.4.5%3BShockwave%20Flash%3B&[AQE]
# 4 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r21013320.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r21013321.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r21013330.png?g=174&shading=hill
# 2 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r21013331.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r21102220.png?g=174&shading=hill
# 4 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r21102221.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r21013322.png?g=174&shading=hill
# 4 GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r21013323.png?g=174&shading=hill
# 4 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r21013332.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r21013333.png?g=174&shading=hill
# 2 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r21102222.png?g=174&shading=hill
# 8 GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r21102223.png?g=174&shading=hill
# 2 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r21031100.png?g=174&shading=hill
# 2 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r21031101.png?g=174&shading=hill
# 4 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r21031110.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r21031111.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r21120000.png?g=174&shading=hill
# 2 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r21120001.png?g=174&shading=hill
# GET 200 image/gif http://msnportal.112.2o7.net/b/ss/msnportalearth/1/H.1-pdv-2/s93942742317825?[AQB]&ndh=1&t=14/8/2008%200%3A4%3A7%200%20180&ce=UTF-8&ns=msnportal&pageName=Map%20Control&g=http%3A//maps.live.com/&cc=USD&ch=VirtualEarth&server=maps.live.com&events=Event9&c1=VirtualEarth&c2=en-us&c3=r&c4=8&c5=-21.560%2C-46.967&c6=Zoom%20in&c13=Mode2D&c17=Mouse&c36=1&s=1680x1050&c=24&j=1.3&v=Y&k=Y&bw=1680&bh=628&p=Default%20Plug-in%3BJava%20Embedding%20Plugin%200.9.6.4%3BQuickTime%20Plug-in%207.4.5%3BShockwave%20Flash%3B&[AQE]
# 0 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r210133231.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r210133320.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r210133321.png?g=174&shading=hill
# 8 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r210133330.png?g=174&shading=hill
# 4 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r210133331.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r211022220.png?g=174&shading=hill
# 4 GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r210133233.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r210133322.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r210133323.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r210133332.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r210133333.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r211022222.png?g=174&shading=hill
# GET 200 image/gif http://msnportal.112.2o7.net/b/ss/msnportalearth/1/H.1-pdv-2/s99143193545255?[AQB]&ndh=1&t=14/8/2008%200%3A4%3A28%200%20180&ce=UTF-8&ns=msnportal&pageName=Map%20Control&g=http%3A//maps.live.com/&cc=USD&ch=VirtualEarth&server=maps.live.com&events=Event9&c1=VirtualEarth&c2=en-us&c3=r&c4=9&c5=-21.333%2C-46.714&c6=Zoom%20in&c13=Mode2D&c17=Mouse&c36=1&s=1680x1050&c=24&j=1.3&v=Y&k=Y&bw=1680&bh=628&p=Default%20Plug-in%3BJava%20Embedding%20Plugin%200.9.6.4%3BQuickTime%20Plug-in%207.4.5%3BShockwave%20Flash%3B&[AQE]
# 0 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r2101332311.png?g=174&shading=hill
# GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r2101333200.png?g=174&shading=hill
#   GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r2101333201.png?g=174&shading=hill
# GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r2101333210.png?g=174&shading=hill
# 8 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r2101333211.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r2101333300.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r2101332313.png?g=174&shading=hill
# 8 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r2101333202.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r2101333203.png?g=174&shading=hill
# 8 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r2101333212.png?g=174&shading=hill
# 4 GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r2101333213.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r2101333302.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r2101332331.png?g=174&shading=hill
#   GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r2101333220.png?g=174&shading=hill
# GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r2101333221.png?g=174&shading=hill
# 8 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r2101333230.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r2101333231.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r2101333320.png?g=174&shading=hill
# GET 200 image/gif http://msnportal.112.2o7.net/b/ss/msnportalearth/1/H.1-pdv-2/s93662684363009?[AQB]&ndh=1&t=14/8/2008%200%3A4%3A33%200%20180&ce=UTF-8&ns=msnportal&pageName=Map%20Control&g=http%3A//maps.live.com/&cc=USD&ch=VirtualEarth&server=maps.live.com&events=Event9&c1=VirtualEarth&c2=en-us&c3=r&c4=10&c5=-21.198%2C-46.964&c6=Zoom%20in&c13=Mode2D&c17=Mouse&c36=1&s=1680x1050&c=24&j=1.3&v=Y&k=Y&bw=1680&bh=628&p=Default%20Plug-in%3BJava%20Embedding%20Plugin%200.9.6.4%3BQuickTime%20Plug-in%207.4.5%3BShockwave%20Flash%3B&[AQE]
#   GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r21013332030.png?g=174&shading=hill
# 8 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r21013332031.png?g=174&shading=hill
#   GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r21013332120.png?g=174&shading=hill
#   GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r21013332121.png?g=174&shading=hill
# GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r21013332130.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r21013332131.png?g=174&shading=hill
# GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r21013332032.png?g=174&shading=hill
# GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r21013332033.png?g=174&shading=hill
#   GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r21013332122.png?g=174&shading=hill
#   GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r21013332123.png?g=174&shading=hill
# GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r21013332132.png?g=174&shading=hill
#   GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r21013332133.png?g=174&shading=hill
#   GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r21013332210.png?g=174&shading=hill
#   GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r21013332211.png?g=174&shading=hill
#   GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r21013332300.png?g=174&shading=hill
# 0 GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r21013332301.png?g=174&shading=hill
# 6 GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r21013332310.png?g=174&shading=hill
# GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r21013332311.png?g=174&shading=hill
# GET 200 image/gif http://msnportal.112.2o7.net/b/ss/msnportalearth/1/H.1-pdv-2/s97671768750008?[AQB]&ndh=1&t=14/8/2008%200%3A4%3A36%200%20180&ce=UTF-8&ns=msnportal&pageName=Map%20Control&g=http%3A//maps.live.com/&cc=USD&ch=VirtualEarth&server=maps.live.com&events=Event9&c1=VirtualEarth&c2=en-us&c3=r&c4=11&c5=-21.195%2C-46.957&c6=Zoom%20in&c13=Mode2D&c17=Mouse&c36=1&s=1680x1050&c=24&j=1.3&v=Y&k=Y&bw=1680&bh=628&p=Default%20Plug-in%3BJava%20Embedding%20Plugin%200.9.6.4%3BQuickTime%20Plug-in%207.4.5%3BShockwave%20Flash%3B&[AQE]
# GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r210133320313.png?g=174&shading=hill
# GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r210133321202.png?g=174&shading=hill
# GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r210133321203.png?g=174&shading=hill
# GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r210133321212.png?g=174&shading=hill
# GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r210133321213.png?g=174&shading=hill
# GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r210133321302.png?g=174&shading=hill
# GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r210133320331.png?g=174&shading=hill
# GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r210133321220.png?g=174&shading=hill
# GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r210133321221.png?g=174&shading=hill
# GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r210133321230.png?g=174&shading=hill
# GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r210133321231.png?g=174&shading=hill
# GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r210133321320.png?g=174&shading=hill
# GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r210133320333.png?g=174&shading=hill
# GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r210133321222.png?g=174&shading=hill
# GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r210133321223.png?g=174&shading=hill
# GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r210133321232.png?g=174&shading=hill
# GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r210133321233.png?g=174&shading=hill
# GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r210133321322.png?g=174&shading=hill
# 9)  GET (Cache) image/jpeg (NS_IMAGELIB_ERROR_LOAD_ABORTED) http://r2.ortho.tiles.virtualearth.net/tiles/r210133321212.png?g=174&shading=hill
# 7 GET 200 image/jpeg  http://h3.ortho.tiles.virtualearth.net/tiles/h210133320313.jpeg?g=174
# 1 GET 200 image/jpeg  http://h2.ortho.tiles.virtualearth.net/tiles/h210133321202.jpeg?g=174
# 3 GET 200 image/jpeg  http://h3.ortho.tiles.virtualearth.net/tiles/h210133321203.jpeg?g=174
# 9 GET 200 image/jpeg  http://h2.ortho.tiles.virtualearth.net/tiles/h210133321212.jpeg?g=174
# 1 GET 200 image/jpeg  http://h3.ortho.tiles.virtualearth.net/tiles/h210133321213.jpeg?g=174
# 9 GET 200 image/jpeg  http://h2.ortho.tiles.virtualearth.net/tiles/h210133321302.jpeg?g=174
# 1 GET 200 image/jpeg  http://h1.ortho.tiles.virtualearth.net/tiles/h210133320331.jpeg?g=174
# 3 GET 200 image/jpeg  http://h0.ortho.tiles.virtualearth.net/tiles/h210133321220.jpeg?g=174
# 5 GET 200 image/jpeg  http://h1.ortho.tiles.virtualearth.net/tiles/h210133321221.jpeg?g=174
# 5 GET 200 image/jpeg  http://h0.ortho.tiles.virtualearth.net/tiles/h210133321230.jpeg?g=174
# 5 GET 200 image/jpeg  http://h1.ortho.tiles.virtualearth.net/tiles/h210133321231.jpeg?g=174
# 5 GET 200 image/jpeg  http://h0.ortho.tiles.virtualearth.net/tiles/h210133321320.jpeg?g=174
# 1 GET 200 image/jpeg  http://h3.ortho.tiles.virtualearth.net/tiles/h210133320333.jpeg?g=174
# 3 GET 200 image/jpeg  http://h2.ortho.tiles.virtualearth.net/tiles/h210133321222.jpeg?g=174
# 3 GET 200 image/jpeg  http://h3.ortho.tiles.virtualearth.net/tiles/h210133321223.jpeg?g=174
# 3 GET 200 image/jpeg  http://h2.ortho.tiles.virtualearth.net/tiles/h210133321232.jpeg?g=174
# 5 GET 200 image/jpeg  http://h3.ortho.tiles.virtualearth.net/tiles/h210133321233.jpeg?g=174
# 1 GET 200 image/jpeg  http://h2.ortho.tiles.virtualearth.net/tiles/h210133321322.jpeg?g=174
# GET 200 image/gif http://msnportal.112.2o7.net/b/ss/msnportalearth/1/H.1-pdv-2/s94701142526767?[AQB]&ndh=1&t=14/8/2008%200%3A6%3A9%200%20180&ce=UTF-8&ns=msnportal&pageName=Map%20Control&g=http%3A//maps.live.com/&cc=USD&ch=VirtualEarth&server=maps.live.com&events=Event9&c1=VirtualEarth&c2=en-us&c3=h&c4=12&c5=-21.188%2C-46.964&c6=MapStyleAerial-LabelsOn&c13=Mode2D&c17=Nav%20Bar&c36=1&s=1680x1050&c=24&j=1.3&v=Y&k=Y&bw=1680&bh=628&p=Default%20Plug-in%3BJava%20Embedding%20Plugin%200.9.6.4%3BQuickTime%20Plug-in%207.4.5%3BShockwave%20Flash%3B&[AQE]
# GET 200 image/gif http://msnportal.112.2o7.net/b/ss/msnportalearth/1/H.1-pdv-2/s93022812972177?[AQB]&ndh=1&t=14/8/2008%200%3A6%3A16%200%20180&ce=UTF-8&ns=msnportal&pageName=Map%20Control&g=http%3A//maps.live.com/&cc=USD&ch=VirtualEarth&server=maps.live.com&events=Event9&c1=VirtualEarth&c2=en-us&c3=r&c4=12&c5=-21.188%2C-46.964&c6=MapStyleRoad&c13=Mode2D&c17=Nav%20Bar&c36=1&s=1680x1050&c=24&j=1.3&v=Y&k=Y&bw=1680&bh=628&p=Default%20Plug-in%3BJava%20Embedding%20Plugin%200.9.6.4%3BQuickTime%20Plug-in%207.4.5%3BShockwave%20Flash%3B&[AQE]
# GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r210133320312.png?g=174&shading=hill
# GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r210133320330.png?g=174&shading=hill
# GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r210133320332.png?g=174&shading=hill
# GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r210133320303.png?g=174&shading=hill
# GET 200 image/jpeg  http://r1.ortho.tiles.virtualearth.net/tiles/r210133320321.png?g=174&shading=hill
# GET 200 image/jpeg  http://r3.ortho.tiles.virtualearth.net/tiles/r210133320323.png?g=174&shading=hill
# GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r210133320302.png?g=174&shading=hill
# GET 200 image/jpeg  http://r0.ortho.tiles.virtualearth.net/tiles/r210133320320.png?g=174&shading=hill
# GET 200 image/jpeg  http://r2.ortho.tiles.virtualearth.net/tiles/r210133320322.png?g=174&shading=hill
# GET 200 image/gif http://msnportal.112.2o7.net/b/ss/msnportalearth/1/H.1-pdv-2/s97406655338955?[AQB]&ndh=1&t=14/8/2008%200%3A6%3A21%200%20180&ce=UTF-8&ns=msnportal&pageName=Map%20Control&g=http%3A//maps.live.com/&cc=USD&ch=VirtualEarth&server=maps.live.com&events=Event9&c1=VirtualEarth&c2=en-us&c3=r&c4=12&c5=-21.201%2C-47.176&c6=Pan&c13=Mode2D&c17=Mouse&c36=1&s=1680x1050&c=24&j=1.3&v=Y&k=Y&bw=1680&bh=628&p=Default%20Plug-in%3BJava%20Embedding%20Plugin%200.9.6.4%3BQuickTime%20Plug-in%207.4.5%3BShockwave%20Flash%3B&[AQE]
# 9 GET 200 image/jpeg  http://h0.ortho.tiles.virtualearth.net/tiles/h210133320320.jpeg?g=174
# 5 GET 200 image/jpeg  http://h1.ortho.tiles.virtualearth.net/tiles/h210133320321.jpeg?g=174
# 1 GET 200 image/jpeg  http://h0.ortho.tiles.virtualearth.net/tiles/h210133320330.jpeg?g=174
# 5 GET 200 image/jpeg  http://h2.ortho.tiles.virtualearth.net/tiles/h210133320322.jpeg?g=174
# 1 GET 200 image/jpeg  http://h3.ortho.tiles.virtualearth.net/tiles/h210133320323.jpeg?g=174
# 1 GET 200 image/jpeg  http://h2.ortho.tiles.virtualearth.net/tiles/h210133320332.jpeg?g=174
# GET 200 image/gif http://msnportal.112.2o7.net/b/ss/msnportalearth/1/H.1-pdv-2/s95597132315026?[AQB]&ndh=1&t=14/8/2008%200%3A6%3A23%200%20180&ce=UTF-8&ns=msnportal&pageName=Map%20Control&g=http%3A//maps.live.com/&cc=USD&ch=VirtualEarth&server=maps.live.com&events=Event9&c1=VirtualEarth&c2=en-us&c3=h&c4=12&c5=-21.201%2C-47.176&c6=MapStyleAerial-LabelsOn&c13=Mode2D&c17=Nav%20Bar&c36=1&s=1680x1050&c=24&j=1.3&v=Y&k=Y&bw=1680&bh=628&p=Default%20Plug-in%3BJava%20Embedding%20Plugin%200.9.6.4%3BQuickTime%20Plug-in%207.4.5%3BShockwave%20Flash%3B&[AQE]
# 5 GET 200 image/jpeg  http://h1.ortho.tiles.virtualearth.net/tiles/h210133322101.jpeg?g=174
# 5 GET 200 image/jpeg  http://h0.ortho.tiles.virtualearth.net/tiles/h210133322110.jpeg?g=174
# 1 GET 200 image/jpeg  http://h1.ortho.tiles.virtualearth.net/tiles/h210133322111.jpeg?g=174
# 1 GET 200 image/jpeg  http://h0.ortho.tiles.virtualearth.net/tiles/h210133323000.jpeg?g=174
# 9 GET 200 image/jpeg  http://h1.ortho.tiles.virtualearth.net/tiles/h210133323001.jpeg?g=174
# 5 GET 200 image/jpeg  http://h0.ortho.tiles.virtualearth.net/tiles/h210133323010.jpeg?g=174
# 9 GET 200 image/jpeg  http://h1.ortho.tiles.virtualearth.net/tiles/h210133323011.jpeg?g=174
# 3 GET 200 image/jpeg  http://h0.ortho.tiles.virtualearth.net/tiles/h210133323100.jpeg?g=174
# GET 200 image/gif http://msnportal.112.2o7.net/b/ss/msnportalearth/1/H.1-pdv-2/s96376482185665?[AQB]&ndh=1&t=14/8/2008%200%3A6%3A26%200%20180&ce=UTF-8&ns=msnportal&pageName=Map%20Control&g=http%3A//maps.live.com/&cc=USD&ch=VirtualEarth&server=maps.live.com&events=Event9&c1=VirtualEarth&c2=en-us&c3=h&c4=12&c5=-21.254%2C-46.954&c6=Pan&c13=Mode2D&c17=Mouse&c36=1&s=1680x1050&c=24&j=1.3&v=Y&k=Y&bw=1680&bh=628&p=Default%20Plug-in%3BJava%20Embedding%20Plugin%200.9.6.4%3BQuickTime%20Plug-in%207.4.5%3BShockwave%20Flash%3B&[AQE]
# GET 200 image/gif http://msnportal.112.2o7.net/b/ss/msnportalearth/1/H.1-pdv-2/s91889382152000?[AQB]&ndh=1&t=14/8/2008%200%3A6%3A27%200%20180&ce=UTF-8&ns=msnportal&pageName=Map%20Control&g=http%3A//maps.live.com/&cc=USD&ch=VirtualEarth&server=maps.live.com&events=Event9&c1=VirtualEarth&c2=en-us&c3=h&c4=12&c5=-21.248%2C-46.960&c6=Pan&c13=Mode2D&c17=Mouse&c36=1&s=1680x1050&c=24&j=1.3&v=Y&k=Y&bw=1680&bh=628&p=Default%20Plug-in%3BJava%20Embedding%20Plugin%200.9.6.4%3BQuickTime%20Plug-in%207.4.5%3BShockwave%20Flash%3B&[AQE]
