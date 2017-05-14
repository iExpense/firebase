package firebase

// #cgo CXXFLAGS: -D_GLIBCXX_USE_CXX11_ABI=0 -Wabi-tag  -std=c++11
// #cgo LDFLAGS: -D_GLIBCXX_USE_CXX11_ABI=0 -Wabi-tag -L${SRCDIR}/cpplib -ldatabase -lauth -lapp
import "C"
