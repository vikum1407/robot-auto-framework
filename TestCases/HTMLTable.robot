*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    http://table.com
${browser}    chrome

*** Test Cases ***
TableValidation
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    ${rows}=    Get Element Count    xpath://tbody/tr
    ${cols}=    Get Element Count    xpath://tbody/tr[1]/th

    Log    ${rows}
    Log    ${cols}

    #there are lot of validation starting from 'table' keyword

    FOR    ${r}    IN    @{rows}
        ${country}=    Get Text    xpath://tbody/${r}/td[1]
        IF  '${r}' == 'sri lanka'
            ${capital}=    Get Text    xpath://tbody/${r}/td[3]
            Log    capital of Sri Lanka:    ${capital}  
            Exit For Loop
        END  
    END

    Close All Browsers