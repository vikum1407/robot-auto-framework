*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://practical.com

*** Tasks ***
WaitTimeInRobot
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    ${default_timeout}    Get Selenium Timeout
    Log To Console    ${default_timeout}    

    Set Selenium Timeout    10 seconds    #if we set like this script will wait 10s until 'Registration' content. not 5s
    Wait Until Page Contains    Registration     #this will wait defalult value 5s until the value present
    Input Text    id:firstName    viku
    Input Text    id:lastName    sugathadasa
    Input Text    id:username    viku1309
    Input Text    id:password    77fhuy3