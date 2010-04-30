# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit git distutils

EAPI=3

DESCRIPTION="Simple script for automation kernel building, installing end etc."
HOMEPAGE="http://github.com/KonstantinGrigoriev/build-kernel"
EGIT_REPO_URI="git://github.com/KonstantinGrigoriev/build-kernel.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND=">=dev-lang/python-2.6"
RDEPEND="${DEPEND}"

