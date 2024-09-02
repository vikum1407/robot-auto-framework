*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://demoqa.com/automation-practice-form

*** Tasks ***
Testing RadioButon
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    
    #wait 2second for each steps
    Set Selenium Speed    2seconds

    #Selecting of Radio button
    Select Radio Button    Gender    Femail

    #Selecting checkboxes
    Select Checkbox    Sports
    Select Checkbox    hokey

    #Unselect checkboxes
    Unselect Checkbox    Sport



*** Keywords ***