# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Conversion between markup formats"
HOMEPAGE="http://johnmacfarlane.net/pandoc"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/base64-bytestring-0.1:=[profile?]
		<dev-haskell/base64-bytestring-1.1:=[profile?]
		=dev-haskell/blaze-html-0.5*:=[profile?]
		>=dev-haskell/citeproc-hs-0.3.4:=[profile?]
		<dev-haskell/citeproc-hs-0.4:=[profile?]
		=dev-haskell/extensible-exceptions-0.1*:=[profile?]
		>=dev-haskell/highlighting-kate-0.5.1:=[profile?]
		<dev-haskell/highlighting-kate-0.6:=[profile?]
		>=dev-haskell/http-4000.0.5:=[profile?]
		<dev-haskell/http-4000.3:=[profile?]
		>=dev-haskell/json-0.4:=[profile?]
		<dev-haskell/json-0.8:=[profile?]
		>=dev-haskell/mtl-1.1:=[profile?]
		<dev-haskell/mtl-2.2:=[profile?]
		>=dev-haskell/network-2:=[profile?]
		<dev-haskell/network-2.5:=[profile?]
		>=dev-haskell/pandoc-types-1.9.0.2:=[profile?]
		<dev-haskell/pandoc-types-1.10:=[profile?]
		=dev-haskell/parsec-3.1*:=[profile?]
		>=dev-haskell/random-1:=[profile?]
		<dev-haskell/random-1.1:=[profile?]
		>=dev-haskell/syb-0.1:=[profile?]
		<dev-haskell/syb-0.4:=[profile?]
		>=dev-haskell/tagsoup-0.12.5:=[profile?]
		<dev-haskell/tagsoup-0.13:=[profile?]
		=dev-haskell/temporary-1.1*:=[profile?]
		>=dev-haskell/texmath-0.6.0.2:=[profile?]
		<dev-haskell/texmath-0.7:=[profile?]
		>=dev-haskell/time-1.2:=[profile?]
		<dev-haskell/time-1.5:=[profile?]
		=dev-haskell/utf8-string-0.3*:=[profile?]
		>=dev-haskell/xml-1.3.12:=[profile?]
		<dev-haskell/xml-1.4:=[profile?]
		>=dev-haskell/zip-archive-0.1.1.7:=[profile?]
		<dev-haskell/zip-archive-0.2:=[profile?]
		=dev-haskell/zlib-0.5*:=[profile?]
		>=dev-lang/ghc-7.4.2:="
DEPEND="${RDEPEND}
		test? ( =dev-haskell/ansi-terminal-0.5*
			dev-haskell/diff
			=dev-haskell/hunit-1.2*
			>=dev-haskell/quickcheck-2.4
			<dev-haskell/quickcheck-2.6
			>=dev-haskell/test-framework-0.3
			<dev-haskell/test-framework-0.7
			=dev-haskell/test-framework-hunit-0.2*
			>=dev-haskell/test-framework-quickcheck2-0.2.9
			<dev-haskell/test-framework-quickcheck2-0.3
		)
		>=dev-haskell/cabal-1.10"

src_install() {
	cabal_src_install

	doman "${S}/man/man1/${PN}.1"

	# COPYING is installed by the Cabal eclass
	dodoc README COPYRIGHT changelog
}
