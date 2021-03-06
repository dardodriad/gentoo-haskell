# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Type-safe datatype-database mapping library"
HOMEPAGE="https://github.com/lykahb/groundhog"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.5:=[profile?]
	>=dev-haskell/attoparsec-0.11:=[profile?]
	dev-haskell/base64-bytestring:=[profile?]
	>=dev-haskell/blaze-builder-0.3:=[profile?] <dev-haskell/blaze-builder-0.5:=[profile?]
	>=dev-haskell/monad-control-0.3:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/monad-logger-0.3:=[profile?] <dev-haskell/monad-logger-0.4:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?]
	dev-haskell/scientific:=[profile?]
	>=dev-haskell/text-0.8:=[profile?]
	>=dev-haskell/transformers-0.2.1:=[profile?]
	dev-haskell/transformers-base:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

src_prepare() {
	epatch "${FILESDIR}"/${P}-ghc-8.patch

	cabal_chdeps \
		'transformers             >= 0.2.1      && < 0.5' 'transformers             >= 0.2.1'
}
