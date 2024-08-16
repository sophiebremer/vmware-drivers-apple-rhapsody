VMware-Drivers for Apple Rhapsody x86 DR2
=========================================

This repository contains unofficial VMware-drivers for Apple Rhapsody (TitanU1
x86 Developer Release 2). These drivers are extracted from
[Michael Richmond's blog][] via the [Web Archive][].



Installation
------------

You will need to create a virtual machine in VMware according to the following
specifications:

* 1 CPU core
* RAM, maximum 128 MB 
* Floppy Disk, maximum 1.44 MB
* Hard Disk (IDE), maximum 2 GB
* CD/DVD (IDE)
* Mouse
* optional Network Adapter
* optional Sound Card
* no Camera
* no Printer
* no USB controller

During installation you will be asked to load additional drivers after
connecting the original driver floppy image. You have to load:

* Primary/Secondary(Dual) EIDE/ATAPI Device Controller (v5.01)

Continue with installation until system restart. Here intercept the boot process
by entering `-s`. You have to connect the [driver CD image][] and copy drivers
to the virtual hard disk.

``` Shell
fsck
mount -w /
mkdir /mnt
mount -t cd9660 /dev/sd0a /mnt
cd /mnt
./install.command
cd ..
umount /mnt
rmdir /mnt
```

Restart and continue with installation.



Original File List
------------------

The following file list is created to be referenced by web search engines:

* SoundBlaster16PCI-1.0.I.bs.tar.gz
* VMMouse-1.1.I.bs.tar.gz
* VMWareFB.config.compressed.Z
* VMXNet-1.1.I.bs.tar.gz



<!-- Links -->

[driver CD image]: ./vm-drivers.iso
[Michael Richmond's blog]: https://michaelrichmond.net/blog/2007/06/09/rhapsody-dr2/
[Web Archive]: https://web.archive.org/web/20240520081728/https://michaelrichmond.net/blog/2007/06/09/rhapsody-dr2/
