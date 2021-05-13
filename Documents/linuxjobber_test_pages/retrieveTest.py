from selenium import webdriver
from selenium.webdriver.common import keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.common.exceptions import NoSuchElementException
import time

driver = webdriver.Chrome("C:/Users/Oluwafemi/Documents/sir akej sys/chromedriver.exe")

#driver = webdriver.Chrome("C:/Users/USER/Downloads/chromedriver.exe")
driver.get("http://ci.linuxjobber.com")

driver.implicitly_wait(5)


click = driver.find_element_by_xpath("//a[@href='/users/login']")
click.click()


userName = driver.find_element_by_id("UserUsername")
userName.send_keys("sirbossakej")

select = driver.find_element_by_xpath("//a[@href='/users/reset']")
select.click()

userName = driver.find_element_by_id("UserEmail")
userName.send_keys("sirbossakej@gmail.com")

sign =  driver.find_element_by_xpath("//*[@type='submit']")
sign.click()

driver.get("http://gmail.com")

mail = driver.find_element_by_id("identifierId")
mail.send_keys("sirbossakej@gmail.com")

click = driver.find_element_by_id("identifierNext").click()


time.sleep(2)

password = driver.find_element_by_xpath("//*[@name='password']")
password.send_keys("dim(sirakej)")

time.sleep(1)

select = driver.find_element_by_id("passwordNext")
select.click()

time.sleep(2)
'''
find = driver.find_element_by_xpath("//span[@name='Joseph@linuxjobber.c.'])[2]").click()
choose = driver.find_element_by_link_text("Change your password").click()           
            
#clicker = driver.find_element_by_id("passwordNext")
#clicker.click()

driver.get("http://ci.linuxjobber.com/users/changePassword/4gpzkh3sdu")

password = driver.find_element_by_id("password")
password.send_keys("sirbossakej")

conPass = driver.find_element_by_id("confirm_password")
conPass.send_keys("sirbossakej")

sign =  driver.find_element_by_xpath("//*[@type='submit']")
sign.click()'''

'''List<WebElement> unreademeil = driver.find_element_by_xpath("//*[@id=':3d']")
myMailer = "StrapUI"
i = 0
for i in range(i < unreademeil.size()):  
	i +=1
 if(unreademeil.get(i).isDisplayed()==true):
 elif(unreademeil.get(i).getText().equals(MyMailer)):
 		print("Yes we have got mail form " + MyMailer)
 		break;
 	else:
 		print("No mail form " + MyMailer)
          
driver.find_element_by_xpath("//*[@id=':3d']").click()'''

conPass = driver.find_element_by_id("gbqfq")
conPass.send_keys("Joseph")

clicker = driver.find_element_by_id(":35")
clicker.click()

time.sleep(2)

login_attempt = driver.find_element_by_link_text("Change your password")
login_attempt.click()

time.sleep(1)


#ar = driver.find_element_by_xpath("//*[@name='data[User][password]']")
#ar.send_keys("sirakej")

'''Pass=driver.find_element_by_id("password")
Pass.send_keys("sirakej")

time.sleep(2)

con=driver.find_element_by_id("confirm_password").send_keys("sirakej")

reset =driver.find_element_by_xpath("//*[@type='submit']")
reset.click()
'''
