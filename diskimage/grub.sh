#!/bin/bash
if [ $# -ne 2 ]; then
	echo ""
	echo "Step 1. sudo gparted and unmount all partitions on target device."
	echo "Step 2. sudo ./grub.sh (input device, ex. /dev/sdx) (output file, ex. backup.img)."
	echo ""
	exit
fi
echo ============ danger zone ============
echo dd if=$1 of=$2
echo =====================================
read -p "Did you unmount all partitions ? [y/n]" ANS
if [ "$ANS" = "y" ]; then
	read -p "Are you sure you wish to continue ? [y/n]" ANS
	if [ "$ANS" = "y" ]; then
		dd if=$1 of=$2
		./pishrink.sh $2
	fi
fi

