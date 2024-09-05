*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/DataDrivenTest_resource.robot
Suite Setup    Open my browser    #this mean, this will run only once before the test start
Suite Teardown    Close browsers    #this mean, this will run only once after the tests 
Test Template    Invalid Login    #this saying that use the key template to use multiple times

*** Test Cases ***    username    password
Right user with empty pass    admin@gmail.com    ${EMPTY}
Right user with wrong pass    admin@gmail.com    xyz
Wrong user with right pass    ad@gmail.com    admin
Wrong user with wrong pass    admn@gmail.com    xyz
Empty user with right pass    admin@gmail.com    admin


*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Open login page
    Input username    ${username}
    Input pwd    ${password}
    Click login button
    Error message should be visible
