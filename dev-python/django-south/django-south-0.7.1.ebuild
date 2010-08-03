# Copyright 1999-2010
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"

inherit distutils

PYTHON_MODNAME="south"

DESCRIPTION="Django South"
HOMEPAGE="http://south.aeracode.org/"
SRC_URI="http://www.aeracode.org/releases/south/south-${PV}.tar.gz"

SLOT="0"
KEYWORDS="x86"

DEPEND="dev-python/django"
RDEPEND="${DEPEND}"

S="${WORKDIR}/south"
