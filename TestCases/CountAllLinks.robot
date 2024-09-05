*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    http://links.com
${browser}    chrome
${targetLink}    http://target.com
${targetText}    sri lanka

*** Test Cases ***
CountLinks
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    #get all link to a variable
    ${allLinks}=    Get WebElements  xpath://a

    FOR  ${element}  IN  @{allLinks}
        ${href}=    Get Element Attribute    ${element}    href
        IF  ${href} == ${targetLink}
            Click Element    ${element}
            Exit For Loop
        END
    END
    

ExtractTextandMatch
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    ${allText}=    Get Text    xpath://[text]

    FOR  ${elemt}  IN  @{allText}
        ${targetText}=    Get Element Attribute    ${elemt}    text
        IF  ${targetText} == ${targetText}
            Click Element    ${elemt}            
        END
    END
    