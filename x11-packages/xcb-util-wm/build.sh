TERMUX_PKG_HOMEPAGE=https://xcb.freedesktop.org/
TERMUX_PKG_DESCRIPTION="Utility libraries for XC Binding - client and window-manager helpers for ICCCM"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=0.4.2
TERMUX_PKG_SRCURL=https://xcb.freedesktop.org/dist/xcb-util-wm-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=62c34e21d06264687faea7edbf63632c9f04d55e72114aa4a57bb95e4f888a0b
TERMUX_PKG_DEPENDS="libxcb"
TERMUX_PKG_BUILD_DEPENDS="xorg-util-macros"

termux_step_post_massage() {
	cd ${TERMUX_PKG_MASSAGEDIR}/${TERMUX_PREFIX}/lib || exit 1
	if [ ! -e "./libxcb-ewmh.so.2" ]; then
		ln -sf libxcb-ewmh.so libxcb-ewmh.so.2
	fi
	if [ ! -e "./libxcb-icccm.so.4" ]; then
		ln -sf libxcb-icccm.so libxcb-icccm.so.4
	fi
}
