# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:$

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit eutils distutils git

DESCRIPTION="Small and simple del.icio.us client."
HOMEPAGE="http://github.com/KonstantinGrigoriev/fastlink"
EGIT_REPO_URI="git://github.com/KonstantinGrigoriev/fastlink"
EGIT_PROJECT="fastlink"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

