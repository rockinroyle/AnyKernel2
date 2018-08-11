# AnyKernel2 Ramdisk Mod Script
# osm0sis @ xda-developers
# NoobK tweaks by rockinroyle @ xda-developers

# begin properties
properties() {
kernel.string=NoobK-7.1.2
do.devicecheck=1
do.initd=0
do.modules=0
do.cleanup=1
device.name1=shamu
device.name2=Shamu
device.name3=
device.name4=
device.name5=
'; } # end properties

# shell variables
block=/dev/block/platform/msm_sdcc.1/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;


## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. /tmp/anykernel/tools/ak2-core.sh;


## AnyKernel file attributes
# set permissions/ownership for included ramdisk files
chmod -R 750 $ramdisk/*;
chmod -R 755 $ramdisk/sbin;
chown -R root:root $ramdisk/*;


## AnyKernel install
dump_boot;

# begin ramdisk changes

# init.noob.rc
insert_line init.shamu.rc "init.noob.rc" after "import init.shamu.diag.rc" "init.noob.rc"

replace_section init.shamu.rc "service mpdecision" "disabled" "#service mpdecision /system/bin/mpdecision --avg_comp\n#   class main\n#   user root\n#   group root readproc\n#    writepid /dev/cpuset/system-background/tasks\n#   disabled";


# end ramdisk changes

write_boot;

## end install

