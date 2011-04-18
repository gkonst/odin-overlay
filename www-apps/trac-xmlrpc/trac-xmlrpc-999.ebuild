# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit distutils subversion 

DESCRIPTION="Remote Procedure Call plugin for Trac"
HOMEPAGE="http://trac-hacks.org/wiki/XmlRpcPlugin"
ESVN_REPO_URI="http://trac-hacks.org/svn/xmlrpcplugin/trunk"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND="dev-python/setuptools"
RDEPEND=">=www-apps/trac-0.11"

DOCS="README.wiki"

src_install() {
	distutils_src_install
	rm "${D}"/usr/README.wiki
}
