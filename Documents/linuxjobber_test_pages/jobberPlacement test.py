from selenium import webdriver
from selenium.webdriver.common import keys


driver = webdriver.Chrome("C:/Users/USER/Downloads/chromedriver.exe")


driver.get("http://ci.linuxjobber.com")

login_attempt = driver.find_Element_by_xpath("//a[@href='http://ci.linuxjobber.com/Jobplacements/']"))
login_attempt.click()

click_attempt = driver.find_Element_by_xpath("//a[@href='/Jobplacements/apply']"))
click_attempt.click()

firstName = driver.find_element_by_id("firstname")
firstName.send_keys("AKEJU")

lastName = driver.find_element_by_id("lastname")
lastName = driver.find_element_by_id("OLUWAFEMI")

emailAddress = driver.find_element_by_id("email")
emailAddress.send_keys("sirbossakej@gmail.com")

dropdown = driver.find_element_by_id("education")
dropdown.select()