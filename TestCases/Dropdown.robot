*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    

*** Tasks ***
Validate Dropdowns
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    # 1 option
    Select From List By Index    xpath://div[contains(text(),'Select State')]    NCR

    #2 option
    Select From List By Label    xpath://div[contains(text(),'Select State')]    Newyok

    #3 option
    Select From List By Value    xpath://div[contains(text(),'Select State')]    Sri Lanka

    #Unselect from dropdown or list
    Unselect From List By Label    xpath://div[contains(text(),'Select State')]    NCR



*** Keywords ***