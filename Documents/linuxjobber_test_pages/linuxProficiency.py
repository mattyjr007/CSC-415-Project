from selenium import webdriver
from selenium.webdriver.common import keys
from selenium.webdriver.support.ui import WebDriverWait
import time

driver = webdriver.Chrome("C:/Users/Oluwafemi/Documents/sir akej sys/chromedriver.exe")

#driver = webdriver.Chrome("C:/Users/USER/Downloads/chromedriver.exe")
driver.get("http://ci.linuxjobber.com")

driver.implicitly_wait(10)

userName =driver.find_element_by_css_selector("a.b-n").click()

time.sleep(2)

select = driver.find_element_by_xpath("//a[@href='http://ci.linuxjobber.com/tutorials/proficiency_in_linux_lectures']")
select.click()

userName =driver.find_element_by_link_text("Load More Topics").click()

time.sleep(2)

click = driver.find_element_by_xpath("//a[@href='/tutorials/lab_video/11/2']")
click.click()

time.sleep(2)

userName = driver.find_element_by_id("UserUsername")
userName.send_keys("sirbossakej")

time.sleep(2)

password = driver.find_element_by_id("UserPassword")
password.send_keys("sirbossakej")

sign =  driver.find_element_by_xpath("//*[@type='submit']")
sign.click()

time.sleep(1)

select = driver.find_element_by_xpath("//a[@href='/tutorials/proficiency_in_linux_lectures']")
select.click()

time.sleep(2)

elect = driver.find_element_by_xpath("//a[@href='/tutorials/lab_video/11/2']")
elect.click()