*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources.robot

*** Variables ***
${browser}    chrome
${url}    https://userdefine.com

*** Tasks ***
UserDefineKeywords

    #02. this is define keyword below by myself 'with arguments'  
    launchBrowser2    ${url}    ${browser}

    #03. this is define keyword below by myself 'with arguments' and 'return a value'
    ${page_title}    launchBrowser3    ${url}    ${browser}
    Log    ${page_title}


    Input Text    name:username    vikum1407
    Input Text    name:password    vi@324



    