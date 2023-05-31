#settings
ROOM_PAGE_URL = 'http://localhost:3000/rooms'

#locators
ROOM_ADD_BUTTON = '//*[@id="Add"]'
ROOM_INPUT_PESQUISAR = '//*[@id="input-search-data-grid"]'
ROOM_BUTTON_APAGAR = '//*[@class="flex w-[2rem] gap-4"]//img[@alt="apagar"]'

#o 0 muda dependendo da quantidade de salas criadas
ROOM_TABLE_EDIT_BUTTON = '//*[@id="barrosTomeSeuId0"]' 
ROOM_TABLE_REMOVE_BUTTON = '//*[@id="humbertoTomeSeuId0"]' 
ROOM_TABLE_EDIT_BUTTON1 = '//*[@id="barrosTomeSeuId1"]' 

#o x em tr[x] muda dependendo da quantidade de salas criadas
ROOM_TABLE_SIGLA = '//tbody//tr[1]/td[@scope="row"][1]' 
ROOM_TABLE_NOME = '//tbody//tr[1]/td[@scope="row"][2]'
ROOM_TABLE_DESC = '//tbody//tr[1]/td[@scope="row"][3]'
ROOM_TABLE_NUMBER = '/html/body/div[3]/div/div[3]/nav/div/div/div/span/span[2]'

ROOM_CLOSE_TOAST = 'Toastify__close-button Toastify__close-button--colored'
ROOM_TRY_REMOVE_TOAST_TEXT = '/html/body/div[1]/div/div/div[1]/div[2]'