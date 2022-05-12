*** Settings ***
Documentation         this suite will handle Valid credential

Resource    ../resource/CommonFunctionality_resource.robot

Test Setup   Launch Browser
Test Template      Valid Credential Template

Library   DataDriver   file=../test_data/Login_data.xlsx        sheet_name=Valid Credential

*** Test Cases ***
TC1

*** Keywords ***
Valid Credential Template
        Click Element    link=Login
        [Arguments]     ${email}       ${password}
        Input Text    xpath=//input[@placeholder='Email']    ${email}
        Input Text    xpath=//input[@placeholder='Password']    ${password}
        Click Element    xpath=//span[@class='ladda-label']





