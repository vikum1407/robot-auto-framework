*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    http://tabbed.com

*** Tasks ***
Tabbed Windows Handle:
    Open Browser    ${url}    ${browser}
    Click Element    xpath://[button]    #after clicking this button, the window open in a new tab
    
    # Get all window handles after new tab is opened
    ${window_handles}=    Get Window Handles

    #Switch to the new tab (the second handle)
    Switch Window    ${window_handles[1]}

    # Perform a action on new tab
    Page Should Contain    xpath://h1[title]    #page header validate

    # Switch back to the parent window
    Switch Window    ${window_handles[0]}

    Close All Browsers

*** Keywords ***