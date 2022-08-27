*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Mouse Operations
    #Right Click
    Open Browser    https://swisnl.github.io/jQuery-contextMenu/demo.html  Chrome
    Maximize Browser Window

    Open Context Menu    xpath://span[@class='context-menu-one btn btn-neutral']
    Sleep    3

    #Double Click
    Go To    https://testautomationpractice.blogspot.com/  
    Maximize Browser Window

    Double Click Element    xpath://button[normalize-space()='Copy Text']
    Sleep    3

    #Drag and Drop
    Go To    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Maximize Browser Window

    Drag And Drop    id:box6    id:box106
    Sleep    3

    Close All Browsers




*** Keywords ***