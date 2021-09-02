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
#   File: coral.pri
#
# Author: $author$
#   Date: 9/2/2021
#
# Os specific QtCreator .pri file for coral
########################################################################
# depends nadir;rostra;medusa

UNAME = $$system(uname)

contains(UNAME,Darwin) {
CORAL_OS = macosx
} else {
contains(UNAME,Linux) {
CORAL_OS = linux
} else {
CORAL_OS = windows
} # contains(UNAME,Linux)
} # contains(UNAME,Darwin)

contains(BUILD_OS,CORAL_OS) {
CORAL_BUILD = $${CORAL_OS}
} else {
CORAL_BUILD = $${BUILD_OS}
} # contains(BUILD_OS,CORAL_OS)

contains(BUILD_CPP_VERSION,10) {
CONFIG += c++0x
} else {
contains(BUILD_CPP_VERSION,98|03|11|14|17) {
CONFIG += c++$${BUILD_CPP_VERSION}
} else {
} # contains(BUILD_CPP_VERSION,98|03|11|14|17)
} # contains(BUILD_CPP_VERSION,10)

contains(CORAL_OS,macosx) {
} else {
contains(CORAL_OS,linux) {
QMAKE_CXXFLAGS += -fpermissive
} else {
contains(CORAL_OS,windows) {
} else {
} # contains(CORAL_OS,windows)
} # contains(CORAL_OS,linux)
} # contains(CORAL_OS,macosx)

########################################################################
# nadir
NADIR_THIRDPARTY_PKG_MAKE_BLD = $${NADIR_THIRDPARTY_PKG}/build/$${CORAL_BUILD}/$${BUILD_CONFIG}
NADIR_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${NADIR_THIRDPARTY_PRJ}/build/$${CORAL_BUILD}/$${BUILD_CONFIG}
NADIR_THIRDPARTY_PKG_BLD = $${NADIR_THIRDPARTY_PKG}/build/$${CORAL_BUILD}/QtCreator/$${BUILD_CONFIG}
NADIR_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${NADIR_THIRDPARTY_PRJ}/build/$${CORAL_BUILD}/QtCreator/$${BUILD_CONFIG}
NADIR_PKG_BLD = $${OTHER_BLD}/$${NADIR_PKG}/build/$${CORAL_BUILD}/QtCreator/$${BUILD_CONFIG}
NADIR_PRJ_BLD = $${OTHER_BLD}/$${NADIR_PRJ}/build/$${CORAL_BUILD}/QtCreator/$${BUILD_CONFIG}
#NADIR_LIB = $${NADIR_THIRDPARTY_PKG_MAKE_BLD}/lib
#NADIR_LIB = $${NADIR_THIRDPARTY_PRJ_MAKE_BLD}/lib
#NADIR_LIB = $${NADIR_THIRDPARTY_PKG_BLD}/lib
#NADIR_LIB = $${NADIR_THIRDPARTY_PRJ_BLD}/lib
NADIR_LIB = $${NADIR_PKG_BLD}/lib
#NADIR_LIB = $${NADIR_PRJ_BLD}/lib
#NADIR_LIB = $${CORAL_LIB}
NADIR_LIB_NAME = $${NADIR_NAME}

# nadir LIBS
#
nadir_LIBS += \
-L$${NADIR_LIB}/lib$${NADIR_LIB_NAME} \
-l$${NADIR_LIB_NAME} \

