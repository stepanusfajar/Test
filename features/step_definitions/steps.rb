require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox
driver.manage.window.maximize
Given ("I Open the automationpractice homepage") do
driver.navigate.to "http://automationpractice.com/index.php"
end

Given ("I login to the account") do
driver.navigate.to "http://automationpractice.com/index.php?controller=authentication&back=my-account"
driver.find_element(:css, "input#email.is_required.validate.account_input.form-control").send_keys("teststepanus@gmail.com")
driver.find_element(:css, "input#passwd.is_required.validate.account_input.form-control").send_keys("12345")
driver.find_element(:css, "button#SubmitLogin.button.btn.btn-default.button-medium").click
end

Given ("I go to any menu") do
driver.find_element(:css, "a.sf-with-ul").click
driver.find_element(:css, "i.icon-th-list").click
driver.find_element(:xpath, "/html/body/div/div[2]/div/div[3]/div[2]/ul/li[1]/div/div/div[3]/div/div[2]/a[1]").click
end
