#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=x86_64-w64-mingw32-nm
CCADMIN=CCadmin
RANLIB=x86_64-w64-mingw32-ranlib
CC=x86_64-w64-mingw32-gcc
CCC=x86_64-w64-mingw32-g++
CXX=x86_64-w64-mingw32-g++
FC=x86_64-w64-mingw32-gfortran
AS=x86_64-w64-mingw32-as

# Macros
CND_PLATFORM=GNU-Linux-x86
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/src/cs/cs_etree.o \
	${OBJECTDIR}/src/cs/cs_droptol.o \
	${OBJECTDIR}/src/cs/cs_symperm.o \
	${OBJECTDIR}/src/cs/cs_dropzeros.o \
	${OBJECTDIR}/src/cs/cs_util.o \
	${OBJECTDIR}/src/cs/cs_transpose.o \
	${OBJECTDIR}/src/cs/cs_multiply.o \
	${OBJECTDIR}/src/my_lssolve.o \
	${OBJECTDIR}/src/cs/cs_ipvec.o \
	${OBJECTDIR}/src/cs/cs_schol.o \
	${OBJECTDIR}/src/cs/cs_pinv.o \
	${OBJECTDIR}/src/cs/cs_permute.o \
	${OBJECTDIR}/src/cs/cs_fkeep.o \
	${OBJECTDIR}/src/cs/cs_amd.o \
	${OBJECTDIR}/src/cs/cs_maxtrans.o \
	${OBJECTDIR}/src/cs/cs_randperm.o \
	${OBJECTDIR}/src/cs/cs_scc.o \
	${OBJECTDIR}/src/cs/cs_tdfs.o \
	${OBJECTDIR}/src/cs/cs_cumsum.o \
	${OBJECTDIR}/src/cs/cs_updown.o \
	${OBJECTDIR}/src/lspsolver_Solver.o \
	${OBJECTDIR}/src/cs/cs_gaxpy.o \
	${OBJECTDIR}/src/cs/cs_load.o \
	${OBJECTDIR}/src/cs/cs_spsolve.o \
	${OBJECTDIR}/src/cs/cs_entry.o \
	${OBJECTDIR}/src/cs/cs_compress.o \
	${OBJECTDIR}/src/cs/cs_utsolve.o \
	${OBJECTDIR}/src/cs/cs_lsolve.o \
	${OBJECTDIR}/src/cs/cs_qrsol.o \
	${OBJECTDIR}/src/cs/cs_lusol.o \
	${OBJECTDIR}/src/cs/cs_chol.o \
	${OBJECTDIR}/src/cs/cs_usolve.o \
	${OBJECTDIR}/src/cs/cs_leaf.o \
	${OBJECTDIR}/src/cs/cs_lu.o \
	${OBJECTDIR}/src/cs/cs_counts.o \
	${OBJECTDIR}/src/cs/cs_malloc.o \
	${OBJECTDIR}/src/cs/cs_ereach.o \
	${OBJECTDIR}/src/cs/cs_post.o \
	${OBJECTDIR}/src/cs/cs_house.o \
	${OBJECTDIR}/src/cs/cs_sqr.o \
	${OBJECTDIR}/src/cs/cs_add.o \
	${OBJECTDIR}/src/cs/cs_print.o \
	${OBJECTDIR}/src/cs/cs_qr.o \
	${OBJECTDIR}/src/cs/cs_reach.o \
	${OBJECTDIR}/src/cs/cs_scatter.o \
	${OBJECTDIR}/src/cs/cs_dupl.o \
	${OBJECTDIR}/src/cs/cs_ltsolve.o \
	${OBJECTDIR}/src/cs/cs_dfs.o \
	${OBJECTDIR}/src/cs/cs_cholsol.o \
	${OBJECTDIR}/src/cs/cs_dmperm.o \
	${OBJECTDIR}/src/cs/cs_happly.o \
	${OBJECTDIR}/src/cs/cs_pvec.o \
	${OBJECTDIR}/src/cs/cs_norm.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/${CND_ARTIFACT_NAME}

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/${CND_ARTIFACT_NAME}: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	$(CC) -shared -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/${CND_ARTIFACT_NAME} -fPIC ${OBJECTFILES} ${LDLIBSOPTIONS} 

