TERMUX_PKG_HOMEPAGE=https://github.com/tsujan/Arqiver
TERMUX_PKG_DESCRIPTION="A simple Qt archiver manager based on libarchive"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="Yisus7u7"
TERMUX_PKG_VERSION=0.8.0
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://github.com/tsujan/Arqiver/releases/download/V${TERMUX_PKG_VERSION}/Arqiver-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=96e1f02236fdf38bad0221aa94b732313d93f2c9be2f062085a56cfc23d61897
TERMUX_PKG_DEPENDS="hicolor-icon-theme, qt5-qtbase, qt5-qtsvg, qt5-qtx11extras, libarchive, bsdtar, zip"
TERMUX_PKG_BUILD_DEPENDS="qt5-qtbase-cross-tools, qt5-qttools-cross-tools"
