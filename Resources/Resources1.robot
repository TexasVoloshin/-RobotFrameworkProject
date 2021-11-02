*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://opensource-demo.orangehrmlive.com


*** Keywords ***
Start Browser and Maximize Window
    Open Browser  ${URL}   ${Browser}
    Maximize Browser Window

Start Browser and Maximize Window with Arguments
    [Arguments]  ${UserURL}  ${UserBrowser}
    Open Browser  ${UserURL}  ${UserBrowser}
    Maximize Browser Window



Start Browser and Maximize Window with Arguments Return Title
    [Arguments]  ${UserURL}  ${UserBrowser}
    Open Browser  ${UserURL}  ${UserBrowser}
    Maximize Browser Window
    ${Title}=  Get Title
    [Return]  ${Title}
    Close Browser

Login Successfully
    Start Browser and Maximize Window
    Input Text  name:txtUsername  Admin
    Input Text  name:txtPassword  admin123
    Click Button  name:Submit


Logout Successfully
    Click Element  xpath://div[@id='branding']/a[@class='panelTrigger']
    ${LogoutEle}    Get WebElement    //a[text()='Logout']
    Execute Javascript    arguments[0].click();     ARGUMENTS    ${LogoutEle}
    ${LoginPanel}=  Get Text  id:logInPanelHeading
    Should Be Equal As Strings  ${LoginPanel}  LOGIN Panel






