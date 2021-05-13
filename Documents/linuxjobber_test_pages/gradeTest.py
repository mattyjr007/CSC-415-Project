from selenium import webdriver
from selenium.webdriver.common import keys
from selenium.webdriver.support.ui import WebDriverWait
import time

driver = webdriver.Chrome("C:/Users/Oluwafemi/Documents/sir akej sys/chromedriver.exe")

#driver = webdriver.Chrome("C:/Users/USER/Downloads/chromedriver.exe")
driver.get("http://stage.linuxjobber.com")

driver.implicitly_wait(10)

logIn = driver.find_element_by_xpath(".//a[@href='/users/login']").click()

userName = driver.find_element_by_id("UserUsername")
userName.send_keys("sirbossakej")

time.sleep(2)

password = driver.find_element_by_id("UserPassword")
password.send_keys("dkingstonboss")

sign =  driver.find_element_by_xpath("//*[@type='submit']")
sign.click()

time.sleep(1)

driver.get("http://stage.linuxjobber.com")

time.sleep(1)

select = driver.get("http://stage.linuxjobber.com/tutorials/coursedescription/LINUX-FUNDAMENTALS")

time.sleep(2)

driver.get("http://stage.linuxjobber.com/Tutorials/basics_of_linux_lectures")

time.sleep(1)

click = driver.get("http://stage.linuxjobber.com/Newlabs/labs/LinuxLab_1")

submit = driver.find_element_by_xpath("//*[@type='submit']")
submit.click()

hereLink = driver.get("http://stage.linuxjobber.com/newlabs/uploaded/3443/2001")