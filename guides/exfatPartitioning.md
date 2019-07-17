# Partition external drive with exfat

Find your partittion with:
```
sudo fdisk -l
```

Use the `gdisk` program.
It is important to have:
* Partition Table: GPT
* Partition Type: Microsoft Basic Data (gdisk type: 0700)
* Filesystem: exfat (of course)


In gdisk (taken from https://matthew.komputerwiz.net/2015/12/13/formatting-universal-drive.html):
```
% sudo gdisk /dev/sdX
GPT fdisk (gdisk) version 0.8.8

Partition table scan:
  MBR: not present
  BSD: not present
  APM: not present
  GPT: not present

Creating new GPT entries.

Command (? for help): o
This option deletes all partitions and creates a new protective MBR.
Proceed? (Y/N): Y

Command (? for help): n
Partition number (1-128, default 1):
First sector (34-16326462, default = 2048) or {+-}size{KMGTP}:
Last sector (2048-16326462, default = 16326462) or {+-}size{KMGTP}:
Current type is 'Linux filesystem'
Hex code or GUID (L to show codes, Enter = 8300): 0700
Changed type of partition to 'Microsoft basic data'

Command (? for help): w

Final checks complete. About to write GPT data. THIS WILL OVERWRITE EXISTING
PARTITIONS!!

Do you want to proceed? (Y/N): Y
OK; writing new GUID partition table (GPT) to /dev/sdX.
Warning: The kernel is still using the old partition table.
The new table will be used at the next reboot.
The operation has completed successfully.
```

Then make the filesystem:
```
sudo mkfs.exfat -n filesystem-name /dev/sdX1
```
