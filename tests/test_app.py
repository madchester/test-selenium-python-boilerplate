import unittest
from selenium.webdriver.support.wait import WebDriverWait
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC

class SampleTest(unittest.TestCase):
    def test_services_launch(self):
        firefox_options = webdriver.FirefoxOptions()
        self.selenium=webdriver.Remote(command_executor="http://localhost:4445/wd/hub", 
                                options=firefox_options)
        self.selenium.maximize_window()

        '''Executing the test'''
        self.selenium.get("") # Supply URL
        # Check and wait for the page to load
        WebDriverWait(self.selenium, 10).until(
            EC.presence_of_element_located((By.CLASS_NAME, "body-wrap"))
        )
        # Find the element html h1 tag
        header = self.selenium.find_element(By.TAG_NAME, "h1")
        print("Execution completed :: test_services_launch")
        # Check the page header if same text on the test
        # Should show the text
        self.assertIn(header.text, "") # Supply the assert test
        self.selenium.quit()