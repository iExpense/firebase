GO=go
SWIG=swig
SWIGFLAGS=-go -cgo -c++ -intgosize 64

all: clean checkdep copy install revert

# go=1.8.1, gcc=5.4.0, g++=5.4.0, swig=3.0.12
checkdep:
	@which go > /dev/null
	@which gcc > /dev/null
	@which g++ > /dev/null
	@which swig > /dev/null

copy: checkdep
	cp firebase.i firebase.swigcxx

install: checkdep copy
	$(GO) install

revert:
	$(SWIG) $(SWIGFLAGS) firebase.i
	rm -rf firebase.swigcxx

clean:
	rm -rf firebase.swigcxx firebase_wrap.cxx firebase.go

.PHONY: all clean checkdep install revert
