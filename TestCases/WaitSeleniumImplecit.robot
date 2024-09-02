*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://practical.com

*** Tasks ***
WaitTimeInRobot
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
  
    Set Selenium Implicit Wait    10 seconds    #this will affect for all below elements
    Input Text    id:firstName    viku
    Input Text    id:lastName    sugathadasa
    Input Text    id:username    viku1309
    Input Text    id:password    77fhuy3