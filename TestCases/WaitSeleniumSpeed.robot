*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://sdc.com

*** Tasks ***
WaitTimeInRobot
    #to get default selenium speed wait
    ${speed}=    Get Selenium Speed
    Log To Console    ${speed}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window 

    Set Selenium Speed    3 seconds      #-> this will wait each steps by 3 seconds
    Input Text    id:firstName    viku
    Input Text    id:lastName    sugathadasa
    Input Text    id:username    viku1309
    Input Text    id:password    77fhuy3