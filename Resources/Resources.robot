*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
#02. This is my own define keyword 'with arguments'
launchBrowser2
    [Arguments]    ${appurl}    ${appbrowser}
    Open Browser    ${appurl}    ${appbrowser}
    Maximize Browser Window

#03. This is my own define keyword 'with arguments' and 'return some value'
launchBrowser3
    [Arguments]    ${appurl}    ${appbrowser}
    Open Browser    ${appurl}    ${appbrowser}
    Maximize Browser Window
    ${title}=    Get Title
    RETURN    ${title}   
    