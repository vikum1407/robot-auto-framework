*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    Open Browser    ${url}    ${browser}
    ClickLoginTab
    Close Browser

*** Keywords ***
ClickLoginTab
    Click Link    xpath://a[@class='ico-login']
    Input Text    id:Email    text=vikum1408@gmail.com
    Input Text    id:password    text=viku43@32
    Click Button    xpath://button[normalize-space()='Log in']







