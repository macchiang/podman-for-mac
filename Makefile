build-docker-image:
	docker build . -t macchiang/podman:latest
push-docker-image:
	docker push macchiang/podman:latest
build-linuxkit-image:
	linuxkit build -format iso-efi linuxkit/podman-for-mac.yaml
run-linuxkit-vm:
	linuxkit run hyperkit -networking=vpnkit -vsock-ports=2376 -disk size=4096M  -iso -uefi linuxkit/podman-for-mac-efi
