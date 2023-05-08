from selenium.webdriver import Firefox, FirefoxOptions
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support.color import Color
from selenium.webdriver.support import expected_conditions as ec
from time import sleep

class Imp():
    URL = "http://localhost:3000/home"