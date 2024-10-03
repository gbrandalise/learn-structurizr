ss = softwareSystem "Software" {
	wa = container "Applicação Web" {
		loginView = component "Tela Login" "" "Angular"
		loginService = component "Service Login" "" "Angular"
		loginApi = component "Api Login" "" "Spring"
	}
	db = container "Banco de Dados" {
		tags "Database"
	}
}