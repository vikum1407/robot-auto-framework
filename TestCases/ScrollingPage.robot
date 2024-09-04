*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://scrolling.com

*** Tasks ***
ScrollingTest
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    #Pixel scrolling
    Execute Javascript    window.scrollTo(0,2500)    #Horizontal, Vertical

    #scroll to an element
    Scroll Element Into View    xpath://[flag]

    #till bottom of the page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)

    #go to starting point
    Execute Javascript    window.scrollTo(0, -document.body.scrollHeight)

    #go to top
    Execute Javascript    window.scrollTo(0,0)


    