${OBJECTDIR}/src/cs/cs_etree.o: src/cs/cs_etree.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_etree.o src/cs/cs_etree.c

${OBJECTDIR}/src/cs/cs_droptol.o: src/cs/cs_droptol.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_droptol.o src/cs/cs_droptol.c

${OBJECTDIR}/src/cs/cs_symperm.o: src/cs/cs_symperm.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_symperm.o src/cs/cs_symperm.c

${OBJECTDIR}/src/cs/cs_dropzeros.o: src/cs/cs_dropzeros.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_dropzeros.o src/cs/cs_dropzeros.c

${OBJECTDIR}/src/cs/cs_util.o: src/cs/cs_util.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_util.o src/cs/cs_util.c

${OBJECTDIR}/src/cs/cs_transpose.o: src/cs/cs_transpose.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_transpose.o src/cs/cs_transpose.c

${OBJECTDIR}/src/cs/cs_multiply.o: src/cs/cs_multiply.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_multiply.o src/cs/cs_multiply.c

${OBJECTDIR}/src/my_lssolve.o: src/my_lssolve.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/my_lssolve.o src/my_lssolve.c

${OBJECTDIR}/src/cs/cs_ipvec.o: src/cs/cs_ipvec.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_ipvec.o src/cs/cs_ipvec.c

${OBJECTDIR}/src/cs/cs_schol.o: src/cs/cs_schol.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_schol.o src/cs/cs_schol.c

${OBJECTDIR}/src/cs/cs_pinv.o: src/cs/cs_pinv.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_pinv.o src/cs/cs_pinv.c

${OBJECTDIR}/src/cs/cs_permute.o: src/cs/cs_permute.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_permute.o src/cs/cs_permute.c

${OBJECTDIR}/src/cs/cs_fkeep.o: src/cs/cs_fkeep.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_fkeep.o src/cs/cs_fkeep.c

${OBJECTDIR}/src/cs/cs_amd.o: src/cs/cs_amd.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_amd.o src/cs/cs_amd.c

${OBJECTDIR}/src/cs/cs_maxtrans.o: src/cs/cs_maxtrans.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_maxtrans.o src/cs/cs_maxtrans.c

${OBJECTDIR}/src/cs/cs_randperm.o: src/cs/cs_randperm.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_randperm.o src/cs/cs_randperm.c

${OBJECTDIR}/src/cs/cs_scc.o: src/cs/cs_scc.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_scc.o src/cs/cs_scc.c

${OBJECTDIR}/src/cs/cs_tdfs.o: src/cs/cs_tdfs.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_tdfs.o src/cs/cs_tdfs.c

${OBJECTDIR}/src/cs/cs_cumsum.o: src/cs/cs_cumsum.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_cumsum.o src/cs/cs_cumsum.c

${OBJECTDIR}/src/cs/cs_updown.o: src/cs/cs_updown.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_updown.o src/cs/cs_updown.c

${OBJECTDIR}/src/lspsolver_Solver.o: src/lspsolver_Solver.c 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/lspsolver_Solver.o src/lspsolver_Solver.c

${OBJECTDIR}/src/cs/cs_gaxpy.o: src/cs/cs_gaxpy.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_gaxpy.o src/cs/cs_gaxpy.c

${OBJECTDIR}/src/cs/cs_load.o: src/cs/cs_load.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_load.o src/cs/cs_load.c

${OBJECTDIR}/src/cs/cs_spsolve.o: src/cs/cs_spsolve.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_spsolve.o src/cs/cs_spsolve.c

${OBJECTDIR}/src/cs/cs_entry.o: src/cs/cs_entry.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_entry.o src/cs/cs_entry.c

${OBJECTDIR}/src/cs/cs_compress.o: src/cs/cs_compress.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_compress.o src/cs/cs_compress.c

