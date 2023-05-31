#settings
#tem que ser um location contains
EDIT_PAGE_URL = 'http://localhost:3000/rooms/edit'

#locators
#criar sala
EDIT_NAME_INPUT = '//*[@id="name-room-textfield"]'
EDIT_SIGLA_INPUT = '//*[@id="abbreviation-room-textfield"]'
EDIT_OBS_INPUT = '//*[@id="description-room-textfield"]'

EDIT_BAIA_BUTTON = '//*[@id="add-space-btn"]'
EDIT_BUTTON_CANCEL = '//*[@id="cancel-bnt"]'
EDIT_BUTTON_SALVAR = '//*[@id="save-bnt"]'

#baia criada, essa configuração é para 2 espaços criados dentro da sala
#o 0 muda dependendo da quantidade de baias criadas
EDIT_APAGAR_BAIA1 = '//*[@id="trash-icon-0"]'    
EDIT_BAIA_ESPACO1 = '//*[@id="space-room-textfield-0"]'
EDIT_BAIA_SIGLA1 = '//*[@id="abbreviation-room-textfield-0"]'
EDIT_BAIA_OBS1 = '//*[@id="observation-room-textfield-0"]'

EDIT_APAGAR_BAIA2 = '//*[@id="trash-icon-1"]' 
EDIT_BAIA_ESPACO2 = '//*[@id="space-room-textfield-1"]'
EDIT_BAIA_SIGLA2 = '//*[@id="abbreviation-room-textfield-1"]'
EDIT_BAIA_OBS2 = '//*[@id="observation-room-textfield-1"]'