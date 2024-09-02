*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://demo.nopcommerce.com/

*** Tasks ***
Testing InputBox
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Title Should Be    title=nopcommerce demo store
    Click Link    xpath://a[@class='ico-login']
    ${"email_txt"}    Set Variable    id:email

    Element Should Be Visible    ${"email_txt"}
    Element Should Be Enabled    ${"email_txt"}
    Element Should Not Be Visible    ${"email_txt"}
    Input Text    ${"email_txt"}    text=vikum32@gmail.com
    Sleep    5
    Clear Element Text    ${"email_txt"}
    Sleep    5
    Close Browser


*** Keywords ***