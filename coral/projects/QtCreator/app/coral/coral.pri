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
# QtCreator .pri file for coral executable coral
########################################################################

########################################################################
# coral

# coral_exe TARGET
#
coral_exe_TARGET = coral

# coral_exe INCLUDEPATH
#
coral_exe_INCLUDEPATH += \
$${coral_INCLUDEPATH} \

# coral_exe DEFINES
#
coral_exe_DEFINES += \
$${coral_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \

########################################################################
# coral_exe OBJECTIVE_HEADERS
#
#coral_exe_OBJECTIVE_HEADERS += \
#$${CORAL_SRC}/coral/app/console/coral/main.hh \

# coral_exe OBJECTIVE_SOURCES
#
#coral_exe_OBJECTIVE_SOURCES += \
#$${CORAL_SRC}/coral/app/console/coral/main.mm \

########################################################################
# coral_exe HEADERS
#
coral_exe_HEADERS += \
$${CORAL_SRC}/coral/app/console/coral/main.hpp \

# coral_exe SOURCES
#
coral_exe_SOURCES += \
$${CORAL_SRC}/coral/app/console/coral/main.cpp \

########################################################################
# coral_exe FRAMEWORKS
#
coral_exe_FRAMEWORKS += \
$${coral_FRAMEWORKS} \

# coral_exe LIBS
#
coral_exe_LIBS += \
$${coral_LIBS} \


