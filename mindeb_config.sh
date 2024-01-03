declare -r NAME=mindeb
declare -r VERSION=0.0.1

declare -r ARCH="$(dpkg --print-architecture)"

declare -r DEBIAN_SUITE=bookworm
declare -r KERNEL_VERSION=6.1.0-16
declare -r KERNEL_CMDLINE='root=PARTLABEL=mindeb rw'

declare -r PACKAGES=(
	dialog
	dnsmasq-base
	firmware-linux-free
	gdisk
	libpam-systemd
	linux-image-"$KERNEL_VERSION"-"$ARCH"
	modemmanager
	nano
	network-manager
	ppp
	sudo
	systemd
	systemd-boot-efi
	systemd-sysv
	vim
	wireless-regdb
	wpasupplicant
	zstd
)

declare -r LIVE_PACKAGES=(
	arch-install-scripts
	dosfstools
	live-boot
)

declare -r LIVE_KERNEL_CMDLINE=boot=live
declare -r LIVE_USERNAME=mindeb
declare -r LIVE_PASSWORD=mindeb
