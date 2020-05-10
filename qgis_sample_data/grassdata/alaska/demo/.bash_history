g.list vect
g.copy vect=airports,airports
g.copy vect=rivers,rivers
g.copy vect=alaska,alaska
g.list rast
g.copy rast=gtopo30,gtopo30
r.colors gtopo30 col=srtm
cd /usr/local/grass-6.3.1svn/
cd etc/colors/
ls
joe srtm 
r.colors gtopo30 col=srtm
g.list rast 
g.list vect
g.gisenv 
g.list vect
g.list rast
rm -f elevp.csv 
cd ..
cd vmap0_shapefiles/
ls
v.in.ogr dsn=./elevp.shp out=elevp
soffice elevp.dbf 
cd
v.in.ogr dsn=./elevp.shp out=elevp
v.in.ogr dsn=./elevp.shp out=elevp --o
ls
v.out.ogr -h
g.region res=1
v.to.rast in=elevp out=elevp col=cat
df
v.to.rast in=elevp out=elevp col=cat -h
v.to.rast in=elevp out=elevp col=ELEV
g.region res=10
v.to.rast in=elevp out=elevp col=ELEV
g.region res=100
v.to.rast in=elevp out=elevp col=ELEV
g.region res=1000
v.to.rast in=elevp out=elevp col=ELEV
d.mon x0
d.rast elevp
g.region vect=alaska res=10 -ap
g.region vect=alaska res=100 -ap
g.region vect=alaska res=1000 -ap
d.erase
d.rast elevp
v.to.rast in=elevp out=elevp col=ELEV --o
d.rast elevp
g.region rast=elevp
g.region rast=elevp -ap
r.stats elevp
g.region vect=alaska res=1 -ap
d.erase
v.to.rast in=elevp out=elevp col=ELEV --o
g.region vect=alaska res=100 -ap
v.to.rast in=elevp out=elevp col=ELEV --o
g.region vect=alaska res=1000 -ap
d.erase
d.rast elevp
v.to.rast -h
v.to.rast in=elevp out=elevp use=attr col=ELEV --o
d.rast elevp
r.colors elevp col=gyr 
d.rast elevp
r.stats elevp
r.random -h
r.random in=gtopo30 out=muell n=300
r.random in=gtopo30 rast=muell n=300 
g.region rast=gtopo30 
d.erase
r.random in=gtopo30 rast=muell n=300 
d.rast muell
g.region res=3280 -ap
d.erase
r.random in=gtopo30 rast=muell n=300 
r.random in=gtopo30 rast=muell n=300 --o
d.erase
d.rast muell
r.stats -h
r.stats -1g muell
r.stats -h
r.stats -1gnl muell
r.stats -h
r.stats -1gnl fs='|' muell > /arbeit/grassdata/qgis_sample_data/csv/elevp.csv
r.stats -1gnl muell fs='|' > /arbeit/grassdata/qgis_sample_data/csv/elevp.csv
cd /arbeit/grassdata/qgis_sample_data/csv/
ls
less elevp.csv 
r.stats -1gnl muell fs=';' >  elevp.csv
kate elevp.csv 
vim elevp.csv
ls
rm -f *~
ls
cd ..
ls
cd vmap0_shapefiles/
ls
rm -rf elevp*
ls
cd ..
ls
cd ..
ls
g.list rast 
g.remove rast=muell,elevp
g.list vect
g.remove vect=elevp
ls
cd qgis_sample_data/vmap0_shapefiles/
ls
g.list vect
g.list rast
