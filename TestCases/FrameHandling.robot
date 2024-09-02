*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}    chrome
${url}

*** Tasks ***
Handle Frames
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    Select Frame    xpath://[firstFrame]
    Click Link    org.compus.com
    
    #before you move to the second frame, you have to unselect the current frame
    Unselect Frame

    #go to second frame
    Select Frame    xpath://[secondFrame]
    Input Text    xpath://[username]    vikum1407
    Unselect Frame


*** Keywords ***