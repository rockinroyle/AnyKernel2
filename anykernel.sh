# AnyKernel2 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() {
kernel.string=
do.devicecheck=
do.modules=
do.cleanup=
do.cleanuponabort=
device.name1=
device.name2=
device.name3=
device.name4=
device.name5=
} # end properties

# shell variables
block=


## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. /tmp/anykernel/tools/ak2-core.sh;


## AnyKernel permissions
# set permissions for included ramdisk files
chmod -R 755 $ramdisk


## AnyKernel install
dump_boot;

# begin ramdisk changes



# end ramdisk changes

write_boot;

## end install