${OBJECTDIR}/src/cs/cs_utsolve.o: src/cs/cs_utsolve.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_utsolve.o src/cs/cs_utsolve.c

${OBJECTDIR}/src/cs/cs_lsolve.o: src/cs/cs_lsolve.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_lsolve.o src/cs/cs_lsolve.c

${OBJECTDIR}/src/cs/cs_qrsol.o: src/cs/cs_qrsol.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_qrsol.o src/cs/cs_qrsol.c

${OBJECTDIR}/src/cs/cs_lusol.o: src/cs/cs_lusol.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_lusol.o src/cs/cs_lusol.c

${OBJECTDIR}/src/cs/cs_chol.o: src/cs/cs_chol.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_chol.o src/cs/cs_chol.c

${OBJECTDIR}/src/cs/cs_usolve.o: src/cs/cs_usolve.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_usolve.o src/cs/cs_usolve.c

${OBJECTDIR}/src/cs/cs_leaf.o: src/cs/cs_leaf.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_leaf.o src/cs/cs_leaf.c

${OBJECTDIR}/src/cs/cs_lu.o: src/cs/cs_lu.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_lu.o src/cs/cs_lu.c

${OBJECTDIR}/src/cs/cs_counts.o: src/cs/cs_counts.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_counts.o src/cs/cs_counts.c

${OBJECTDIR}/src/cs/cs_malloc.o: src/cs/cs_malloc.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_malloc.o src/cs/cs_malloc.c

${OBJECTDIR}/src/cs/cs_ereach.o: src/cs/cs_ereach.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_ereach.o src/cs/cs_ereach.c

${OBJECTDIR}/src/cs/cs_post.o: src/cs/cs_post.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_post.o src/cs/cs_post.c

${OBJECTDIR}/src/cs/cs_house.o: src/cs/cs_house.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_house.o src/cs/cs_house.c

${OBJECTDIR}/src/cs/cs_sqr.o: src/cs/cs_sqr.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_sqr.o src/cs/cs_sqr.c

${OBJECTDIR}/src/cs/cs_add.o: src/cs/cs_add.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_add.o src/cs/cs_add.c

${OBJECTDIR}/src/cs/cs_print.o: src/cs/cs_print.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_print.o src/cs/cs_print.c

${OBJECTDIR}/src/cs/cs_qr.o: src/cs/cs_qr.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_qr.o src/cs/cs_qr.c

${OBJECTDIR}/src/cs/cs_reach.o: src/cs/cs_reach.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_reach.o src/cs/cs_reach.c

${OBJECTDIR}/src/cs/cs_scatter.o: src/cs/cs_scatter.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_scatter.o src/cs/cs_scatter.c

${OBJECTDIR}/src/cs/cs_dupl.o: src/cs/cs_dupl.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_dupl.o src/cs/cs_dupl.c

${OBJECTDIR}/src/cs/cs_ltsolve.o: src/cs/cs_ltsolve.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_ltsolve.o src/cs/cs_ltsolve.c

${OBJECTDIR}/src/cs/cs_dfs.o: src/cs/cs_dfs.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_dfs.o src/cs/cs_dfs.c

${OBJECTDIR}/src/cs/cs_cholsol.o: src/cs/cs_cholsol.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_cholsol.o src/cs/cs_cholsol.c

${OBJECTDIR}/src/cs/cs_dmperm.o: src/cs/cs_dmperm.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_dmperm.o src/cs/cs_dmperm.c

${OBJECTDIR}/src/cs/cs_happly.o: src/cs/cs_happly.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_happly.o src/cs/cs_happly.c

${OBJECTDIR}/src/cs/cs_pvec.o: src/cs/cs_pvec.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_pvec.o src/cs/cs_pvec.c

${OBJECTDIR}/src/cs/cs_norm.o: src/cs/cs_norm.c 
	${MKDIR} -p ${OBJECTDIR}/src/cs
	${RM} $@.d
	$(COMPILE.c) -O3 -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/cs/cs_norm.o src/cs/cs_norm.c

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/liblspsolver.so

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
