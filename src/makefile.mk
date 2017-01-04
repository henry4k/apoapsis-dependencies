GENERATED += $(addprefix src/,$(LIB_NAMES))

GET_SRC = src/get-src

src/openal-soft:
	$(GET_SRC) $@ 'http://www.openal-soft.org/openal-releases/openal-soft-1.16.0.tar.bz2'

src/ogg:
	$(GET_SRC) $@ 'http://downloads.xiph.org/releases/ogg/libogg-1.3.2.tar.gz'

src/vorbis:
	$(GET_SRC) $@ 'http://downloads.xiph.org/releases/vorbis/libvorbis-1.3.5.tar.gz'

src/alure: src/alure-CMakeLists.txt.patch src/alure.h.patch
	$(GET_SRC) $@ 'http://kcat.strangesoft.net/alure-releases/alure-1.2.tar.bz2'
	patch -u $@/CMakeLists.txt src/alure-CMakeLists.txt.patch
	patch -u $@/include/AL/alure.h src/alure.h.patch

src/zlib:
	$(GET_SRC) $@ 'http://zlib.net/zlib-1.2.10.tar.gz'

src/physfs:
	$(GET_SRC) $@ 'http://icculus.org/physfs/downloads/physfs-2.0.3.tar.bz2'

src/lua:
	$(GET_SRC) $@ 'http://www.lua.org/ftp/lua-5.2.4.tar.gz'

src/lua-cjson: src/lua-cjson-CMakeLists.txt.patch src/lua_cjson.h
	$(GET_SRC) $@ 'https://github.com/mpx/lua-cjson/archive/2.1.0.tar.gz'
	patch -u $@/CMakeLists.txt src/lua-cjson-CMakeLists.txt.patch
	cp src/lua_cjson.h $@/

src/glfw:
	$(GET_SRC) $@ 'https://github.com/glfw/glfw/releases/download/3.1.1/glfw-3.1.1.zip'

src/bullet:
	$(GET_SRC) $@ 'https://github.com/bulletphysics/bullet3/archive/2.83.6.tar.gz'

src/glm:
	$(GET_SRC) $@ 'https://github.com/g-truc/glm/releases/download/0.9.7.1/glm-0.9.7.1.zip'
