# Copyright 1999-2009 Tiziano Müller
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit distutils

PYTHON_MODNAME="piston"

DESCRIPTION="A mini-framework for Django for creating RESTful APIs."
HOMEPAGE="http://bitbucket.org/jespern/django-piston/wiki/Home"
SRC_URI="http://bitbucket.org/jespern/django-piston/downloads/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="examples"

RDEPEND="dev-python/django"
DEPEND="${RDEPEND}
	dev-python/setuptools"

S="${WORKDIR}/${PN}"

src_install() {
	distutils_src_install

	if use examples ; then
		insinto /usr/share/doc/${PF}
		doins -r examples
	fi
}
