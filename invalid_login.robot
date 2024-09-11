*** Settings ***
Documentation   invalid login into Personenschaden
...             Useful links:
...             * https://robotframework.org
...             * https://marketsquare.github.io/robotframework-browser/Browser.html

Library         Browser



*** Variables ***
${URL}            https://beauftragung.personenschaden.eucon.com
${browser}        firefox
${user_email}     dein_döner_geht_nach_hause@gmail.com
${password}       you_don_not_need_to_know_this
${error_id}       input-error
${expected_error_message}  Ungültiger Benutzername oder Passwort.

*** Test Cases ***
Invalid Login Into Personenschaden
    [Documentation]     This is a login test case
    Browser.New Browser    ${browser}    headless=false
    New Page    ${URL}
    Set Viewport Size    1920    1080
    Type Text  id=username   ${user_email}
    Type Text   id=password   $password
    Browser.Click     id=kc-login
    Wait For Elements State    id=${error_id}    visible    10s
    ${error_message} =    Get Text     id=${error_id}
    Should Be Equal As Strings    ${error_message}    ${expected_error_message}
    Close Browser
