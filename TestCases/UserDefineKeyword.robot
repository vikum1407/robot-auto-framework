*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://userdefine.com

*** Tasks ***
UserDefineKeywords
    # Open Browser    ${url}    ${browser}
    # Maximize Browser Window
    
    #01. this is define keyword below by myself 'without arguments'
    launchBrowser  

    #02. this is define keyword below by myself 'with arguments'  
    launchBrowser2    ${url}    ${browser}

    #03. this is define keyword below by myself 'with arguments' and 'return a value'
    ${page_title}    launchBrowser3    ${url}    ${browser}
    Log    ${page_title}


    Input Text    name:username    vikum1407
    Input Text    name:password    vi@324

*** Keywords ***
#01. This is my own define keyword 'without arguments'
launchBrowser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

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
    

    