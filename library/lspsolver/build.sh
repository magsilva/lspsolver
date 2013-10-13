mkdir -p ../../resources 

make clean
make \
	NM=x86_64-w64-mingw32-nm \
	RANLIB=x86_64-w64-mingw32-ranlib \
	CC=x86_64-w64-mingw32-gcc \
	CCC=x86_64-w64-mingw32-g++ \
	CXX=x86_64-w64-mingw32-g++ \
	FC=x86_64-w64-mingw32-gfortran \
	AS=x86_64-w64-mingw32-as \
	CND_PLATFORM=win64 \
	CND_ARTIFACT_NAME="lspsolver64.dll"
cp ./dist/Release/win64/lspsolver64.dll ../../resources/

make clean
make \
	NM=i686-w64-mingw32-nm \
	RANLIB=i686-w64-mingw32-ranlib \
	CC=i686-w64-mingw32-gcc \
	CCC=i686-w64-mingw32-g++ \
	CXX=i686-w64-mingw32-g++ \
	FC=i686-w64-mingw32-gfortran \
	AS=i686-w64-mingw32-as \
	CND_PLATFORM=win32 \
	CND_ARTIFACT_NAME="lspsolver32.dll"
cp ./dist/Release/win32/lspsolver32.dll ../../resources

make clean
make \
	NM=nm \
	RANLIB=ranlib \
	CC=gcc \
	CCC=g++ \
	CXX=g++ \
	FC=gfortran \
	AS=as \
	CND_PLATFORM=linux \
	DEFAULTCONF="Release" \
	CND_ARTIFACT_NAME="liblspsolver.so"
cp ./dist/Release/linux/liblspsolver.so ../../resources/liblspsolver64.so

make clean
make \
	CFLAGS="-m32" \
	LDLIBSOPTIONS="-m32" \
	NM=nm \
	RANLIB=ranlib \
	CC=gcc \
	CCC=g++ \
	CXX=g++ \
	FC=gfortran \
	AS=as \
	CND_PLATFORM=linux \
	DEFAULTCONF="Release" \
	CND_ARTIFACT_NAME="liblspsolver.so"
cp ./dist/Release/linux/liblspsolver.so ../../resources/liblspsolver32.so

make clean
make \
	CFLAGS="-arch x86_64" \
	LDLIBSOPTIONS="-arch x86_64" \
	NM=darwinx-nm \
	RANLIB=darwinx-ranlib \
	CC=darwinx-gcc \
	CCC=darwinx-g++ \
	CXX=darwinx-g++ \
	FC=darwinx-gfortran \
	AS=darwinx-as \
	CND_PLATFORM=darwin \
	CND_ARTIFACT_NAME="lspsolver.jnilib"
cp ./dist/Release/darwin/lspsolver.jnilib ../../resources 

# make \
#	CFLAGS="-dynamiclib" \
#	NM=darwinx-nm \
#	RANLIB=darwinx-ranlib \
#	CC=darwinx-gcc \
#	CCC=darwinx-g++ \
#	CXX=darwinx-g++ \
#	FC=darwinx-gfortran \
#	AS=darwinx-as \
#	CND_PLATFORM=darwin \
#	CND_ARTIFACT_NAME="lspsolver32.jnilib"



exit 0
