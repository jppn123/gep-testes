from imports import *

class Main(Imp):
    def __init__(self):
        self.driver = Firefox()
        self.driver.get(self.URL)
        
        
