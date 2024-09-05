*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1 Validate Home page
    [Tags]    smoke
    Log To Console    this is main functional test
    Log To Console    this is login functional test
    Log To Console    this is logo check

TC2 Validate contactus page
    [Tags]    regression
    Log To Console    this is content validation
    Log To Console    this is group validate

TC3 Validate products page
    [Tags]    smoke
    Log To Console    this is products validation
    Log To Console    this is main product check
    Log To Console    this is content check

TC4 product validation
    [Tags]    regression
    Log To Console    this is product img check
    Log To Console    this is product feature check