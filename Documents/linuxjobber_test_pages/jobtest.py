from selenium import webdriver
from selenium.webdriver.common import keys
from selenium.webdriver.support.ui import Select
from selenium.webdriver.support.select import Select



#driver = webdriver.Chrome("C:/Users/USER/Downloads/chromedriver.exe"):OR LOUIS SYSTEM
driver = webdriver.Chrome("C:/Users/Oluwafemi/Documents/sir akej sys/chromedriver.exe")


driver.get("http://ci.linuxjobber.com")

login_attempt = driver.find_element_by_link_text("Job Placement Program")
login_attempt.click()

click_attempt = driver.find_element_by_xpath("//a[@href='/Jobplacements/apply']")
click_attempt.click()

firstName = driver.find_element_by_id("firstname")
firstName.send_keys("ADETUNJI")

lastName = driver.find_element_by_id("lastname")
lastName.send_keys("OLUGBENGA")

emailAddress = driver.find_element_by_id("email")
emailAddress.send_keys("adeolu@gmail.com")

elect = driver.find_element_by_xpath("//select[@name='data[Jobplacements][education]']/option[text()='Some High School']").click()
#find the input element
elem = driver.find_element_by_id("JobplacementsResume").click()
driver = webdriver.send_keys("C:/Users/USER/Documents/adetunji")

submit = driver.find_element_by_xpath("//[@type='submit']")
submit.click()