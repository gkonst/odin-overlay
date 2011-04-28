# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit git distutils

PYTHON_MODNAME="compressor"

DESCRIPTION="Django Compressor"
HOMEPAGE="http://github.com/mintchaos/django_compressor"
EGIT_REPO_URI="git://github.com/mintchaos/django_compressor.git"

LICENSE=""
SLOT="0"
KEYWORDS="~x86"

DEPEND="dev-python/django
        dev-python/beautifulsoup"
RDEPEND="${DEPEND}"

