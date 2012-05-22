# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $


EAPI=3

DESCRIPTION="Build tool for Scala and Java projects that aims to do the basics
well."
HOMEPAGE="https://github.com/harrah/xsbt/wiki"
SRC_URI="http://typesafe.artifactoryonline.com/typesafe/ivy-releases/org.scala-sbt/sbt-launch/${PV}/sbt-launch.jar -> sbt-launch-${PV}.jar"

LICENSE="BSD"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE=""

DEPEND=">=virtual/jdk-1.6"
RDEPEND="${DEPEND}"

src_unpack() {
	cp ${DISTDIR}/${A} ${WORKDIR}
}
src_install() {
	local dir="/usr/share/${PN}"
	insinto "${dir}"
	doins -r *
	fperms 755 "${dir}/${A}"
	dodir /usr/bin
	local sbt_bin="sbt"
	cat > "${D}/usr/bin/${sbt_bin}" <<-EOF
#!/bin/bash
java -Xms512M -Xmx1536M -Xss1M -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=384M -jar ${dir}/${A} "\$@"
EOF
	fperms 755 /usr/bin/${sbt_bin}
}
