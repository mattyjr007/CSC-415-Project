from selenium import webdriver
from selenium.webdriver.common import keys

driver = webdriver.Chrome("C:/Users/USER/Downloads/chromedriver.exe")

driver.implicitly_wait(10)


driver.get("http://ci.linuxjobber.com")


logIn = driver.find_element_by_xpath(".//a[@href='/users/login']").click()

userName = driver.find_element_by_id("UserUsername")
userName.send_keys("janeright")

password = driver.find_element_by_id("UserPassword")
password.send_keys("samjam1989")

sign =  driver.find_element_by_xpath("//*[@type='submit']")
sign.click()

go = driver.find_element_by_xpath('//a[contains(text(), "janeright")]').click()

select = driver.get("http://ci.linuxjobber.com/users/accountSetting")

elect = driver.find_element_by_xpath('//button[contains(text(), "Launch A New Instance")]').click()
