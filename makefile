.PHONY: verify
verify:
	docker --version
	kind --version
	kubectl version --client
	helm version
	echo "Training Environment successfully verified"
