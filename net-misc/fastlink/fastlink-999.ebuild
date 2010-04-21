# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:$

inherit eutils distutils git

DESCRIPTION="Small and simple del.icio.us client."
HOMEPAGE="http://github.com/KonstantinGrigoriev/fastlink"
EGIT_REPO_URI="git://github.com/KonstantinGrigoriev/fastlink"
EGIT_PROJECT="fastlink"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

DEPEND=">=dev-lang/python-2.5"
RDEPEND="${DEPEND}"

src_install() {
	distutils_src_install
}

