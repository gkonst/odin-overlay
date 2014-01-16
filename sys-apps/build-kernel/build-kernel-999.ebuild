# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_DEPEND="2:2.6"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit git-2 distutils

DESCRIPTION="Simple script for automation kernel building, installing end etc."
HOMEPAGE="http://github.com/KonstantinGrigoriev/build-kernel"
EGIT_REPO_URI="git://github.com/KonstantinGrigoriev/build-kernel.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
    distutils_src_install

    insinto /etc
    doins build_kernel.conf.json
}
