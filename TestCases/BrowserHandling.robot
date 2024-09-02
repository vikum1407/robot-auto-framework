*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}    chrome
${url}    https://practical.com
*** Tasks ***
Web Handling:
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    Open Browser    https://knsdc.com    chrome
    Maximize Browser Window

    Close Browser    #close single web page
    Close All Browsers    #close all browsers

*** Keywords ***