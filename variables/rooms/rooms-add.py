#settings
ADD_PAGE_URL = 'http://localhost:3000/rooms/add'

#locators
#criar sala
ADD_INPUT_NAME = '//*[@id="name-room-textfield"]'
ADD_INPUT_SIGLA = '//*[@id="abbreviation-room-textfield"]'
ADD_INPUT_OBS = '//*[@id="description-room-textfield"]'

ADD_BAIA_BUTTON = '//*[@id="add-space-btn"]'
ADD_BUTTON_CANCEL = '//*[@id="cancel-bnt"]'
ADD_BUTTON_SALVAR = '//*[@id="save-bnt"]'

#baia criada, essa configuração é para 2 espaços criados dentro da sala
#o 0 muda dependendo da quantidade de baias criadas
ADD_APAGAR_BAIA1 = '//*[@id="trash-icon-0"]'    
ADD_BAIA_ESPACO1 = '//*[@id="space-room-textfield-0"]'
ADD_BAIA_SIGLA1 = '//*[@id="abbreviation-room-textfield-0"]'
ADD_BAIA_OBS1 = '//*[@id="observation-room-textfield-0"]'

ADD_APAGAR_BAIA2 = '//*[@id="trash-icon-1"]' 
ADD_BAIA_ESPACO2 = '//*[@id="space-room-textfield-1"]'
ADD_BAIA_SIGLA2 = '//*[@id="abbreviation-room-textfield-1"]'
ADD_BAIA_OBS2 = '//*[@id="observation-room-textfield-1"]'