########################################################################
# rostra
ROSTRA_THIRDPARTY_PKG_MAKE_BLD = $${ROSTRA_THIRDPARTY_PKG}/build/$${CORAL_BUILD}/$${BUILD_CONFIG}
ROSTRA_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${ROSTRA_THIRDPARTY_PRJ}/build/$${CORAL_BUILD}/$${BUILD_CONFIG}
ROSTRA_THIRDPARTY_PKG_BLD = $${ROSTRA_THIRDPARTY_PKG}/build/$${CORAL_BUILD}/QtCreator/$${BUILD_CONFIG}
ROSTRA_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${ROSTRA_THIRDPARTY_PRJ}/build/$${CORAL_BUILD}/QtCreator/$${BUILD_CONFIG}
ROSTRA_PKG_BLD = $${OTHER_BLD}/$${ROSTRA_PKG}/build/$${CORAL_BUILD}/QtCreator/$${BUILD_CONFIG}
ROSTRA_PRJ_BLD = $${OTHER_BLD}/$${ROSTRA_PRJ}/build/$${CORAL_BUILD}/QtCreator/$${BUILD_CONFIG}
#ROSTRA_LIB = $${ROSTRA_THIRDPARTY_PKG_MAKE_BLD}/lib
#ROSTRA_LIB = $${ROSTRA_THIRDPARTY_PRJ_MAKE_BLD}/lib
#ROSTRA_LIB = $${ROSTRA_THIRDPARTY_PKG_BLD}/lib
#ROSTRA_LIB = $${ROSTRA_THIRDPARTY_PRJ_BLD}/lib
ROSTRA_LIB = $${ROSTRA_PKG_BLD}/lib
#ROSTRA_LIB = $${ROSTRA_PRJ_BLD}/lib
#ROSTRA_LIB = $${CORAL_LIB}
ROSTRA_LIB_NAME = $${ROSTRA_NAME}

# rostra LIBS
#
rostra_LIBS += \
-L$${ROSTRA_LIB}/lib$${ROSTRA_LIB_NAME} \
-l$${ROSTRA_LIB_NAME} \

########################################################################
# medusa
MEDUSA_THIRDPARTY_PKG_MAKE_BLD = $${MEDUSA_THIRDPARTY_PKG}/build/$${CORAL_BUILD}/$${BUILD_CONFIG}
MEDUSA_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${MEDUSA_THIRDPARTY_PRJ}/build/$${CORAL_BUILD}/$${BUILD_CONFIG}
MEDUSA_THIRDPARTY_PKG_BLD = $${MEDUSA_THIRDPARTY_PKG}/build/$${CORAL_BUILD}/QtCreator/$${BUILD_CONFIG}
MEDUSA_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${MEDUSA_THIRDPARTY_PRJ}/build/$${CORAL_BUILD}/QtCreator/$${BUILD_CONFIG}
MEDUSA_PKG_BLD = $${OTHER_BLD}/$${MEDUSA_PKG}/build/$${CORAL_BUILD}/QtCreator/$${BUILD_CONFIG}
MEDUSA_PRJ_BLD = $${OTHER_BLD}/$${MEDUSA_PRJ}/build/$${CORAL_BUILD}/QtCreator/$${BUILD_CONFIG}
#MEDUSA_LIB = $${MEDUSA_THIRDPARTY_PKG_MAKE_BLD}/lib
#MEDUSA_LIB = $${MEDUSA_THIRDPARTY_PRJ_MAKE_BLD}/lib
#MEDUSA_LIB = $${MEDUSA_THIRDPARTY_PKG_BLD}/lib
#MEDUSA_LIB = $${MEDUSA_THIRDPARTY_PRJ_BLD}/lib
MEDUSA_LIB = $${MEDUSA_PKG_BLD}/lib
#MEDUSA_LIB = $${MEDUSA_PRJ_BLD}/lib
#MEDUSA_LIB = $${CORAL_LIB}
MEDUSA_LIB_NAME = $${MEDUSA_NAME}

# medusa LIBS
#
medusa_LIBS += \
-L$${MEDUSA_LIB}/lib$${MEDUSA_LIB_NAME} \
-l$${MEDUSA_LIB_NAME} \

########################################################################
# coral

# coral INCLUDEPATH
#
coral_INCLUDEPATH += \

# coral DEFINES
#
coral_DEFINES += \

# coral LIBS
#
coral_LIBS += \
$${medusa_LIBS} \
$${rostra_LIBS} \
$${nadir_LIBS} \
$${build_coral_LIBS} \

contains(CORAL_OS,macosx|linux) {
coral_LIBS += \
-lpthread \
-ldl
} else {
} # contains(CORAL_OS,macosx|linux)

contains(CORAL_OS,linux) {
coral_LIBS += \
-lrt
} else {
} # contains(CORAL_OS,linux)


