#settings
PROJECTS_PAGE_URL = 'http://localhost:3000/projects'

#locators
PROJECTS_ADD_BUTTON = '//*[@id="Add"]'
PROJECTS_INPUT_PESQUISAR = '//*[@id="input-search-data-grid"]'
PROJECTS_BUTTON_APAGAR = '//*[@class="flex w-[2rem] gap-4"]//img[@alt="apagar"]'

PROJECTS_TABLE_EDIT_BUTTON = '//*[@id="barrosTomeSeuId0"]'
PROJECTS_TABLE_REMOVE_BUTTON = '//*[@id="humbertoTomeSeuId0"]'

PROJECTS_TABLE_NOME = '//tbody//tr[1]/td[@scope="row"][1]'
PROJECTS_TABLE_ABREV = '//tbody//tr[1]/td[@scope="row"][2]'
PROJECTS_TABLE_DATASTART = '//tbody//tr[1]/td[@scope="row"][3]'
PROJECTS_TABLE_DATAEND = '//tbody//tr[1]/td[@scope="row"][4]'
PROJECTS_TABLE_STATUS = '//tbody//tr[1]/td[@scope="row"][5]'
PROJECTS_TABLE_COORD = '//tbody//tr[1]/td[@scope="row"][6]'

PROJECTS_CLOSE_TOAST = '//*[@class="Toastify__close-button Toastify__close-button--colored"]'