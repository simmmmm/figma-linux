APPIMAGE := $(firstword $(wildcard figma-desktop-*.AppImage build/figma-desktop-*.AppImage))

.PHONY: build build-deb build-rpm build-appimage build-pacman run run-debug clean url

build: build-appimage

build-deb:
	./build.sh --build deb --clean no

build-rpm:
	./build.sh --build rpm --clean no

build-appimage:
	./build.sh --build appimage --clean no

# Arch/CachyOS: build and install the pacman package (asks for sudo)
build-pacman:
	cd arch && makepkg -fsi

run:
ifndef APPIMAGE
	$(error No AppImage found. Run 'make build' first)
endif
	./$(APPIMAGE)

run-debug:
ifndef APPIMAGE
	$(error No AppImage found. Run 'make build' first)
endif
	FIGMA_DEBUG=1 ./$(APPIMAGE)

clean:
	rm -rf build/
	rm -f figma-desktop-*.AppImage
	rm -f figma-desktop_*.deb
	rm -f figma-desktop-*.rpm
	rm -rf arch/src arch/pkg arch/*.pkg.tar.*

url:
	./figma-version-tool.sh
