*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    http://dataDriven.com
${browser}    chrome


*** Keywords ***
Open my browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Close browsers
    Close All Browsers

Open login page
    Go To    ${url}

Input username
    [Arguments]    ${username}    
    Input Text    id:email    ${username}

Input pwd
    [Arguments]    ${password}
    Input Text    id:pwd    ${password}     

Click login button
    Click Button    xpath://[login]/btn

Click logout button
    Click Button    xpath://[logout]/btn

Error message should be visible
    Page Should Contain    Login was unsuccessfull

Dashboard page should be visible
    Page Should Contain    Dashboard 

    