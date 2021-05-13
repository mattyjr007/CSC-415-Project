from selenium import webdriver
from selenium.webdriver.common import keys
import time


driver = webdriver.Chrome("C:/Users/Oluwafemi/Documents/sir akej sys/chromedriver.exe")

#driver = webdriver.Chrome("C:/Users/USER/Downloads/chromedriver.exe") for louis


driver.get("http://ci.linuxjobber.com")

driver.implicitly_wait(10)


signUp = driver.find_element_by_xpath("//a[@href = 'http://ci.linuxjobber.com/Homes/selfstudy']").click()

time.sleep(1)

signUp = driver.find_element_by_xpath("//a[@href = 'http://ci.linuxjobber.com/tryservices/package/standard']").click()

time.sleep(1)

name =driver.find_element_by_id("fname")
name.send_keys("aku")

last = driver.find_element_by_id("lname")
last.send_keys("fer")

time.sleep(2)


mail = driver.find_element_by_id("email")
mail.send_keys("kdas@gmail.com")


signPay = driver.find_element_by_xpath("//*[@type='submit']")
signPay.click()

'''userName = driver.find_element_by_id("UserUsername")
userName.send_keys("sirbossakej")

time.sleep(2)

password = driver.find_element_by_id("UserPassword")
password.send_keys("sirbossakej")

sign =  driver.find_element_by_xpath("//*[@type='submit']")
sign.click()'''

signPay = driver.find_element_by_xpath("//*[@type='submit']")
signPay.click()


driver.switch_to.frame("stripe_checkout_app")

cardNumber =  driver.find_element_by_xpath("//*[@type='tel']")
cardNumber.send_keys("42424242424242424")

time.sleep(2)

date = driver.find_element_by_xpath("//*[@placeholder='MM / YY']")
date.send_keys("0318")

time.sleep(2)

cvc = driver.find_element_by_xpath("//*[@placeholder='CVC']")
cvc.send_keys("1234")

time.sleep(2)

pay = driver.find_element_by_xpath("//*[@type='submit']")
pay.click()

time.sleep(2)

day = driver.find_element_by_xpath("//select[@name='data[Schedule][day]']/option[text()='Tuesday']")
day.click()

time = driver.find_element_by_xpath("//select[@name='data[Schedule][time]']/option[text()='00:30:00']")
time.click()

time.sleep(2)

ar = driver.find_element_by_xpath("//select[@name='data[Schedule][mode]']/option[text()='pm']")
ar.click()

day2 = driver.find_element_by_xpath("//select[@name='data[Schedule][day_2]']/option[text()='Monday']")
day2.click()

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