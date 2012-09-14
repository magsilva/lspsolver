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

# make \
#	NM=x86_64-w64-mingw32-nm \
#	RANLIB=x86_64-w64-mingw32-ranlib \
#	CC=x86_64-w64-mingw32-gcc \
#	CCC=x86_64-w64-mingw32-g++ \
#	CXX=x86_64-w64-mingw32-g++ \
#	FC=x86_64-w64-mingw32-gfortran \
#	AS=x86_64-w64-mingw32-as \
#	CND_PLATFORM=win32 \
#	CND_ARTIFACT_NAME="lspsolver32.dll"

make \
	NM=nm \
	RANLIB=ranlib \
	CC=gcc \
	CCC=g++ \
	CXX=g++ \
	FC=gfortran \
	AS=as \
	CND_PLATFORM=linux \
	DEFAULTCONF="Release"
	CND_ARTIFACT_NAME="liblspsolver.so"

make \
	NM=nm \
	RANLIB=ranlib \
	CC=gcc \
	CCC=g++ \
	CXX=g++ \
	FC=gfortran \
	AS=as \
	CND_PLATFORM=linux \
	DEFAULTCONF="Debug" \
	CND_ARTIFACT_NAME="liblspsolver-debug.so"





exit 0
