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
	mkdir -p "${pkgdir}"/usr/share/plasma/{look-and-feel,desktoptheme,layout-templates}
#        mkdir -p "${pkgdir}"/usr/share/aurorae/themes/
        mkdir -p "${pkgdir}"/usr/share/wallpapers/
        cp ${srcdir}/theme/Redpletu -r "${pkgdir}"/usr/share/wallpapers/
#        cp ${srcdir}/theme/aurorae/theme/Dark-Space -r "${pkgdir}"/usr/share/aurorae/themes/Dark-Space
	cd ${pkgdir}/usr/share/plasma/
        cp ${srcdir}/theme/dark-space "${pkgdir}"/usr/share/plasma/desktoptheme/dark-space -r 
        cp ${srcdir}/theme/org.kde.plasma.desktop.spacePanel "${pkgdir}"/usr/share/plasma/layout-templates/org.kde.plasma.desktop.spacePanel -r
        cp ${srcdir}/theme/org.kde.space.dark.desktop "${pkgdir}"/usr/share/plasma/look-and-feel/org.kde.space.dark.desktop -r
}
