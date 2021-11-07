*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources1.robot

*** Variables ***


*** Test Cases ***
TC_002.1 Valid New User Addition
    [Documentation]  This test case is to check if Admin can add new user
    [Setup]  Login Successfully
    Click Admin
    Click Button  name:btnAdd
    Select From List By Label  name:systemUser[userType]  ESS
    Input Text  name:systemUser[employeeName][empName]  Alice Duval
    Input Text  name:systemUser[userName]  Federicotesseryesrt7
    Select From List By Label  name:systemUser[status]  Enabled
    Input Text  name:systemUser[password]  5$_UseR23
    Input Text  name:systemUser[confirmPassword]  5$_UseR23
    Click Button  name:btnSave
    Wait Until Element Is Visible  //div[@id='customerList']/div[@id='search-results']/div[@class='inner']/form[@id='frmList_ohrmListComponent']
    ${Message}=  Get Text  //div[@id='customerList']/div[@id='search-results']/div[@class='inner']/form[@id='frmList_ohrmListComponent']/div[@class='message success fadable']
    Log  ${Message}
    Should Be Equal As Strings   ${Message}  Successfully Saved

    Close Browser





