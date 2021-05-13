from selenium import webdriver
from selenium.webdriver.common import keys
import time

driver = webdriver.Chrome("C:/Users/Oluwafemi/Documents/sir akej sys/chromedriver.exe")

driver.implicitly_wait(15)

driver.get("http://ci.linuxjobber.com")

click_attempt = driver.find_element_by_xpath("//a[@href = 'http://ci.linuxjobber.com/homes/packages' ]")
click_attempt.click()

signUp = driver.find_element_by_xpath("//a[@href = 'http://ci.linuxjobber.com/tryservices/package/standard']")
signUp.click()

name = driver.find_element_by_id("fname")
name.send_keys("adetunji")

lastName = driver.find_element_by_id("lname")
lastName.send_keys("olugbenga")

mail = driver.find_element_by_id("email")
mail.send_keys("udd@gmail.com")

submit = driver.find_element_by_xpath("//*[@type='submit']")
submit.click()


signPay = driver.find_element_by_xpath("//*[@type='submit']")
signPay.click()


time.sleep(1)

driver.switch_to.frame("stripe_checkout_app")

cardNumber =  driver.find_element_by_xpath("//*[@type='tel']")
cardNumber.send_keys("42424242424242424")

time.sleep(0.5) 

date = driver.find_element_by_xpath("//*[@placeholder='MM / YY']")
date.send_keys("0318")


time.sleep(0.5)

cvc = driver.find_element_by_xpath("//*[@placeholder='CVC']")
cvc.send_keys("1234")

pay = driver.find_element_by_xpath("//*[@type='submit']")
pay.click()

time.sleep(1)

day = driver.find_element_by_xpath("//select[@name='data[Schedule][day]']/option[text()='Tuesday']")
day.click()

time.sleep(1)

time = driver.find_element_by_xpath("//select[@name='data[Schedule][time]']/option[text()='00:30:00']")
time.click()

time.sleep(1)

ar = driver.find_element_by_xpath("//select[@name='data[Schedule][mode]']/option[text()='pm']")
ar.click()

time.sleep(1)

day2 = driver.find_element_by_xpath("//select[@name='data[Schedule][day_2]']/option[text()='Monday']")
day2.click()

time.sleep(1)

time2 = driver.find_element_by_xpath("//select[@name='data[Schedule][time_2]']/option[text()='01:00:00']")
time2.click()

time.sleep(1)

ar2 = driver.find_element_by_xpath("//select[@name='data[Schedule][mode_2]']/option[text()='pm']")
ar2.click()

time.sleep(1)

lastName = driver.find_element_by_id("phone")
lastName.send_keys("55555555")

time.sleep(1)

submit = driver.find_element_by_xpath("//*[@type='submit']")
submit.click()


