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
#   File: cgithrow.pro
#
# Author: $author$
#   Date: 9/2/2021
#
# QtCreator .pro file for coral executable cgithrow
########################################################################
include(../../../../../build/QtCreator/coral.pri)
include(../../../../QtCreator/coral.pri)
include(../../coral.pri)
include(../../../../QtCreator/app/cgithrow/cgithrow.pri)

TARGET = $${cgithrow_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${cgithrow_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${cgithrow_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${cgithrow_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${cgithrow_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${cgithrow_HEADERS} \
$${cgithrow_OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${cgithrow_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${cgithrow_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${cgithrow_LIBS} \
$${FRAMEWORKS} \


