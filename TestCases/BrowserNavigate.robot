*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://browser.com

*** Tasks ***
NavigateOptions
    Open Browser    ${url}    ${browser}
    ${location}    Get Location    #to get the current url of the application

    Go To    https://bin.com
    ${location}    Get Location

    Go Back 
    ${location}    Get Location

    