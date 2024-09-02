*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    http://alerts.com

*** Tasks ***
Handling Alerts
    Open Browser    ${url}    ${browser}
    Click Element    xpath://[cdscs]    #open the two button alert window
    #Handle Alert    action=accept    #close the window by clicking 'accept' button
    #Handle Alert    action=dismiss    #close the window by clicking 'dismiss' button
    Handle Alert    Leave    #leave alert window for a while

    Alert Should Be Present    text="welcome to the ABC company web portal"    #check the text on the alert window
    Alert Should Not Be Present    "welcome vikum"    #should not present
    

*** Keywords ***