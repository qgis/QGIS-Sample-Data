ls
g.proj -p
g.setproj 
ls
r.proj -l -h
r.proj -l in= out= loc=alaska mapset=demo dbase=/arbeit/grassdata/qgis_sample_data/grassdata/ 
r.proj in=gtopo out=gtopo loc=alaska mapset=demo dbase=/arbeit/grassdata/qgis_sample_data/grassdata/ 
r.proj in=gtopo30 out=gtopo30 loc=alaska mapset=demo dbase=/arbeit/grassdata/qgis_sample_data/grassdata/ 
r.proj in=gtopo30 out=gtopo30 loc=alaska mapset=demo dbase=/arbeit/grassdata/qgis_sample_data/grassdata/ -h
g.region 
r.proj in=gtopo30 out=gtopo30 loc=alaska mapset=demo dbase=/arbeit/grassdata/qgis_sample_data/grassdata/ -h
r.proj in=gtopo30 out=gtopo30 loc=alaska mapset=demo dbase=/arbeit/grassdata/qgis_sample_data/grassdata/ -n
r.proj in=gtopo30 out=gtopo30 loc=alaska mapset=demo dbase=/arbeit/grassdata/qgis_sample_data/grassdata/ 
r.proj in=gtopo30 out=gtopo30 loc=alaska mapset=demo dbase=/arbeit/grassdata/qgis_sample_data/grassdata/ 
d.mon x0
tar xvzf wake-spft.tar.gz 
tar xvzf wake-spm.tar.gz
ls
g.region -p
g.proj -p
ls
cd alaska2/
ls
cd PERMANENT/
ls
vim DEFAULT_WIND 
g.region -p
g.region -d
g.region -p
vim DEFAULT_WIND 
g.region -d
g.region -p
g.region res=3280 -ap
g.region -h
g.region -s
d.erase
g.region -dp
r.proj in=gtopo30 out=gtopo30 loc=alaska mapset=demo dbase=/arbeit/grassdata/qgis_sample_data/grassdata/ 
r.proj in=gtopo30 out=gtopo30 loc=alaska mapset=demo dbase=/arbeit/grassdata/qgis_sample_data/grassdata/ -o
r.proj in=gtopo30 out=gtopo30 loc=alaska mapset=demo dbase=/arbeit/grassdata/qgis_sample_data/grassdata/ --o
v.proj -l in=gtopo30 out=gtopo30 loc=alaska mapset=demo dbase=/arbeit/grassdata/qgis_sample_data/grassdata/ --o
v.proj -l in=airports out=airports loc=alaska mapset=demo dbase=/arbeit/grassdata/qgis_sample_data/grassdata/ --o
v.proj in=airports out=airports loc=alaska mapset=demo dbase=/arbeit/grassdata/qgis_sample_data/grassdata/ 
v.proj in=alaska out=alaska loc=alaska mapset=demo dbase=/arbeit/grassdata/qgis_sample_data/grassdata/ 
v.proj in=rivers out=rivers loc=alaska mapset=demo dbase=/arbeit/grassdata/qgis_sample_data/grassdata/ 
qgis
ls
cd
v.out.ogr dsn=. in=alaska out=test 
v.out.ogr dsn=. in=alaska olayer=test 
v.out.ogr dsn=. in=alaska olayer=test type=area
qgis test.shp 
ls
r.proj in=landcover out=landcover loc=alaska mapset=demo dbase=/arbeit/grassdata/qgis_sample_data/grassdata/ 
g.proj -p
g.region res=394 -ap
r.proj in=landcover out=landcover loc=alaska mapset=demo dbase=/arbeit/grassdata/qgis_sample_data/grassdata/ --o
g.list rast 
r.mapcalc "gtopo30_feet = gtopo30 / 0.3048006096012192"
g.region rast=gtopo30 -ap
r.mapcalc "gtopo30_feet = gtopo30 / 0.3048006096012192"
d.mon x0 
d.rast gtopo30_feet
r.colors gtopo30_feet col=gyr 
d.erase
d.rast gtopo30_feet
d.what.rast 
r.colors gtopo30_feet col=srtm
d.what.rast 
d.rast gtopo30_feet
d.what.rast 
for i in airports  elevp     landice   popp      storagep  trees alaska    grassland majrivers railroads swamp     tundra builtups  lakes     pipelines rivers    trails ; do v.proj in=$i out=$i loc=alaska mapset=demo dbase=/arbeit/grassdata/qgis_sample_data/grassdata/ --o; ; done
for i in airports  elevp     landice   popp      storagep  trees alaska    grassland majrivers railroads swamp     tundra builtups  lakes     pipelines rivers    trails ; do v.proj in=$i out=$i loc=alaska mapset=demo dbase=/arbeit/grassdata/qgis_sample_data/grassdata/ --o ; done
g.list vect
ls
g.list vect
cd ..
cd qgis_sample_data_feet/
ls
cd raster/
ls
rm -rf landcover2.tif landcover.tfw landcover.tif 
ls
d.mon x0
d.rast landcover
d.what.rast 
d.rast landcover cat=0
ls
less colortable_landcover.txt 
vim colortable_landcover.txt 
r.colors landcover col=rules < colortable_landcover.txt 
d.erase
d.rast landcover
ls
r.out.tiff -tpl in=landcover out=landcover.tif compression=packbit
ls
qgis landcover.tif 
r.out.gdal format=HFA type=byte in=landcover out=landcover.img 
r.out.gdal format=HFA type=Byte in=landcover out=landcover.img 
l
ls
qgis landcover.img
ls -l
ls
qgis landcover.tif 
ls
rm -f landcover.tfw landcover.tif 
ls
g.list rast 
g.remove rast=gtopo30,landcover
g.list rast 
g.rename rast=gtopo30_feet,gtopo30
g.list rast 
d.erase
d.rast gtop030 
d.rast gtopo30 
r.info -r gtopo30
r.proj in=gtopo30 out=gtopo30 loc=alaska mapset=demo dbase=/arbeit/grassdata/qgis_sample_data/grassdata/ --o
g.list rast 
r.mapcalc "gtopo30_feet = gtopo30 * 1 / 0.3048006096012192"
r.info -r gtopo30_feet
r.mapcalc "gtopo30_feet = gtopo30 * 0.3048006096012192"
r.info -r gtopo30_feet
r.info -r gtopo30
d.histogram gtopo30
d.mon x0
d.histogram gtopo30
d.erase
d.rast gtopo30
d.rast gtopo30 val=1-5000
d.rast gtopo30 cat=1-5000
d.rast gtopo30 cat=1-50
d.rast gtopo30 cat=5000-
r.info -r gtopo30
r.mapcalc "gtopo30b = if(gtopo30 < 6200)"
r.colors gtopo30b col=srtm
d.erase
d.rast gtopo30b
r.mapcalc "gtopo30b = if(gtopo30 < 6200,gtopo30,null())"
d.erase
r.colors gtopo30b col=srtm
d.rast gtopo30b
r.info -r gtopo30b
r.mapcalc "gtopo30_feet = gtopo30b * 1 / 0.3048006096012192"
r.info -r gtopo30_feet
g.listr ast 
g.list rast 
g.remove rast=gtopo30b,gtopo30
g.rename rast=gtopo30_feet,gtopo30
d.erase
d.rast gtopo30
r.colors gtopo30 col=srtm 
d.erase
d.rast gtopo30
g.region rast=gtopo30 -ap
d.erase
d.rast gtopo30
ls
g.list vect
cd alaska/
ls
cd ..
ls
cd ..
ls
cd raster/
ls
cd ..
ls
cd vmap0_shapefiles/
ls
g.list vect
v.out.ogr dsn=. in=airports olayer=airports type=point
soffice airports.dbf 
g.list vect
echo "UPDATE airports SET ELEV=(ELEV*3) WHERE cat>0;" | db.execute
db.select airports
echo "UPDATE elevp SET ELEV=(ELEV*3) WHERE cat>0;" | db.execute
db.select elevp
ls
rm -f *
ls
db.select elevp | more
g.list vect
db.select rivers
db.select rivers | more
db.dropcol -f tabel=rivers 
db.dropcol -f tabel=rivers col=cat_
db.dropcol -f table=rivers col=cat_
db.dropcol -f table=alaska col=cat_
db.dropcol -f table=airports col=c
db.select rivers | more
db.select alaska | more
db.dropcol -f table=alaska col=AREAKM2
v.db.addcol alaska col='AREA_MILES'
v.db.addcol alaska col='AREA_MILES double precision'
db.select alaska | more
v.to.db -h
v.to.db alaska opt=area units=mi
v.db.addcol alaska col='AREA_MI double precision'
db.dropcol -f table=alaska col=AREA_MILES
v.to.db alaska opt=area units=mi col=AREA_MI
db.select alaska | more
ls
g.list vect
db.select builtups | more
db.dropcol -f table=builtups col=cat_
g.list vect
for i in alaska rivers lakes elevp grassland landice majrivers pipelines popp railroads storagep swamp trails trees tundra ; do db.dropcol -f table= col=cat_ ; done
ls
g.list vect
v.out.ogr -h
g.list vect
v.out.ogr dsn=. in=alaska olayer=alaska type=area
v.select -h
v.extract -h
v.extract in=alaska out=alaska2 where='AREA_MI > 5' 
v.extract in=alaska out=alaska2 where='AREA_MI > 10' --o
v.extract in=alaska out=alaska2 where='AREA_MI > 50' --o
d.vect alaska2 fcol=none
ls
g.remove vect=alaska2
ls
g.list vect
v.out.ogr dsn=. in=builtups olayer=builtups type=area
v.out.ogr dsn=. in=grassland olayer=grassland type=area
v.out.ogr -c dsn=. in=grassland olayer=grassland type=area
qgis grassland.shp 
ls
rm -f *
v.out.ogr -c dsn=. in=grassland olayer=grassland type=area
v.out.ogr -c dsn=. in=builtups olayer=builtups type=area
v.out.ogr -c dsn=. in=alaska olayer=alaska type=area
g.list vect
v.out.ogr -c dsn=. in=lakes olayer=lakes type=area
v.out.ogr -c dsn=. in=landice olayer=landice type=area
v.out.ogr -c dsn=. in=swamp olayer=swamp type=area
v.out.ogr -c dsn=. in=trees olayer=trees type=area
v.out.ogr -c dsn=. in=tundra olayer=tundra type=area
ls
ls -l
g.list vect
v.out.ogr -c dsn=. in=majrivers olayer=majrivers type=line
v.out.ogr -c dsn=. in=pipelines olayer=pipelines type=line
v.out.ogr -c dsn=. in=railroads olayer=railroads type=line
v.out.ogr -c dsn=. in=rivers olayer=rivers type=line
v.out.ogr -c dsn=. in=trails olayer=trails type=line
ls
g.list vect
v.out.ogr -c dsn=. in=airports olayer=airports type=point
v.out.ogr -c dsn=. in=elevp olayer=elevp type=point
v.out.ogr -c dsn=. in=popp olayer=popp type=point
v.out.ogr -c dsn=. in=storagep olayer=storagep type=point
ls
g.list vect
ogrinfo --formats
cd ..
ls
cd gml/
ls
db.select  lakes
db.dropcol  table=lakes col=cat_
db.dropcol -f  table=lakes col=cat_
db.select  lakes
db.dropcol -f  table=lakes col=AREA_KM2
v.db.addcol lakes col='AREA_MI double precision'
v.to.db lakes opt=area units=mi col=AREA_MI
db.select  lakes
v.out.ogr  -h
v.out.ogr  dsn=. in=lakes out=lakes format=GML 
v.out.ogr  dsn=. in=lakes olayer=lakes format=GML 
v.out.ogr  dsn=/arbeit/grassdata/qgis_sample_data_feet/gml/ in=lakes olayer=lakes format=GML 
ls
v.out.ogr  dsn=lakes in=lakes format=GML 
v.out.ogr  -c dsn=lakes in=lakes format=GML 
ls
rm -f *
v.out.ogr  -c dsn=lakes.gml in=lakes format=GML 
ls
qgis lakes.gml 
rm -f *
v.out.ogr  -c dsn=lakes.gml in=lakes format=GML type=area
ls
less lakes.gml 
qgis lakes.gml 
ls
g.list vect
g.remove vect=lakes
cd ..
ls
cd vmap0_shapefiles/
ls
rm -f lakes*
ls
cd ..
cd gps/
ls
cd ..
ls
cd gml/
ls
qgis lakes.gml 
ls
cd ..
ls
cd raster/
ls
cd ..
ls
cd vmap0_shapefiles/
ls
less airports.gpx 
rm -f airports.gpx 
ls
cd ..
ls
cd .
cd ..
ls
cd grassdata/qgis_sample_data_feet/
ls
cd gml/
ls
cd ..
cd gps/
ls
qgis
bg
ls
cd ..
ls
cd vmap0_shapefiles/
ls
rm -rf airports*
ls
soffice alaska.dbf 
ls
d.mon x0
d.rast gtopo30
d.zoom
d.what.rast 
g.list vect
g.remove vect=airports,alaska,builtups,elevp,grassland,landice,majrivers,pipelines,popp,railroads,rivers,storagep,swamp,trails,trees,tundra
g.list rast 
g.remove rast=gtopo30
qgis
bg
xkill
