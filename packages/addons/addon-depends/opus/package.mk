################################################################################
#      This file is part of LibreELEC - https://libreelec.tv
#      Copyright (C) 2016-present Team LibreELEC
#
#  LibreELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  LibreELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with LibreELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="opus"
PKG_VERSION="1.1.2"
PKG_SHA256="0e290078e31211baa7b5886bcc8ab6bc048b9fc83882532da4a1a45e58e907fd"
PKG_ARCH="any"
PKG_LICENSE="BSD"
PKG_SITE="http://www.opus-codec.org"
PKG_URL="http://downloads.us.xiph.org/releases/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="audio"
PKG_SHORTDESC="Codec designed for interactive speech and audio transmission over the Internet"
PKG_LONGDESC="Codec designed for interactive speech and audio transmission over the Internet"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

if [ "$TARGET_ARCH" = "arm" ]; then
  FIXED_POINT="--enable-fixed-point"
else
  FIXED_POINT="--disable-fixed-point"
fi

PKG_CONFIGURE_OPTS_TARGET="--enable-static \
                           --disable-shared \
                           $FIXED_POINT"
