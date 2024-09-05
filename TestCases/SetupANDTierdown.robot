*** Settings ***
Suite Setup    Log To Console    Open Browser    #this is run only once before the test
Suite Teardown    Log To Console    Closing Browsers    #this is run only once after the test

Test Setup    Log To Console    Open Browser    #this is run beofre every test
Test Teardown    Log To Console    Clocing Browsers    #this is run after every test

*** Test Cases ***
Test1
    Log To Console    this is test case 1
Test2
    Log To Console    this is test case 2
Test3
    Log To Console    this is test case 3
Test4
    Log To Console    this is test case 4