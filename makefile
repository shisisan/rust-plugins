ifdef OS
	TOOLCHAIN = +stable-i686-pc-windows-msvc
	BINARYNAME = samp_p.dll
	OUPUTNAME = samp_p.dll
	CP_RELEASE = copy /Y .\target\release\$(BINARYNAME) .\plugins\$(OUPUTNAME)
	CP_DEBUG = copy /Y .\target\debug\$(BINARYNAME) .\plugins\$(OUPUTNAME)
else
	ifeq ($(shell uname), Linux)
		TOOLCHAIN = +stable-i686-unknown-linux-gnu
		BINARYNAME = libsamp_p.so
		OUPUTNAME = samp_p.so
		CP_RELEASE = cp target/release/$(BINARYNAME) plugins/$(OUPUTNAME)
		CP_DEBUG = cp target/debug/$(BINARYNAME) plugins/$(OUPUTNAME)
	endif
endif

release:
	cargo $(TOOLCHAIN) build --release
	$(CP_RELEASE)

debug:
	cargo $(TOOLCHAIN) build
	$(CP_DEBUG)

setup:
	sampctl ensure
	sampctl build

ensure:
	sampctl ensure

run:
	sampctl build
	sampctl run

clean:
	cargo clean
