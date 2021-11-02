*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources1.robot

*** Variables ***


*** Test Cases ***
TC_002.1 Log Page Title
    [Documentation]  This test case is to check kyewords with Arguments
    Start Browser and Maximize Window with Arguments  http://facebook.com  Chrome
    ${Title}=  Get Title
    Log  ${Title}
    Close Browser

TC_002.2 Valid Page Title Check
    [Documentation]  This test case is to check Page Title
    ${Res}=  Start Browser and Maximize Window with Arguments Return Title  http://facebook.com  Chrome
    Log  ${Res}
    Should Be True  """${Res}""" == """Facebook – zaloguj się lub zarejestruj"""
    Should Be Equal As Strings  ${Res}  Facebook – zaloguj się lub zarejestruj



