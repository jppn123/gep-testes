from gepClasses import *

teste = Main()
teste.driver.implicitly_wait(10)

def get_element(by, element):
    sleep(2)
    return teste.driver.find_element(by, element)

get_element(By.XPATH, '//a[@href="/computers"]').click()
get_element(By.ID, 'Add').click()

# testar mensagens de erro do form
def form_sbmt():
    get_element(By.XPATH, '//form').submit()
    spans = teste.driver.find_elements(By.XPATH, '//form//span')
    for x in range(2):
        del spans[-1]
    return spans

inputs = teste.driver.find_elements(By.XPATH, '//form//input')
spans = form_sbmt()
assert len(spans) == 4, f'tamanho da lista errado, verdadeiro tamanho {len(spans)}'

inputs[0].send_keys("12345")
spans = form_sbmt()
assert len(spans) == 3, f'tamanho da lista errado, verdadeiro tamanho {len(spans)}'

inputs[1].send_keys("maquina1")
spans = form_sbmt()
assert len(spans) == 2, f'tamanho da lista errado, verdadeiro tamanho {len(spans)}'

inputs[2].send_keys("máquina 1 destinada ao laboratório")
spans = form_sbmt()
assert len(spans) == 1, f'tamanho da lista errado, verdadeiro tamanho {len(spans)}'

