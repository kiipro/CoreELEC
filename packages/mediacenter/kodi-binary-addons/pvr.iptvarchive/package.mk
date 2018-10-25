# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2018-present Team CoreELEC (https://coreelec.org)

PKG_NAME="pvr.iptvarchive"
PKG_VERSION="8b7c701cfa685bc01445f68b63a96b5d7a6367f5"
PKG_SHA256="01cae25bd7ba35f1982bcaea2298ec35542a67f319e692ac7abfe1e3186d7e6b"
PKG_REV="2"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.kodi.tv"
PKG_URL="https://github.com/kodi-pvr/pvr.iptvsimple/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain kodi-platform rapidxml zlib"
PKG_SECTION=""
PKG_SHORTDESC="pvr.iptvarchive"
PKG_LONGDESC="pvr.iptvarchive"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="xbmc.pvrclient"

PKG_CMAKE_OPTS_TARGET="-DRAPIDXML_INCLUDE_DIRS=$(get_build_dir rapidxml)"

post_patch() {
	[ -d "${PKG_BUILD}/pvr.iptvsimple" ] && mv "${PKG_BUILD}/pvr.iptvsimple" "${PKG_BUILD}/pvr.iptvarchive"
}
