#settings
#tem que ser um location contains
ROOM_EDIT_PAGE_URL = 'http://localhost:3000/rooms/edit'

#locators
#criar sala
ROOM_EDIT_NAME_INPUT = '//*[@id="name-room-textfield"]'
ROOM_EDIT_SIGLA_INPUT = '//*[@id="abbreviation-room-textfield"]'
ROOM_EDIT_OBS_INPUT = '//*[@id="description-room-textfield"]'

ROOM_EDIT_BAIA_BUTTON = '//*[@id="add-space-btn"]'
ROOM_EDIT_BUTTON_CANCEL = '//*[@id="cancel-bnt"]'
ROOM_EDIT_BUTTON_SALVAR = '//*[@id="save-bnt"]'

#baia criada, essa configuração é para 2 espaços criados dentro da sala
#o 0 muda dependendo da quantidade de baias criadas
ROOM_EDIT_BAIA_ESPACO = '//*[@id="space-room-textfield-0"]'
ROOM_EDIT_BAIA_SIGLA = '//*[@id="abbreviation-room-textfield-0"]'
ROOM_EDIT_BAIA_OBS = '//*[@id="observation-room-textfield-0"]'

ROOM_EDIT_APAGAR_BAIA1 = '//*[@id="trash-icon-0"]'
ROOM_EDIT_APAGAR_BAIA2 = '//*[@id="trash-icon-1"]'