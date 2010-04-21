# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/hdbc/hdbc-1.0.1.ebuild,v 1.2 2007/10/31 13:00:06 dcoutts Exp $

CABAL_FEATURES="bin"
inherit haskell-cabal

DESCRIPTION="The Automatic Rule-Base Time Tracker"
HOMEPAGE="http://darcs.nomeata.de/arbtt/doc/users_guide/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${PN}-${PV}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~sparc ~x86"
#IUSE="od"

DEPEND=">=dev-lang/ghc-6.10
        >=dev-haskell/cabal-1.2
        dev-haskell/x11
        dev-haskell/binary
        dev-haskell/parsec
        dev-haskell/utf8-string
        dev-haskell/time
        dev-haskell/pcre-light"
RDEPEND="${DEPEND}"

