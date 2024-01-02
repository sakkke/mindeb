declare -r NAME=mindeb
declare -r VERSION=0.0.1

declare -r ARCH="$(dpkg --print-architecture)"

declare -r DEBIAN_SUITE=bookworm
declare -r KERNEL_VERSION=6.1.0-16
declare -r KERNEL_CMDLINE='root=PARTLABEL=mindeb rw'

declare -r PACKAGES=(
	linux-image-"$KERNEL_VERSION"-"$ARCH"
	systemd
	systemd-boot-efi
	systemd-sysv
)

declare -r LIVE_PACKAGES=(
	gdisk
	live-boot
	sudo
)

declare -r LIVE_KERNEL_CMDLINE=boot=live
declare -r LIVE_USERNAME=mindeb
declare -r LIVE_PASSWORD=mindeb
