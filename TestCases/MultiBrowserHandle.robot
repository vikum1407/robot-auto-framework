*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    http://multi.browser.com

*** Test Cases ***
Multi browser Windows Handle:
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    Open Browser    http:example2.com    chrome
    Maximize Browser Window

    ${window_handles}=    Get Window Handles

    Switch Window    ${window_handles[1]}
    ${title_2}=    Get Title
    Log    ${title_2}

    Switch Window    ${window_handles[0]}
    ${title_1}=    Get Title

    Close All Browsers

*** Keywords ***