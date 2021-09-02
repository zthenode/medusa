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
#   File: cgithrow.pri
#
# Author: $author$
#   Date: 9/2/2021
#
# QtCreator .pri file for coral executable cgithrow
########################################################################

########################################################################
# cgithrow

# cgithrow TARGET
#
cgithrow_TARGET = cgithrow

# cgithrow INCLUDEPATH
#
cgithrow_INCLUDEPATH += \
$${coral_INCLUDEPATH} \

# cgithrow DEFINES
#
cgithrow_DEFINES += \
$${coral_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \

########################################################################
# cgithrow OBJECTIVE_HEADERS
#
#cgithrow_OBJECTIVE_HEADERS += \
#$${CORAL_SRC}/coral/app/console/cgithrow/main.hh \

# cgithrow OBJECTIVE_SOURCES
#
#cgithrow_OBJECTIVE_SOURCES += \
#$${CORAL_SRC}/coral/app/console/cgithrow/main.mm \

########################################################################
# cgithrow HEADERS
#
cgithrow_HEADERS += \
$${CORAL_SRC}/coral/app/cgi/thrower/main.hpp \

# cgithrow SOURCES
#
cgithrow_SOURCES += \
$${CORAL_SRC}/coral/app/cgi/thrower/main.cpp \

########################################################################
# cgithrow FRAMEWORKS
#
cgithrow_FRAMEWORKS += \
$${coral_FRAMEWORKS} \

# cgithrow LIBS
#
cgithrow_LIBS += \
$${coral_LIBS} \


