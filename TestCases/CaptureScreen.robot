*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
LoginTC
    Open Browser    https://www.selenium.dev/  Chrome
    Maximize Browser Window

    Capture Element Screenshot    xpath://*[@id="selenium_logo"]     C:/Users/Server/PycharmProjects/Robot-Framework-Training/TestCases/Logo.png
    Capture Page Screenshot     C:/Users/Server/PycharmProjects/Robot-Framework-Training/TestCases/LoginTC.png

#    Capture Element Screenshot    xpath://*[@id="selenium_logo"]     Logo.png
#    Capture Page Screenshot     LoginTC.png
    #by default will save in project directory

    Close All Browsers


*** Keywords ***