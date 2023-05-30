#settings
ADD_PAGE_URL = 'http://localhost:3000/machines/add'

#locators
ADD_PATRIMONIO_INPUT = '//*[@id="patrimony-textfield"]'
ADD_SALA_SELECTOR = '//*[@id="room-name-textfield"]'
ADD_ESPACO_SELECTOR = '//*[@id="space-name-textfield"]'

#o li final (li[x] | x = numero da sala), quando houver mais salas/espaços
ADD_SALA_SELECTOR_SELECT = '/html/body/div[3]/div/div[3]/form/div/div[2]/div[1]/ul/li[1]'

#será setado 2 espaços no testcase para adicionar 2 computadores um em cada espaco
ADD_ESPACO_SELECTOR_SELECT1 = '/html/body/div[3]/div/div[3]/form/div/div[2]/div[2]/ul/li[1]'
ADD_ESPACO_SELECTOR_SELECT2 = '/html/body/div[3]/div/div[3]/form/div/div[2]/div[2]/ul/li[2]'

ADD_MAQUINA_INPUT = '//*[@id="abbreviation-textfield"]'
ADD_DESCRICAO_INPUT = '//*[@id="description-textfield"]'

ADD_BUTTON_CANCEL = '//*[@id="cancel-bnt"]'
ADD_BUTTON_SALVAR = '//*[@id="save-bnt"]'