# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $


inherit distutils

EAPI="3"

PYTHON_MODNAME="django_hudson"

DESCRIPTION="Plug and play continuous integration with django and hudson"
HOMEPAGE="http://github.com/kmmbvnr/django-hudson"
SRC_URI="http://github.com/kmmbvnr/django-hudson/tarball/master ->
${P}.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~x86"

DEPEND="dev-python/django"
RDEPEND="${DEPEND}"

src_unpack() {
	unpack ${A}
	# Workaround commit suffix from github.
	mv "${WORKDIR}"/kmmbvnr-* "${S}" || die
}

