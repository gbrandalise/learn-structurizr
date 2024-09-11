ss = softwareSystem "Software" {
	wa = container "Applicação Web"
	db = container "Banco de Dados" {
		tags "Database"
	}
}