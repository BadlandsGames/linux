make -j4 zImage modules dtbs

mkdir finished
mkdir finished/boot
mkdir finished/boot/overlays

sudo cp arch/arm64/boot/zImage /finished/boot/kernel.img
sudo cp arch/arm64/boot/dts/*.dtb /finished/boot/
sudo cp arch/arm64/boot/dts/overlays/*.dtb* /finished/boot/overlays/
sudo cp arch/arm64/boot/dts/overlays/README /finished/boot/overlays/

wget -o /finished/boot/bootcode.bin https://github.com/raspberrypi/firmware/blob/master/boot/bootcode.bin

wget -o /finished/boot/fixup.dat https://github.com/raspberrypi/firmware/blob/master/boot/fixup.dat
wget -o /finished/boot/fixup4.dat https://github.com/raspberrypi/firmware/blob/master/boot/fixup4.dat

wget -o /finished/boot/start.elf https://github.com/raspberrypi/firmware/blob/master/boot/start.elf
wget -o /finished/boot/start4.elf https://github.com/raspberrypi/firmware/blob/master/boot/start4.elf