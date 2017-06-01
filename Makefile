
all: \
	adb-bin/adb-1-0-31 \
	adb-bin/adb-1-0-32 \
	adb-bin/adb-1-0-36

zip/r20.zip:
	curl https://dl-ssl.google.com/android/repository/platform-tools_r20-macosx.zip > $@
zip/r22.zip:
	curl https://dl-ssl.google.com/android/repository/platform-tools_r22-macosx.zip > $@
zip/r25.zip:
	curl https://dl-ssl.google.com/android/repository/platform-tools_r25-macosx.zip > $@

platform-tools/r20-v1.0.31: zip/r20.zip
	unzip $^ -d $@
platform-tools/r22-v1.0.32: zip/r22.zip
	unzip $^ -d $@
platform-tools/r25-v1.0.36: zip/r25.zip
	unzip $^ -d $@

# Note: `-f` is required for `ln` because `make` looks at the timestamp of the
# *target* of the symlink for freshness.
adb-bin/adb-1-0-31: platform-tools/r20-v1.0.31
	ln -fs ../$^/platform-tools/adb $@
adb-bin/adb-1-0-32: platform-tools/r22-v1.0.32
	ln -fs ../$^/platform-tools/adb $@
adb-bin/adb-1-0-36: platform-tools/r25-v1.0.36
	ln -fs ../$^/platform-tools/adb $@

clean:
	rm -rf zip/*.zip
	rm -rf platform-tools/r*-v*
	rm -rf adb-bin/adb-*
