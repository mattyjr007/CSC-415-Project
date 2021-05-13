from selenium import webdriver
from selenium.webdriver.common import keys


driver = webdriver.Chrome("C:/Users/USER/Downloads/chromedriver.exe")


for i in range(200):
    driver.get("/(S(ayyk1rqf2aixlnaf0lj0j5my))/StudentHomePage.aspx")
    driver.implicitly_wait(10)

    #day = driver.find_element_by_xpath("//*[@name='emailAddress']")
    #day.send_keys("jordanski@gmail.com")

    time.sleep(1)

   

    ar2 = driver.find_element_by_xpath("//form[@id='Contents_refreshpaymentstatus")
    ar2.click()

    time.sleep(1)

   
