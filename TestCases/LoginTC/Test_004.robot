*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources1.robot

*** Variables ***
${NewUser}  Newby_107

*** Test Cases ***
TC_004.1 Valid New User Addition
    [Documentation]  This test case is to check if Admin can add new user
    [Setup]  Login Successfully
    Click Admin
    Click Button  name:btnAdd
    Select From List By Label  name:systemUser[userType]  ESS
    Input Text  name:systemUser[employeeName][empName]  Alice Duval
    Input Text  name:systemUser[userName]  ${NewUser}
    Select From List By Label  name:systemUser[status]  Enabled
    Input Text  name:systemUser[password]  5$_UseR23
    Input Text  name:systemUser[confirmPassword]  5$_UseR23
    Set Selenium Implicit Wait  10s
    Click Button  name:btnSave
    Wait Until Element Is Visible  //div[@id='customerList']/div[@id='search-results']/div[@class='inner']/form[@id='frmList_ohrmListComponent']
    ${Message}=  Get Text  //div[@id='customerList']/div[@id='search-results']/div[@class='inner']/form[@id='frmList_ohrmListComponent']/div[@class='message success fadable']
    Log  ${Message}
    Should Be Equal As Strings   ${Message}  Successfully Saved

    Close Browser


TC_004.2 Search New User
    [Documentation]  This test case is to check if New user is found in Search results
    [Setup]  Login Successfully
    Click Admin
    Input Text  name:searchSystemUser[userName]  ${NewUser}
    Click Button  name:_search
    ${FoundResult}=  Get Text  //div[@id='tableWrapper']/table[@id='resultTable']/tbody/tr/td[2]
    Log  ${FoundResult}
    Should Be Equal As Strings  ${FoundResult}  ${NewUser}
    Close Browser



