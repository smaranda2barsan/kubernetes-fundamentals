.PHONY: verify
verify:
	if [ "$(id -u)" -ne 0 ]; then echo "Please run as root." >&2; exit 1; fi
	docker --version
	kind --version
	kubectl version --client
	helm version
	echo "Training Environment successfully verified"
