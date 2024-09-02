*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://takescreenshot.com

*** Tasks ***
MouseActions
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    #Right click action
    Open Context Menu    xpath://[button]
    Sleep    3

    #double click action
    Double Click Element    xpath://[element]

    #drag and drop action
    Drag And Drop    id:max6    idmax106
    Sleep    5

    

    

    