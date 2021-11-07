*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources1.robot

*** Variables ***


*** Test Cases ***
TC_002.1 Valid Log Out
    [Documentation]  This test case is to check successfull logout
    [Setup]  Login Successfully
    Logout Successfully
    Close Browser




