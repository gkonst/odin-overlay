# Copyright 1999-2009 Tiziano Müller
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit distutils

PYTHON_MODNAME="django_extensions"

DESCRIPTION="Django Command Extensions"
HOMEPAGE="http://code.google.com/p/django-command-extensions/"
SRC_URI="http://django-command-extensions.googlecode.com/files/${P}.tar.gz"

LICENSE="BSD || ( MIT GPL-2 )"
SLOT="0"
KEYWORDS="x86"
IUSE="mysql postgres s3 sqlite vcard"

DEPEND="dev-python/django[mysql?,postgres?,sqlite?]
	dev-python/pygments
	dev-python/werkzeug
	dev-python/pygraphviz
	s3? ( dev-python/boto )
	vcard? ( dev-python/vobject )"
RDEPEND="${DEPEND}"

