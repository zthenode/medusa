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
#   File: medusa.pri
#
# Author: $author$
#   Date: 9/2/2021
#
# QtCreator .pri file for medusa executable medusa
########################################################################

########################################################################
# medusa

# medusa_exe TARGET
#
medusa_exe_TARGET = medusa

# medusa_exe INCLUDEPATH
#
medusa_exe_INCLUDEPATH += \
$${medusa_INCLUDEPATH} \

# medusa_exe DEFINES
#
medusa_exe_DEFINES += \
$${medusa_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \

########################################################################
# medusa_exe OBJECTIVE_HEADERS
#
#medusa_exe_OBJECTIVE_HEADERS += \
#$${MEDUSA_SRC}/medusa/app/console/medusa/main.hh \

# medusa_exe OBJECTIVE_SOURCES
#
#medusa_exe_OBJECTIVE_SOURCES += \
#$${MEDUSA_SRC}/medusa/app/console/medusa/main.mm \

########################################################################
# medusa_exe HEADERS
#
medusa_exe_HEADERS += \
$${MEDUSA_SRC}/medusa/app/console/medusa/main.hpp \

# medusa_exe SOURCES
#
medusa_exe_SOURCES += \
$${MEDUSA_SRC}/medusa/app/console/medusa/main.cpp \

########################################################################
# medusa_exe FRAMEWORKS
#
medusa_exe_FRAMEWORKS += \
$${medusa_FRAMEWORKS} \

# medusa_exe LIBS
#
medusa_exe_LIBS += \
$${medusa_LIBS} \


