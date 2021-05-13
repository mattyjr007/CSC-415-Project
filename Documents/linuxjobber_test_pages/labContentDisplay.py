from selenium import webdriver
import time

driver = webdriver.Chrome("C:/Users/Louis/LinuxjobberWorkSpace/LinuxJobberAutomationWithPython/chromedriver.exe")

driver.implicitly_wait(10)

driver.get("http://ci.linuxjobber.com/admin")

a = driver.find_element_by_id('username').send_keys('xxxxxxx')

b = driver.find_element_by_id('password').send_keys('xxxxxxx')

driver.find_element_by_xpath(".//*[@id='loginForm']/fieldset/div[2]/input").click()

driver.find_element_by_link_text('Labs').click()

driver.find_element_by_link_text('Add New').click()

driver.find_element_by_xpath("//select[@name='lab_course']/option[text()='test']").click()

driver.find_element_by_name('data[Newlabs][lab_no]').send_keys('7777')

driver.find_element_by_xpath("//select[@name='data[Newlabs][lab_question]']/option[text()='3']").click()

iframes = []

iframes = driver.find_elements_by_tag_name("iframe")

if len(iframes) >= 1:
	driver.switch_to_frame(iframes[0])
	driver.find_element_by_tag_name('body').send_keys('yes')
	driver.switch_to_default_content()
	driver.switch_to_frame(iframes[1])
	driver.find_element_by_tag_name('body').send_keys('yes')
	driver.switch_to_default_content()
	driver.switch_to_frame(iframes[2])
	driver.find_element_by_tag_name('body').send_keys('yes')
	driver.switch_to_default_content()

time.sleep(10)

driver.find_element_by_id('add_ser_prd_btn').click()