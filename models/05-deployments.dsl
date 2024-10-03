qa = deploymentEnvironment "QA" {
	deploymentNode "QA" {
		containerInstance ss.wa
		containerInstance ss.db
	}
}