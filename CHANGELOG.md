# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

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

## [0.0.1] - 2024-01-02

### Added

- `mindeb-build`.

[unreleased]: https://github.com/sakkke/mindeb/compare/v0.0.1...HEAD
[0.0.1]: https://github.com/sakkke/mindeb/releases/tag/v0.0.1
