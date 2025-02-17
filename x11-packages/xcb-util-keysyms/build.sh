TERMUX_PKG_HOMEPAGE=https://xcb.freedesktop.org/
TERMUX_PKG_DESCRIPTION="Utility libraries for XC Binding - Standard X key constants and conversion to/from keycodes"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=0.4.1
TERMUX_PKG_SRCURL=https://xcb.freedesktop.org/dist/xcb-util-keysyms-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=7c260a5294412aed429df1da2f8afd3bd07b7cba3fec772fba15a613a6d5c638
TERMUX_PKG_DEPENDS="libxcb"
TERMUX_PKG_BUILD_DEPENDS="xorg-util-macros"

termux_step_post_massage() {
	cd ${TERMUX_PKG_MASSAGEDIR}/${TERMUX_PREFIX}/lib || exit 1
	if [ ! -e "./libxcb-keysyms.so.1" ]; then
		ln -sf libxcb-keysyms.so libxcb-keysyms.so.1
	fi
}
