# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit distutils subversion

EAPI=3

DESCRIPTION="Git plugin for Trac"
HOMEPAGE="http://trac-hacks.org/wiki/GitPlugin"
ESVN_REPO_URI="http://trac-hacks.org/svn/gitplugin/${PV}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND="dev-python/setuptools"
RDEPEND="=www-apps/trac-0.11*"

DOCS="README COPYING"

