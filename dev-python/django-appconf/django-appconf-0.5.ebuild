# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/pygit2/pygit2-0.16.0.ebuild,v 1.2 2012/02/21 03:41:18 patrick Exp $

EAPI="4"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"
#DISTUTILS_SRC_TEST="setup.py"

inherit distutils

DESCRIPTION="A helper class for handling configuration defaults of packaged Django apps gracefully."
HOMEPAGE="https://github.com/jezdez/django-appconf"
SRC_URI="https://github.com/jezdez/${PN}/tarball/v${PV} -> ${P}.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-python/django"
DEPEND="${RDEPEND}"

src_unpack() {
	unpack ${A}
	mv *-${PN}-* "${S}"
}
