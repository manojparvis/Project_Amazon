*** Settings ***
Documentation         create a new account
Resource    ../resource/CommonFunctionality_resource.robot

Test Setup   Launch Browser



*** Test Cases ***
valid Credential Template
      Click Element    xpath=//a[@href='https://phptravels.net/signup']
      Input Text      xpath=//input[@name='first_name']     manoj
      Input Text      xpath=//input[@placeholder='Last Name']     kumar
      Input Text    xpath=//input[@name='phone']    6383330500
      Input Text    xpath=//input[@name='email']    manojkumarparthibanvisa@gmail.com
      Input Text    xpath=//input[@name='password']    password@123
      Click Element   xpath= //span[text()='Signup']



