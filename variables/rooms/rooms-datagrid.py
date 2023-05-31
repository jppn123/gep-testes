#settings
ROOM_PAGE_URL = 'http://localhost:3000/rooms'

#locators
ROOM_ADD_BUTTON = '//*[@id="Add"]'
ROOM_INPUT_PESQUISAR = '//*[@id="input-search-data-grid"]'

#o 0 muda dependendo da quantidade de salas criadas
ROOM_TABLE_EDIT_BUTTON = '//*[@id="barrosTomeSeuId0"]' 
ROOM_TABLE_REMOVE_BUTTON = '//*[@id="humbertoTomeSeuId0"]' 

#o x em tr[x] muda dependendo da quantidade de salas criadas
ROOM_TABLE_SIGLA = '//tbody//tr[1]/td[@scope="row"][1]' 
ROOM_TABLE_NOME = '//tbody//tr[1]/td[@scope="row"][2]'
ROOM_TABLE_DESC = '//tbody//tr[1]/td[@scope="row"][3]'

