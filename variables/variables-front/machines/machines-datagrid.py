#settings
MACHINE_PAGE_URL = 'http://localhost:3000/machines'

#locators
MACHINE_ADD_BUTTON = '//*[@id="Add"]'
MACHINE_INPUT_PESQUISAR = '//*[@id="input-search-data-grid"]'
MACHINE_BUTTON_APAGAR = '//*[@class="flex w-[2rem] gap-4"]//img[@alt="apagar"]'

#o 0 muda dependendo da quantidade de salas criadas
MACHINE_TABLE_EDIT_BUTTON = '//*[@id="barrosTomeSeuId0"]' 
MACHINE_TABLE_REMOVE_BUTTON = '//*[@id="humbertoTomeSeuId0"]' 

#o x em tr[x] muda dependendo da quantidade de salas criadas
MACHINE_TABLE_MAQUINA = '//tbody//tr[1]/td[@scope="row"][1]' 
MACHINE_TABLE_SALA = '//tbody//tr[1]/td[@scope="row"][2]'
MACHINE_TABLE_ESPACO = '//tbody//tr[1]/td[@scope="row"][3]'
MACHINE_TABLE_PATRIMONIO = '//tbody//tr[1]/td[@scope="row"][4]'
MACHINE_TABLE_DESC = '//tbody//tr[1]/td[@scope="row"][5]'

MACHINE_CLOSE_TOAST = '//*[@class="Toastify__close-button Toastify__close-button--colored"]'
