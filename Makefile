
init:
	sudo snap remove snap-test
	rm -rf squashfs-root/
	snapcraft snap
	unsquashfs snap-test_0.1_arm64.snap
	sudo snap try

destructive:
	sudo snap remove snap-test
	rm -rf squashfs-root/
	snapcraft snap --destructive-mode
	unsquashfs snap-test_0.1_arm64.snap
	sudo snap try
