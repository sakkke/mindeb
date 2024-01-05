declare -r NAME=mindeb
declare -r VERSION=0.0.2

declare -r ARCH="$(dpkg --print-architecture)"

declare -r DEBIAN_SUITE=bookworm
declare -r DEBIAN_COMPONENTS=main,non-free-firmware
declare -r KERNEL_VERSION=6.1.0-16
declare -r KERNEL_CMDLINE='root=PARTLABEL=mindeb rw'

declare -r PACKAGES=(
	dialog
	dnsmasq-base
	dosfstools
	firewalld
	firmware-iwlwifi
	firmware-linux
	gdisk
	htop
	ifupdown
	libpam-systemd
	linux-image-"$KERNEL_VERSION"-"$ARCH"
	modemmanager
	nano
	netcat-openbsd
	network-manager
	pciutils
	ppp
	screen
	sudo
	systemd
	systemd-boot-efi
	systemd-sysv
	systemd-timesyncd
	vim
	wireless-regdb
	wpasupplicant
	zstd
)

declare -r LIVE_PACKAGES=(
	arch-install-scripts
	live-boot
)

declare -r LIVE_KERNEL_CMDLINE=boot=live
declare -r LIVE_USERNAME=mindeb
declare -r LIVE_PASSWORD=mindeb
