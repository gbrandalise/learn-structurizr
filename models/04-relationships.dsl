rel_u_wa = u -> ss.wa "Usa"
rel_wa_db = ss.wa -> ss.db "Lê dados"

rel_loginView_loginService = ss.wa.loginView -> ss.wa.loginService "Chama"
rel_loginService_loginApi = ss.wa.loginService -> ss.wa.loginApi "Consome"