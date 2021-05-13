from selenium import webdriver
from selenium.webdriver.common import keys

driver = webdriver.Chrome("C:/Users/USER/Downloads/chromedriver.exe")


driver.get("http://ci.linuxjobber.com")


click = driver.find_element_by_xpath("//a[@href='http://ci.linuxjobber.com/homes/workexperience']")
click.click()


attempt = driver.find_element_by_xpath("//a[@href='http://ci.linuxjobber.com/homes/pay/workexperience']")
attempt.click()


userName = driver.find_element_by_id("UserUsername")
userName.send_keys("sirbossakej")

password = driver.find_element_by_id("UserPassword")
password.send_keys("dkingstonboss")

sign =  driver.find_element_by_xpath("//*[@type='submit']")
sign.click()

click_attempt = driver.find_element_by_xpath("//a[@href='http://ci.linuxjobber.com/homes/workexperience']")
click_attempt.click()

click_attempt = driver.find_element_by_xpath("//a[@href='http://ci.linuxjobber.com/homes/pay/workexperience']")
click_attempt.click()

payCard = driver.find_element_by_xpath("//*[@type='submit']")
payCard.click()

#cardNumber = driver.find_element_by_class_name("Fieldset-input  Textbox-control")
#cardNumber.send_keys("4242424242424242")

#month = ")

#cv = driver.find_element_by_class_name("Fieldset-input Textbox-control")
#cv.send_keys("1234")

driver.switch_to.frame("stripe_checkout_app")
cardNumber =  driver.find_element_by_xpath("//*[@type='tel']")
cardNumber.send_keys("45454545454545454")

pay = driver.find_element_by_xpath("//*[@type='submit']")
pay.click()
