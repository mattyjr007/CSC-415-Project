from selenium import webdriver
from selenium.webdriver.common import keys
from selenium.webdriver.support.ui import Select
from selenium.webdriver.support.select import Select
from selenium.webdriver.support.ui import WebDriverWait
import time


#driver = webdriver.Chrome("C:/Users/USER/Downloads/chromedriver.exe"):FOR LOUIS SYSTEM
driver = webdriver.Chrome("C:/Users/Oluwafemi/Documents/sir akej sys/chromedriver.exe")


driver.get("http://ci.linuxjobber.com")

driver.implicitly_wait(15)

click_attempt = driver.find_element_by_xpath("//a[@href='/users/login']")
click_attempt.click()

time.sleep(1)

userName = driver.find_element_by_id("UserUsername")
userName.send_keys("sirbossakej")

time.sleep(1)

password = driver.find_element_by_id("UserPassword")
password.send_keys("dkingstonboss")

sign =  driver.find_element_by_xpath("//*[@type='submit']")
sign.click()

#Name =driver.find_element_by_link_text("sirbossakej").click()
attempt = driver.find_element_by_xpath("//a[@href='http://ci.linuxjobber.com/']")
attempt.click()

driver.get("http://ci.linuxjobber.com/users/schedule")
time.sleep(1)

ar2 = driver.find_element_by_xpath("//select[@name='country']/option[text()='Nigeria (+234)']")
ar2.click()

time.sleep(1)

lastName = driver.find_element_by_id("phone")
lastName.send_keys("9039423428")

sign =  driver.find_element_by_xpath("//*[@type='submit']")
sign.click()