*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Browser}  Chrome
${URL}  https://www.facebook.com/


*** Test Cases ***
Robot First Test Case
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Input Text  id:email  hello
    Input Text  id:pass  world
    Input Text  name:firstname  Test
    Input Text  xpath://input[@name='lastname']  FBTest
    #Clear Element Text  name:firstname
    Select Radio Button  sex  -1
    Click Button  xpath://input[@type='submit']
    #Click Link  xpath://a[text()='Sign Up']
    #Close Browser
