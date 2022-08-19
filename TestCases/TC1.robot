*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
LoginTest
#    create webdriver  chrome    executable_path="C:\Drivers\chromedriver_win32\chromedriver.exe"
    open browser  http://dceims.bdeducation.org.bd/schoolAdmin   chrome
    input text  xpath://input[@placeholder='Email/User ID']  marma.newaj@gmail.com
    input text  xpath://input[@id='password']  12345678
    click element  xpath://button[@type='submit']
#    close browser

*** Keywords ***
