*** Settings ***

Suite Setup     Log To Console    Opening Browser
Suite Teardown  Log To Console    Closing Browser

Test Setup      Log To Console    Login to Application
Test Teardown   Log To Console    Logout from Application

*** Test Cases ***
TC1 Prepaid Recharge
    Log To Console    This is prepaid recharge test case

TC2 Postpaid Recharge
    Log To Console    This is postpaid recharge test case

TC3 Search
    Log To Console    This is Search Test Case

TC4 Advanced Search
    Log To Console    This is Advanced Search Test Case