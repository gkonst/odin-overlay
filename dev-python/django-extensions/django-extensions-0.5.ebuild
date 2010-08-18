# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $


inherit distutils

EAPI="3"

PYTHON_MODNAME="django_extensions"

DESCRIPTION="Django Extensions"
HOMEPAGE="http://github.com/django-extensions/django-extensions"
SRC_URI="http://github.com/django-extensions/django-extensions/tarball/${PV} -> ${P}.tar.gz"

LICENSE="BSD || ( MIT GPL-2 )"
SLOT="0"
KEYWORDS="~x86"
IUSE="mysql postgres s3 sqlite vcard"

DEPEND="dev-python/django[mysql?,postgres?,sqlite?]
	dev-python/pygments
	dev-python/werkzeug
	dev-python/pygraphviz
	s3? ( dev-python/boto )
	vcard? ( dev-python/vobject )"
RDEPEND="${DEPEND}"

src_unpack() {
	unpack ${A}
	# Workaround commit suffix from github.
	mv "${WORKDIR}"/${PN}-* "${S}" || die
}
