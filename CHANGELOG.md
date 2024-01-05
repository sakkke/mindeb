# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed

- Update `apt_get_install_rootfs` and `chroot_sync` functions.

## [v0.0.3] - 2024-01-05

### Added

- `systemd-timesyncd`.
- `screen`.
- `htop`.
- `pciutils`.
- `ifupdown`.
- `netcat-openbsd`.
- `firewalld`.
- Component `non-free-firmware`.
- `openssh-server`.
- `libarchive-tools`.

### Changed

- `mksquashfs` block size from 128K to 1M.
- Added `-always-use-fragments` to `mksquashfs`.
- `linux-firmware-free` to `linux-firmware`.

## [v0.0.2] - 2024-01-04

### Added

- Live user.
- `sudo` in live.
- Live user to group `sudo`.
- Default hostname.
- `boot.efi` in main.
- `gdisk` in live.
- `dosfstools` in live.
- Fitted `esp.img`.
- `arch-install-scripts` in live.
- `apt-utils` as a required package.
- `zstd`.
- `firmware-linux-free`.
- `network-manager`, `dnsmasq-base`, `libpam-systemd`, `modemmanager`, `ppp`,
  `wireless-regdb`, and `wpasupplicant`.
- `nano` and `vim` in live.
- `sudo`.
- `nano` and `vim`.
- `dialog`.
- `gdisk`.
- `dosfstools`.

### Fixed

- Template paths.

### Changed

- Disk size to `2G` in `mindeb-run`.
- Boot order in `mindeb-run`.
- Improved VM performance in `mindeb-run`.

## [0.0.1] - 2024-01-02

### Added

- `mindeb-build`.

[unreleased]: https://github.com/sakkke/mindeb/compare/v0.0.3...HEAD
[0.0.3]: https://github.com/sakkke/mindeb/compare/v0.0.2...v0.0.3
[0.0.2]: https://github.com/sakkke/mindeb/compare/v0.0.1...v0.0.2
[0.0.1]: https://github.com/sakkke/mindeb/releases/tag/v0.0.1
