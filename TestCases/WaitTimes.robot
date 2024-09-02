*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://practical.com

    

*** Tasks ***
WaitTimeInRobot
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
  

    Sleep    3     #-> this can wait only one time before execute rest of the steps
    Input Text    id:firstName    viku
    Input Text    id:lastName    sugathadasa
    Input Text    id:username    viku1309
    Input Text    id:password    77fhuy3


    # There are follows wait categories in robot framework
    #     1. sleep
    #     2. Selenium speed
    #     3. Selenium timeout
    #     4. Selenium Implicite wait

    