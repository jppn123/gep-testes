#settings
MACHINES_PAGE_URL = 'http://localhost:3000/machines'

#locators
MACHINES_ADD_BUTTON = '//*[@id="Add"]'
MACHINES_INPUT_PESQUISAR = '//*[@id="input-search-data-grid"]'

#o 0 muda dependendo da quantidade de salas criadas
MACHINES_TABLE_EDIT_BUTTON = '//*[@id="barrosTomeSeuId0"]' 
MACHINES_TABLE_REMOVE_BUTTON = '//*[@id="humbertoTomeSeuId0"]' 

#o x em tr[x] muda dependendo da quantidade de salas criadas
MACHINES_TABLE_MAQUINA = '//tbody//tr[1]/td[@scope="row"][1]' 
MACHINES_TABLE_SALA = '//tbody//tr[1]/td[@scope="row"][2]'
MACHINES_TABLE_ESPACO = '//tbody//tr[1]/td[@scope="row"][3]'
MACHINES_TABLE_PATRIMONIO = '//tbody//tr[1]/td[@scope="row"][4]'
MACHINES_TABLE_DESC = '//tbody//tr[1]/td[@scope="row"][5]'

