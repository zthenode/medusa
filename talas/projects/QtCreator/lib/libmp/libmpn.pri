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
#   File: libmpn.pri
#
# Author: $author$
#   Date: 9/3/2021
#
# QtCreator .pri file for talas library libmpn
########################################################################

########################################################################
# libmpn

# libmpn TARGET
#
libmpn_TARGET = mpn
libmpn_TEMPLATE = lib
libmpn_CONFIG += staticlib

# libmpn INCLUDEPATH
#
libmpn_INCLUDEPATH += \
$${talas_INCLUDEPATH} \

# libmpn DEFINES
#
libmpn_DEFINES += \
$${talas_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \

########################################################################
# libmpn OBJECTIVE_HEADERS
#
#libmpn_OBJECTIVE_HEADERS += \
#$${TALAS_SRC}/talas/app/console/mpn/main.hh \

# libmpn OBJECTIVE_SOURCES
#
#libmpn_OBJECTIVE_SOURCES += \
#$${TALAS_SRC}/talas/app/console/mpn/main.mm \

########################################################################
# libmpn HEADERS
#
libmpn_HEADERS += \

# libmpn SOURCES
#
libmpn_SOURCES += \
$${MP_SRC}/mpn/generic/add_n.c \
$${MP_SRC}/mpn/generic/addmul_1.c \
$${MP_SRC}/mpn/generic/bdivmod.c \
$${MP_SRC}/mpn/generic/cmp.c \
$${MP_SRC}/mpn/generic/divmod_1.c \
$${MP_SRC}/mpn/generic/divrem.c \
$${MP_SRC}/mpn/generic/divrem_1.c \
$${MP_SRC}/mpn/generic/dump.c \
$${MP_SRC}/mpn/generic/gcd.c \
$${MP_SRC}/mpn/generic/gcd_1.c \
$${MP_SRC}/mpn/generic/gcdext.c \
$${MP_SRC}/mpn/generic/get_str.c \
$${MP_SRC}/mpn/generic/hamdist.c \
$${MP_SRC}/mpn/generic/inlines.c \
$${MP_SRC}/mpn/generic/lshift.c \
$${MP_SRC}/mpn/generic/mod_1.c \
$${MP_SRC}/mpn/mp_bases.c \
$${MP_SRC}/mpn/generic/mul.c \
$${MP_SRC}/mpn/generic/mul_1.c \
$${MP_SRC}/mpn/generic/mul_n.c \
$${MP_SRC}/mpn/generic/perfsqr.c \
$${MP_SRC}/mpn/generic/popcount.c \
$${MP_SRC}/mpn/generic/pre_mod_1.c \
$${MP_SRC}/mpn/generic/random2.c \
$${MP_SRC}/mpn/generic/rshift.c \
$${MP_SRC}/mpn/generic/scan0.c \
$${MP_SRC}/mpn/generic/scan1.c \
$${MP_SRC}/mpn/generic/set_str.c \
$${MP_SRC}/mpn/generic/sqrtrem.c \
$${MP_SRC}/mpn/generic/sub_n.c \
$${MP_SRC}/mpn/generic/submul_1.c \
$${MP_SRC}/mpn/generic/udiv_w_sdiv.c \

########################################################################



