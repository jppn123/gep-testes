#settings
USER_PAGE_URL = 'http://localhost:3000/users'

#locators
USER_ADD_BUTTON = '//*[@id="Add"]'
USER_INPUT_PESQUISAR = '//*[@id="input-search-data-grid"]'

#o 0 muda dependendo da quantidade de salas criadas
USER_TABLE_EDIT_BUTTON = '//*[@id="barrosTomeSeuId0"]' 
USER_TABLE_REMOVE_BUTTON = '//*[@id="humbertoTomeSeuId0"]' 

#o x em tr[x] muda dependendo da quantidade de salas criadas
USER_TABLE_NOME = '//tbody//tr[1]/td[@scope="row"][1]' 
USER_TABLE_TYPE = '//tbody//tr[1]/td[@scope="row"][2]'
USER_TABLE_EMAIL = '//tbody//tr[1]/td[@scope="row"][3]'
USER_TABLE_ATIVO = '//tbody//tr[1]/td[@scope="row"][4]'
USER_TABLE_FONE = '//tbody//tr[1]/td[@scope="row"][5]'
USER_TABLE_MATRICULA = '//tbody//tr[1]/td[@scope="row"][6]'