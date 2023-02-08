# Maintainer: Sahan Raanjana <sahan.user@gmail.com>
pkgname=dark-space-theme
pkgver=1
pkgrel=1
pkgdesc="Aster Linux Plasma Theme"
arch=("x86_64")
url="https://asterlinux.github.io"
license=('GPL')
source=("plasma.tar.gz")
md5sums=("SKIP")

package() {
	mkdir -p "${pkgdir}"/usr/share/plasma/{look-and-feel,desktoptheme,layout-template}
        mkdir -p "${pkgdir}"/usr/share/wallpaper/
        cp ${srcdir}/theme/Stars -r "${pkgdir}"/usr/share/wallpaper/
	cd ${pkgdir}/usr/share/plasma/
        cp ${srcdir}/theme/dark-space "${pkgdir}"/usr/share/plasma/desktoptheme/dark-space -r 
        cp ${srcdir}/theme/org.kde.plasma.desktop.defaultPanel "${pkgdir}"/usr/share/plasma/layout-templates/ -r
        cp ${srcdir}/theme/org.kde.space.dark.desktop "${pkgdir}"/usr/share/plasma/look-and-feel/org.kde.space.dark.desktop -r
}
