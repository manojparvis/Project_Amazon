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
        Click Element    xpath=//a[@href='https://phptravels.net/hotels']
        Execute Javascript         document.querySelector('[id=checkin]').value='30-05-2022'
        Execute Javascript         document.querySelector('[id=checkout]').value='03-06-2022'






