# Maintainer: Sahan Raanjana <sahan.user@gmail.com>
pkgname=plasma-theme-space
pkgver=1
pkgrel=1
pkgdesc="Aster Linux Plasma Theme"
arch=("x86_64")
url="https://asterlinux.github.io"
license=('GPL')
source=("plasma.tar.gz")
md5sums=("SKIP")

package() {
	cd ${pkgdir}
	mkdir -p "${pkgdir}"/usr/share/plasma/look-and-feel
	cp ${srcdir}/space ${pkgdir}/usr/share/plasma/look-and-feel/space -r
}
