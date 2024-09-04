*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://takescreenshot.com

*** Tasks ***
GetScreenshot
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    #take screenshot on specific element    
    Capture Element Screenshot    xpath://[element]/img    D:/Vikum/SDET/Robot-Framework/Robot-Framework/logo.png

    #take full screenshot
    Capture Page Screenshot    D:/Vikum/SDET/Robot-Framework/Robot-Framework/fullPage.png

    # if you are not giving the location, img will save project location default
    Capture Element Screenshot    xpath://[element]/img    logo2.png
    Capture Page Screenshot    fullPage2.png

    