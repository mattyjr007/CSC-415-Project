from selenium import webdriver
from selenium.webdriver.common import keys
import time

#driver = webdriver.Chrome("C:/Users/USER/Downloads/chromedriver.exe")
driver = webdriver.Chrome("C:/Users/Oluwafemi/Documents/sir akej sys/chromedriver.exe")


driver.get("http://ci.linuxjobber.com")


logIn = driver.find_element_by_xpath(".//a[@href='/users/login']").click()

userName = driver.find_element_by_id("UserUsername")
userName.send_keys("janeright")

time.sleep(1)

password = driver.find_element_by_id("UserPassword")
password.send_keys("samjam1989")

sign =  driver.find_element_by_xpath("//*[@type='submit']")
sign.click()

time.sleep(1)

go = driver.find_element_by_xpath('//a[contains(text(), "janeright")]').click()

time.sleep(1)

select = driver.get("http://ci.linuxjobber.com/users/accountSetting")

elm = driver.find_element_by_name("data[csvfile]").send_keys("C:\\credentials.csv")

upload = driver.find_element_by_xpath("//*[@type='submit']").click()