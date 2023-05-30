#settings
#tem que ser um location contains
EDIT_PAGE_URL = 'http://localhost:3000/machines/edit'

#locators
EDIT_PATRIMONIO_INPUT = '//*[@id="patrimony-input"]'
EDIT_SALA_SELECTOR = '//*[@id="room-name-textfield"]'
EDIT_ESPACO_SELECTOR = '//*[@id="space-input"]'

#o li final (li[x] | x = numero da sala), quando houver mais salas/espaços
EDIT_SALA_SELECTOR_SELECT = '/html/body/div[3]/div/div[3]/div/form/div/div[2]/div[1]/ul/li[1]'

#será setado 2 espaços no testcase para adicionar 2 computadores um em cada espaco
EDIT_ESPACO_SELECTOR_SELECT1 = '/html/body/div[3]/div/div[3]/div/form/div/div[2]/div[2]/ul/li[1]'
EDIT_ESPACO_SELECTOR_SELECT2 = '/html/body/div[3]/div/div[3]/div/form/div/div[2]/div[2]/ul/li[2]'

EDIT_MAQUINA_INPUT = '//*[@id="abbreviation-input"]'
EDIT_DESCRICAO_INPUT = '//*[@id="description-input"]'

EDIT_BUTTON_CANCEL = '//*[@id="cancel-btn"]'
EDIT_BUTTON_SALVAR = '//*[@id="save-btn"]'