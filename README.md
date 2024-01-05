![mindeb](https://socialify.git.ci/sakkke/mindeb/image?description=1&forks=1&issues=1&name=1&owner=1&pattern=Plus&pulls=1&stargazers=1&theme=Auto)

[Changelog](./CHANGELOG.md)

## Features

- **Minimal**: The ISO image is about 400MB. This size is half of Archiso.
- **Easy**: Installation is just copying the system files. So installable offline
  as well.
- **Compatible**: System follows upstream Debian. Basic firmware and basic
  middlewares are included by default.

## Installation guide

### Pre-installation

#### Login

Login with the following information:

- **Username**: `mindeb`
- **Password**: `mindeb`

#### Console keyboard layout

List available keyboard layouts:

```sh
ls /usr/share/keymaps/*
```

Set the keyboard layout:

```sh
loadkeys {keymap}
```

- **`{keymap}` example**: `jp106`

#### Run shell as root

```sh
sudo -s
```

#### List disks information

```sh
lsblk
```

#### Partition the disks

Optionally, destroy data structures:

```sh
sgdisk -Z '{disk}'
```

Partition the disks:

```sh
cgdisk '{disk}'
```

##### Partitions requirements

1. The disk must have the EFI system partition and the root partition.
  1. The root partition must have the partition name `mindeb`.

##### Partitions example

1. EFI system partition
  - **First sector**: default
  - **Size in sectors**: `300M`
  - **Hex code or GUID**: `ef00`
  - **Partition name**: default
1. Root partition
  - **First sector**: default
  - **Size in sectors**: default
  - **Hex code or GUID**: default
  - **Partition name**: `mindeb`

#### Format the partitions

```sh
mkfs.fat -F 32 '{EFI system partition}'
mkfs.ext4 '{Root partition}'
```

- **`{EFI system partition}` example**: `/dev/sda1`
- **`{Root partion}` example**: `/dev/sda2`

#### Mount the file systems

Mount the root partition to `/mnt`:

```sh
mount '{Root partition}' /mnt
```

Mount the EFI system partition to `/mnt/boot/efi`:

```sh
mount --mkdir '{EFI system partition}' /mnt/boot/efi
```

### Installation

#### Install the system files

```sh
cp -Ta /run/live/rootfs/10-main.squashfs /mnt
```

- `/run/live/rootfs/10-main.squashfs` is the entry point for the system files
  to be copied.

### Configure the system

#### `fstab`

```sh
genfstab -U /mnt >> /mnt/etc/fstab
```

#### `chroot`

```sh
arch-chroot /mnt
```

#### Time

Set the timezone:

```sh
ln -fs '/usr/share/zoneinfo/{timezone}' /etc/localtime
```

- **`{timezone}` example**: `UTC`

Generate `/etc/adjtime`:

```sh
hwclock --systohc
```

#### Localization

Edit `/etc/locale.gen` and uncomment needed locales.

```
{locale}
```

- **`{locale}` example**: `en_US.UTF-8 UTF-8`

Generate the locales:

```sh
locale-gen
```

Update the default locale:

```sh
update-locale LANG='{lang}'
```

- **`{lang}` example**: `en_US.UTF-8`

Set the keyboard layout:

```sh
dpkg-reconfigure console-data
```

#### Network configuration

Edit `/etc/hostname`.

```
{hostname}
```

- **`{hostname}` example**: `mindeb`

#### User

Add a user:

```sh
adduser '{username}'
```

- **`{username}` example**: `alice`

Add a user to `sudo` group (recommended):

```sh
adduser '{username}' sudo
```

### Reboot

Exit the new system:

```sh
exit
```

Restart the machine:

```sh
reboot
```

## Build

```sh
bin/mindeb-build
```

### Build requirements

**OS**: Debian-based Linux distribution
**Commands**:

- `mmdebstrap`
- `arch-chroot`
- `mkfs.fat`
- `mksquashfs`
- `xorriso`
- `sudo` (optional)

#### Build requirements installation

```sh
sudo apt -y install mmdebstrap arch-install-scripts dosfstools squashfs-tools \
  xorriso sudo
```

### Test the ISO image

```sh
bin/mindeb-run
```

#### Test requirements

- `qemu-img`
- `qemu-system-x86_64`

##### Test requirements installation

```sh
sudo apt -y install qemu-utils qemu-system-x86
```

## License

[MIT](./LICENSE)
