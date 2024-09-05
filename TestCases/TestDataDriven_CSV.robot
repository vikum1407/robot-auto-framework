*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/DataDrivenTest_resource.robot
Library    DataDriver    ../TestData/LoginData.csv    

Suite Setup    Open my browser
Suite Teardown    Close browsers
Test Template    Invalid Login



*** Test Cases ***   
# DataDriver will automatically create test cases from the CSV file data

*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Open login page
    Input username    ${username}
    Input pwd    ${password}
    Click login button
    Error message should be visible