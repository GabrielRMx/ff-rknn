.PHONY: clean
.PHONY: ff-rknn

ff-rknn: ff-rknn.c
	$(CXX) -O2 --permissive -o ff-rknn ff-rknn.c postprocess.cc -I$(O)/host/aarch64-buildroot-linux-gnu/include/c++/11.3.0/aarch64-buildroot-linux-gnu -I$(O)/host/aarch64-buildroot-linux-gnu/include/c++/11.3.0 -I$(O)/target/usr/include/SDL3 -I$(O)/staging/usr/include/drm -D_FILE_OFFSET_BITS=64 -D REENTRANT `pkg-config --cflags --libs sdl3` -lz -lm -lpthread -lrockchip_mpp -lrga -lvorbis -lvorbisenc -ltiff -lopus -logg -lmp3lame -llzma -lrtmp -lssl -lcrypto -lbz2 -lxml2 -lX11 -lxcb -lXv -lXext -lv4l2 -lasound -lpulse -lGLESv2 -lfreetype -lxcb -lxcb-shm -lxcb -lxcb-xfixes -lxcb-render -lxcb-shape -lxcb -lxcb-shape -lxcb -lavutil -lavcodec -lavformat -lavdevice -lavfilter -lswscale -lswresample -lpostproc -lrknnrt


clean:
	-rm ff-rknn	