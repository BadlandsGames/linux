make -j4 zImage modules dtbs

mkdir finished
mkdir finished/boot
mkdir finished/boot/overlays

sudo cp arch/arm/boot/zImage /finished/boot/kernel.img
sudo cp arch/arm/boot/dts/*.dtb /finished/boot/
sudo cp arch/arm/boot/dts/overlays/*.dtb* /finished/boot/overlays/
sudo cp arch/arm/boot/dts/overlays/README /finished/boot/overlays/

wget -o /finished/boot/bootcode.bin https://github.com/raspberrypi/firmware/blob/master/boot/bootcode.bin