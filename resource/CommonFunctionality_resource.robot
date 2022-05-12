*** Settings ***
Documentation           commonfile


Library   SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${BROWSER}     chrome
${URL}     https://phptravels.net/

*** Keywords ***
Launch Browser
     Append To Environment Variable    path     ${EXECDIR}${/}driver
     Open Browser     browser=${BROWSER}
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Set Screenshot Directory    ${EXECDIR}${/}screenshot
     Go To    url=${URL}
     Click Element     xpath=//button[@id='cookie_stop']


