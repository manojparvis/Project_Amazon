*** Settings ***
Documentation         this suite will handle Invalid credential

Resource    ../resource/CommonFunctionality_resource.robot

Test Setup   Launch Browser
Test Template      Invalid Credential Template
Test Teardown     Close Browser

Library   DataDriver   file=../test_data/Login_data.xlsx        sheet_name=Invalid Credential

*** Test Cases ***
TC1

*** Keywords ***
Invalid Credential Template
        Click Element    link=Login
        [Arguments]     ${email}       ${password}
        Input Text    xpath=//input[@placeholder='Email']    ${email}
        Input Text    xpath=//input[@placeholder='Password']    ${password}
        Click Element    xpath=//span[@class='ladda-label']


