#settings
ROOM_ADD_PAGE_URL = 'http://localhost:3000/rooms/add'

#locators
#criar sala
ROOM_ADD_INPUT_NAME = '//*[@id="name-room-textfield"]'
ROOM_ADD_INPUT_SIGLA = '//*[@id="abbreviation-room-textfield"]'
ROOM_ADD_INPUT_OBS = '//*[@id="description-room-textfield"]'

ROOM_ADD_BAIA_BUTTON = '//*[@id="add-space-btn"]'
ROOM_ADD_BUTTON_CANCEL = '//*[@id="cancel-bnt"]'
ROOM_ADD_BUTTON_SALVAR = '//*[@id="save-bnt"]'

#baia criada, essa configuração é para 2 espaços criados dentro da sala
#o 0 muda dependendo da quantidade de baias criadas   
ROOM_ADD_APAGAR_BAIA1 = '//*[@id="trash-icon-0"]'
ROOM_ADD_BAIA_ESPACO1 = '//*[@id="space-room-textfield-0"]'
ROOM_ADD_BAIA_SIGLA1 = '//*[@id="abbreviation-room-textfield-0"]'
ROOM_ADD_BAIA_OBS1 = '//*[@id="observation-room-textfield-0"]'

ROOM_ADD_BAIA_ESPACO2 = '//*[@id="space-room-textfield-1"]'
ROOM_ADD_BAIA_SIGLA2 = '//*[@id="abbreviation-room-textfield-1"]'
ROOM_ADD_BAIA_OBS2 = '//*[@id="observation-room-textfield-1"]'

ROOM_ADD_APAGAR_BAIA3 = '//*[@id="trash-icon-2"]' 
ROOM_ADD_BAIA_OBS3 = '//*[@id="observation-room-textfield-2"]'