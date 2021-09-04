########################################################################
# Copyright (c) 1988-2021 $organization$
#
# This software is provided by the author and contributors ``as is''
# and any express or implied warranties, including, but not limited to,
# the implied warranties of merchantability and fitness for a particular
# purpose are disclaimed. In no event shall the author or contributors
# be liable for any direct, indirect, incidental, special, exemplary,
# or consequential damages (including, but not limited to, procurement
# of substitute goods or services; loss of use, data, or profits; or
# business interruption) however caused and on any theory of liability,
# whether in contract, strict liability, or tort (including negligence
# or otherwise) arising in any way out of the use of this software,
# even if advised of the possibility of such damage.
#
#   File: talas.pri
#
# Author: $author$
#   Date: 9/3/2021
#
# Build specific QtCreator .pri file for talas
########################################################################
# depends openssl;libressl;bn;mp;nadir;rostra

contains(BUILD_OS,Uname) {
UNAME = $$system(uname)

contains(UNAME,Darwin) {
BUILD_OS = macosx
} else {
contains(UNAME,Linux) {
BUILD_OS = linux
} else {
contains(UNAME,Windows) {
BUILD_OS = windows
} else {
BUILD_OS = os
} # contains(UNAME,Windows)
} # contains(UNAME,Linux)
} # contains(UNAME,Darwin)
} else {
contains(BUILD_OS,TALAS_OS) {
} else {
BUILD_OS = os
} # contains(BUILD_OS,TALAS_OS)
} # contains(BUILD_OS,Uname)

#BUILD_CPP_VERSION = 11

########################################################################
# openssl
#
# pkg-config --cflags --libs openssl
#

# build openssl INCLUDEPATH
#
build_openssl_INCLUDEPATH += \

# build openssl DEFINES
#
build_openssl_DEFINES += \

# build openssl FRAMEWORKS
#
build_openssl_FRAMEWORKS += \

# build openssl LIBS
#
build_openssl_LIBS += \

########################################################################
# libressl
#
# pkg-config --cflags --libs libressl
#

# build libressl INCLUDEPATH
#
build_libressl_INCLUDEPATH += \

# build libressl DEFINES
#
build_libressl_DEFINES += \

# build libressl FRAMEWORKS
#
build_libressl_FRAMEWORKS += \

# build libressl LIBS
#
build_libressl_LIBS += \

########################################################################
# bn
#
# pkg-config --cflags --libs bn
#

# build bn INCLUDEPATH
#
build_bn_INCLUDEPATH += \

# build bn DEFINES
#
build_bn_DEFINES += \

# build bn FRAMEWORKS
#
build_bn_FRAMEWORKS += \

# build bn LIBS
#
build_bn_LIBS += \

########################################################################
# mp
#
# pkg-config --cflags --libs mp
#

# build mp INCLUDEPATH
#
build_mp_INCLUDEPATH += \

# build mp DEFINES
#
build_mp_DEFINES += \

# build mp FRAMEWORKS
#
build_mp_FRAMEWORKS += \

# build mp LIBS
#
build_mp_LIBS += \

########################################################################
# nadir
#
# pkg-config --cflags --libs nadir
#

# build nadir INCLUDEPATH
#
build_nadir_INCLUDEPATH += \

# build nadir DEFINES
#
build_nadir_DEFINES += \

# build nadir FRAMEWORKS
#
build_nadir_FRAMEWORKS += \

# build nadir LIBS
#
build_nadir_LIBS += \

########################################################################
# rostra
#
# pkg-config --cflags --libs rostra
#

# build rostra INCLUDEPATH
#
build_rostra_INCLUDEPATH += \

# build rostra DEFINES
#
build_rostra_DEFINES += \

# build rostra FRAMEWORKS
#
build_rostra_FRAMEWORKS += \

# build rostra LIBS
#
build_rostra_LIBS += \

########################################################################
# talas

# build talas INCLUDEPATH
#
build_talas_INCLUDEPATH += \
$${build_rostra_INCLUDEPATH} \
$${build_nadir_INCLUDEPATH} \
$${build_mp_INCLUDEPATH} \
$${build_bn_INCLUDEPATH} \
$${build_libressl_INCLUDEPATH} \
$${build_openssl_INCLUDEPATH} \


# build talas DEFINES
#
build_talas_DEFINES += \
$${build_openssl_DEFINES} \
$${build_libressl_DEFINES} \
$${build_bn_DEFINES} \
$${build_mp_DEFINES} \
$${build_nadir_DEFINES} \
$${build_rostra_DEFINES} \


# build talas FRAMEWORKS
#
build_talas_FRAMEWORKS += \
$${build_rostra_FRAMEWORKS} \
$${build_nadir_FRAMEWORKS} \
$${build_mp_FRAMEWORKS} \
$${build_bn_FRAMEWORKS} \
$${build_libressl_FRAMEWORKS} \
$${build_openssl_FRAMEWORKS} \


# build talas LIBS
#
build_talas_LIBS += \
$${build_rostra_LIBS} \
$${build_nadir_LIBS} \
$${build_mp_LIBS} \
$${build_bn_LIBS} \
$${build_libressl_LIBS} \
$${build_openssl_LIBS} \


