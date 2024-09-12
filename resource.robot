*** Settings ***
Documentation   invalid login into Personenschaden
...             Useful links:
...             * https://robotframework.org
...             * https://marketsquare.github.io/robotframework-browser/Browser.html


*** Keywords ***
the user opens up
    [Arguments]  ${browser}
    Browser.New Browser    ${browser}    headless=false

opens the Home page of
    [Arguments]    ${URL}
    New Page    ${URL}

the user enters his
    [Arguments]  ${user_email}
    Type Text  id=username   ${user_email}

the user enters an empty
    [Arguments]  ${EMPTY}
    Type Text  id=username   ${EMPTY}
enters his
    [Arguments]  ${password}
    Type Text   id=password   ${password}

clicks the login button
    Browser.Click     id=kc-login

an error message occurs
    Wait For Elements State    id=input-error    visible    10s

this error message is
    [Arguments]   ${expected_error_message}
    ${error_message} =    Get Text     id=input-error
    Should Be Equal As Strings    ${error_message}    ${expected_error_message}

the user closes the browser in case of failed login
    Close Browser