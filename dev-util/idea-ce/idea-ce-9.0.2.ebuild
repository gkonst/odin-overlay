# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils git versionator java-pkg-2 java-ant-2

EAPI=3

SLOT="$(get_major_version)"

MY_PV="95.66"
MY_PN="idea"

RESTRICT="strip"
QA_TEXTRELS="opt/${P}/bin/libbreakgen.so"

DESCRIPTION="IntelliJ IDEA is an intelligent Java IDE : Community Edition"
HOMEPAGE="http://jetbrains.com/idea/"
EGIT_REPO_URI="git://git.jetbrains.org/idea/community.git"
EGIT_BRANCH="idea/${MY_PV}"
#EGIT_PROJECT=""

LICENSE="Apache-2"
KEYWORDS="~x86"
IUSE=""

DEPEND="!dev-util/idea-ce-bin
        >=virtual/jdk-1.6"
RDEPEND="$DEPEND"

src_compile() {
	eant build
}

src_install() {
	local dir="/opt/${P}"
	insinto "${dir}"
	doins -r out/dist.all.ce/* out/dist.unix.ce/*
	fperms 755 "${dir}/bin/${MY_PN}.sh"
	local exe=${PN}-${SLOT}
	dodir /usr/bin
	cat > "${D}/usr/bin/${exe}" <<-EOF
#!/bin/sh
/opt/${P}/bin/${MY_PN}.sh \$@
EOF
	fperms 755 /usr/bin/${exe}
	make_desktop_entry ${exe} "IntelliJ IDEA ${PV} : CE" "" "Development;IDE"
}
