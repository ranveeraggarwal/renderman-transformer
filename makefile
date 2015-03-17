all: trans.rib caus.cpm body.rib arealight.rib diffsurf.slo metal.slo transparent.slo texsurf.slo shadowlight.slo
	prman trans.rib
arealight.rib: genarealight.py
	python genarealight.py > arealight.rib
diffsurf.slo: diffsurf.sl
	shader diffsurf.sl
texsurf.slo: texsurf.sl
	shader texsurf.sl
metal.slo: metal.sl
	shader metal.sl
transparent.slo: transparent.sl
	shader transparent.sl
shadowlight.slo: shadowlight.sl
	shader shadowlight.sl
caus.cpm: caus.rib
	prman caus.rib
clean:
	rm *.slo arealight.rib caus.cpm
.PHONY: all clean
