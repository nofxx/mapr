require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')




#
#      @search = "105+avenue+de+la+Republique,+Paris,+France"  
#
# GOO
#
# GET 200 image/x-icon  http://maps.google.com/favicon.ico
# GET (Cache) image/x-icon  http://maps.google.com/favicon.ico
# GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=1&y=9&z=4&s=Gali
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=2&y=9&z=4&s=Galileo
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=3&y=9&z=4&s=Ga
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=4&y=9&z=4&s=Galil
# 2 GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=5&y=9&z=4&s=
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=6&y=9&z=4&s=Gal
#   GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=7&y=5&z=4&s=Ga
#   GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=7&y=6&z=4&s=Gal
#   GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=7&y=7&z=4&s=Gali
# GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=7&y=8&z=4&s=Galil
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=7&y=9&z=4&s=Galile
# 6 GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=8&y=5&z=4&s=Galil
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=8&y=6&z=4&s=Galile
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=8&y=7&z=4&s=Galileo
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=8&y=8&z=4&s=
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=8&y=9&z=4&s=G
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=2&y=10&z=4&s=
# GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=3&y=10&z=4&s=Gal
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=4&y=10&z=4&s=Galile
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=5&y=10&z=4&s=G
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=6&y=10&z=4&s=Gali
# GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=7&y=10&z=4&s=Galileo
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=8&y=10&z=4&s=Ga
# GET 200 text/javascript http://maps.google.com/maps/vp?spn=42.893713,114.257813&z=4&vp=-7.536764,-63.193359&ev=p&lyrs=nq.83&las=-71.87733417462205%3B-234.580078125%3B56.803805530453886%3B108.193359375
# GET 200 image/gif http://www.google.com/verify/EAAAAC98YpYHCUyqgfUhFXeIEjc.gif
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=2&y=4&z=3&s=Ga
# GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=3&y=4&z=3&s=Galil
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=2&y=5&z=3&s=Gal
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=3&y=5&z=3&s=Galile
#   GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=2&y=3&z=3&s=G
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=1&y=4&z=3&s=Galileo
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=3&y=3&z=3&s=Gali
# GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=1&y=5&z=3&s=
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=4&y=4&z=3&s=
# GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=1&y=3&z=3&s=Galile
# GET 200 text/javascript http://maps.google.com/maps/vp?spn=128.707267,360&z=2&vp=21.616579,-61.875&ev=zo&lyrs=nq.83&las=-171.44432138966%3B-601.875%3B214.67748006314116%3B478.125
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=4&y=5&z=3&s=G
#   GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=4&y=3&z=3&s=Galileo
# 2 GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=2&y=2&z=3&s=
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=0&y=4&z=3&s=Gali
# GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=3&y=2&z=3&s=Gal
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=0&y=5&z=3&s=Galil
# 8 GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=1&y=2&z=3&s=Galil
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=0&y=3&z=3&s=Gal
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=5&y=4&z=3&s=Gal
# GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=5&y=5&z=3&s=Gali
# 8 GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=4&y=2&z=3&s=Galile
# GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=5&y=3&z=3&s=Ga
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=0&y=2&z=3&s=Ga
# GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=7&y=4&z=3&s=G
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=7&y=5&z=3&s=Ga
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=5&y=2&z=3&s=G
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=7&y=3&z=3&s=
# GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=7&y=2&z=3&s=Galileo
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=1&y=2&z=2&s=Galil
# GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=1&y=1&z=2&s=Gali
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=0&y=2&z=2&s=Ga
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=2&y=2&z=2&s=
# GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=1&y=3&z=2&s=Galile
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=0&y=1&z=2&s=G
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=2&y=1&z=2&s=Galileo
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=0&y=3&z=2&s=Gal
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=2&y=3&z=2&s=G
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=1&y=0&z=2&s=Gal
# GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=3&y=2&z=2&s=Gal
#   GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=0&y=0&z=2&s=
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=3&y=1&z=2&s=Ga
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=2&y=0&z=2&s=Galile
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=3&y=3&z=2&s=Gali
# GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=3&y=0&z=2&s=G
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=2&y=6&z=3&s=Gali
# GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=3&y=6&z=3&s=Galileo
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=1&y=6&z=3&s=G
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=4&y=6&z=3&s=Ga
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=0&y=6&z=3&s=Galile
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=5&y=6&z=3&s=Galil
#   GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=6&y=4&z=3&s=Galile
#   GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=6&y=3&z=3&s=Galil
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=6&y=5&z=3&s=Galileo
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=6&y=6&z=3&s=
# GET 200 text/javascript http://maps.google.com/maps/vp?spn=78.952828,228.515625&z=3&vp=-14.944785,-51.328125&ev=zi&lyrs=nq.83&las=-133.37402707669747%3B-394.1015625%3B103.48445732652074%3B291.4453125
# GET (Cache) image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=4&y=8&z=4&s=Gali
# GET (Cache) image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=6&y=7&z=4&s=G
# ) GET (Aborted) image/png (NS_BINDING_ABORTED)  http://mt3.google.com/mt/v=nq.83&hl=en&x=3&y=8&z=4&s=G
# 0 GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=9&y=8&z=4&s=Gal
# GET (Cache) image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=3&y=8&z=4&s=G
#   GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=9&y=9&z=4&s=Gali
#   GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=9&y=7&z=4&s=Ga
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=9&y=10&z=4&s=Galil
# GET 200 text/javascript http://maps.google.com/maps/vp?spn=40.734415,114.257813&z=4&vp=-20.468189,-49.394531&ev=zi&lyrs=nq.83&las=-81.5698115471661%3B-220.78125%3B40.6334331018842%3B121.9921875
# 8 GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=11&y=17&z=5&s=Ga
# 8 GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=11&y=18&z=5&s=Gal
# 4 GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=12&y=17&z=5&s=Galil
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=12&y=18&z=5&s=Galile
#   GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=10&y=17&z=5&s=Galileo
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=10&y=18&z=5&s=
# 8 GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=11&y=16&z=5&s=G
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=11&y=19&z=5&s=Gali
# GET 200 text/javascript http://maps.google.com/maps/vp?spn=20.48637,57.128906&z=5&vp=-21.698265,-48.867187&ev=zi&lyrs=nq.83&las=-52.42781979630957%3B-134.560546875%3B9.031288802604529%3B36.826171875
# 8 GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=12&y=16&z=5&s=Gali
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=12&y=19&z=5&s=Galileo
# 8 GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=10&y=16&z=5&s=Galile
# GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=13&y=17&z=5&s=
#   GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=10&y=19&z=5&s=G
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=13&y=18&z=5&s=G
# GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=9&y=17&z=5&s=Gali
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=9&y=18&z=5&s=Galil
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=13&y=16&z=5&s=Galileo
# GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=13&y=19&z=5&s=Ga
#   GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=9&y=16&z=5&s=Gal
# GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=9&y=19&z=5&s=Galile
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=14&y=17&z=5&s=Gal
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=14&y=18&z=5&s=Gali
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=8&y=17&z=5&s=G
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=8&y=18&z=5&s=Ga
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=14&y=16&z=5&s=Ga
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=14&y=19&z=5&s=Galil
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=8&y=16&z=5&s=
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=8&y=19&z=5&s=Gal
# 4 GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=23&y=35&z=6&s=
# GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=23&y=36&z=6&s=G
# 6 GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=22&y=35&z=6&s=Galil
# 8 GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=22&y=36&z=6&s=Galile
# 6 GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=24&y=35&z=6&s=Gal
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=24&y=36&z=6&s=Gali
# 4 GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=23&y=34&z=6&s=Galileo
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=23&y=37&z=6&s=Ga
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=22&y=34&z=6&s=Gali
# 8 GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=22&y=37&z=6&s=Galileo
# 6 GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=24&y=34&z=6&s=Ga
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=24&y=37&z=6&s=Galil
# GET 200 text/javascript http://maps.google.com/maps/vp?spn=10.263366,28.564453&z=6&vp=-21.902278,-48.120117&ev=zi&lyrs=nq.83&las=-37.29732763730813%3B-90.966796875%3B-6.507228296029123%3B-5.273437500000007
#   GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=21&y=35&z=6&s=Ga
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=21&y=36&z=6&s=Gal
# GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=25&y=35&z=6&s=Galile
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=25&y=36&z=6&s=Galileo
# 6 GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=21&y=34&z=6&s=G
# GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=21&y=37&z=6&s=Gali
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=25&y=34&z=6&s=Galil
# GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=25&y=37&z=6&s=
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=20&y=35&z=6&s=Galileo
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=20&y=36&z=6&s=
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=26&y=35&z=6&s=G
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=26&y=36&z=6&s=Ga
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=20&y=34&z=6&s=Galile
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=20&y=37&z=6&s=G
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=26&y=34&z=6&s=
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=26&y=37&z=6&s=Gal
# 60  POST  200 application/vnd.google.safebrowsing-update  http://safebrowsing.clients.google.com/safebrowsing/downloads?client=navclient-auto-ffox&appver=3.0.1&pver=2.1&wrkey=AKEgNivM5Yj6s7ZTsaHUzQc--X3CCMZ9FMNEvSCj4aAbSwb0iSLGgqGkmQX392YmxbvXHbQ56NRPMBj2p1Bg24-TxuXI1Q38Dw==
# 4 GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=47&y=72&z=7&s=Galil
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=47&y=71&z=7&s=Gali
# 2 GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=48&y=72&z=7&s=
# 6 GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=46&y=72&z=7&s=Ga
# 6 GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=48&y=71&z=7&s=Galileo
# 2 GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=46&y=71&z=7&s=G
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=47&y=73&z=7&s=Galile
# 6 GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=47&y=70&z=7&s=Gal
# GET 200 text/javascript http://maps.google.com/maps/vp?spn=5.125681,14.282227&z=7&vp=-22.187405,-46.362305&ev=zi&lyrs=nq.83&las=-29.875926055264493%3B-67.78564453125%3B-14.498883927533056%3B-24.93896484375
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=48&y=73&z=7&s=G
# 8 GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=46&y=73&z=7&s=Gal
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=48&y=70&z=7&s=Galile
# 4 GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=46&y=70&z=7&s=
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=49&y=72&z=7&s=Gal
# 0 GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=45&y=72&z=7&s=Galileo
# 8 GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=49&y=71&z=7&s=Ga
# 8 GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=45&y=71&z=7&s=Galile
# GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=49&y=73&z=7&s=Gali
# 4 GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=45&y=73&z=7&s=
# 4 GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=49&y=70&z=7&s=G
# 8 GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=45&y=70&z=7&s=Galil
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=50&y=72&z=7&s=Galile
# 0 GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=44&y=72&z=7&s=Gali
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=50&y=71&z=7&s=Galil
# 2 GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=44&y=71&z=7&s=Gal
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=50&y=73&z=7&s=Galileo
#   GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=44&y=73&z=7&s=Galil
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=50&y=70&z=7&s=Gali
#   GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=44&y=70&z=7&s=Ga
# 4 GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=94&y=144&z=8&s=Ga
# 4 GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=95&y=144&z=8&s=Galil
# 6 GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=94&y=143&z=8&s=G
# 6 GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=94&y=145&z=8&s=Gal
# 4 GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=95&y=143&z=8&s=Gali
# 2 GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=95&y=145&z=8&s=Galile
# 8 GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=93&y=144&z=8&s=Galileo
# GET 200 text/javascript http://maps.google.com/maps/vp?spn=2.557591,7.141113&z=8&vp=-22.502407,-46.658936&ev=zi&lyrs=nq.83&las=-26.338793304476344%3B-57.37060546875%3B-18.666021614519156%3B-35.947265625
# 2 GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=93&y=143&z=8&s=Galile
# 8 GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=96&y=144&z=8&s=
# 0 GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=93&y=145&z=8&s=
# 4 GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=96&y=143&z=8&s=Galileo
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=96&y=145&z=8&s=G
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=94&y=146&z=8&s=Gali
# GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=95&y=146&z=8&s=Galileo
# 2 GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=92&y=144&z=8&s=Gali
# 6 GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=93&y=146&z=8&s=G
# 0 GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=92&y=143&z=8&s=Gal
# 6 GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=92&y=145&z=8&s=Galil
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=96&y=146&z=8&s=Ga
# 8 GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=97&y=144&z=8&s=Gal
# 0 GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=97&y=143&z=8&s=Ga
# GET 200 image/png http://mt3.google.com/mt/v=nq.83&hl=en&x=97&y=145&z=8&s=Gali
# 6 GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=92&y=146&z=8&s=Galile
# GET 200 image/png http://mt1.google.com/mt/v=nq.83&hl=en&x=97&y=146&z=8&s=Galil
#   GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=98&y=144&z=8&s=Galile
# 0 GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=98&y=143&z=8&s=Galil
# GET 200 image/png http://mt0.google.com/mt/v=nq.83&hl=en&x=98&y=145&z=8&s=Galileo
# GET 200 image/png http://mt2.google.com/mt/v=nq.83&hl=en&x=98&y=146&z=8&s=
# 8 GET 200 application/vnd.google.safebrowsing-chunk http://static.cache.l.google.com/safebrowsing/rd/goog-malware-shavar_s_6541-6560:6541-6560
