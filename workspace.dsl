workspace {
	
	!const ORGANISATION_NAME "Organização"
	!const GROUP_NAME "Grupo"
	
	!identifiers hierarchical
	
	configuration {
		// landscape, none
		scope softwaresystem
	}
	
	properties {
		// warning info ignore
		structurizr.inspection.* error
		structurizr.dslEditor false
	}
	
	model {
		group "${ORGANISATION_NAME} - ${GROUP_NAME}" {
			u = person "Usuário"
		}
		ss = softwareSystem "Software" {
			wa = container "Applicação Web"
			db = container "Banco de Dados" {
				tags "Database"
			}
		}
		
		rel_u_wa = u -> ss.wa "Usa"
		rel_wa_db = ss.wa -> ss.db "Lê dados"
	}
	
	views {
		// theme default
		
		systemContext ss "Diagrama1" {
			include *
			autolayout lr
		}
		
		container ss "Diagrama2" {
			include u ss.wa ss.db
			autolayout lr
		}
		
		/*
		container ss "Diagram3" {
			include "->wa->"
			autolayout lr
		}
		
		container ss "Diagram4" {
			include "->element.type==container->"
			autolayout lr
		}
		
		container ss "Diagram5" {
			include "->element.parent==ss->"
			autolayout lr
		}
		*/
		
		styles {
			element "Element" {
				color black
			}
			
			element "Software" {
				background #2D882D
			}
			
			element "Person" {
				color white
				background #111166
				shape person
			}
			
			element "Container" {
				color white
				background #55aa55
			}
			
			element "Database" {
				color black
				background #dddddd
				shape cylinder
			}
		}
	}
	
}
