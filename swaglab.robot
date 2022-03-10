*** Settings ***
Library                 SeleniumLibrary
#Test Setup              Open Browser                ${webURL}                   ${BROWSERS}
#Test Teardown           Close Browser
Suite Setup              Open Browser                ${webURL}                   ${BROWSERS}
Suite Teardown           Close Browser
Test Template            I login with invalid username and invalid password

*** Variables ***
${webURL}               https://www.saucedemo.com/
${BROWSERS}             chrome

*** Keywords ***
I login with invalid username and invalid password
    Maximize Browser Window
    [Arguments]             ${username}                                 ${password}
    Input Text              //input[@data-test="username"]              ${username} 
    Input Text              //input[@id="password"]                     ${password}
    Click Element           //input[@id="login-button"] 
    Page Should Contain                                                 Epic sadface: Username and password do not match any user in this service



*** Test Cases  ***
LOGIN with invalid username and password for user A                     userA                      passwordA
LOGIN with invalid username and password for user A                     userB                      passwordB
LOGIN with invalid username and password for user A                     userC                      passwordC

# I login with valid username and valid password
#    Maximize Browser Window
#    Input Text              //input[@data-test="username"]              standard_user
#    Input Text              //input[@id="password"]                     secret_sauce
#    Click Element           //input[@id="login-button"]
#    Page Should Contain                                                 Products
#    Sleep                   3s