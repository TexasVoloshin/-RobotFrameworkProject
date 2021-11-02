*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources1.robot

*** Variables ***


*** Test Cases ***
TC_001.1 Valid Login Check
    [Documentation]  This test case is to check login funcionality
    Start Browser and Maximize Window
    Input Text  name:txtUsername  Admin
    Input Text  name:txtPassword  admin123
    Click Button  name:Submit
    Close Browser

TC_001.2 Inalid Login Check
    [Documentation]  This test case is to check invalid credential login funcionality
    Start Browser and Maximize Window
    Input Text  name:txtUsername  Admin
    Input Text  name:txtPassword  admin12355
    Click Button  name:Submit
    ${SpanMes}=  Get Text  id:spanMessage
    Should Be Equal As Strings  ${SpanMes}  Invalid credentials
    Close Browser

