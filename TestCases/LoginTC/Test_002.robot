*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources1.robot

*** Variables ***


*** Test Cases ***
TC_001.1 Valid Logout Check
    [Documentation]  This test case is to check logout funcionality
    [Setup]  Login Successfully
    [Teardown]  Close Browser
    Logout Successfully


