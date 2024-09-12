*** Settings ***
Documentation   invalid login into Personenschaden
...             Useful links:
...             * https://robotframework.org
...             * https://marketsquare.github.io/robotframework-browser/Browser.html

Library         Browser
Resource        resource.robot



*** Variables ***
${URL}            https://beauftragung.personenschaden.eucon.com
${browser}        firefox
${user_email}     dein_döner_geht_nach_hause@gmail.com
${password}       you_don_not_need_to_know_this
${expected_error_message}  Ungültiger Benutzername oder Passwort.



*** Test Cases ***
Invalid Login Into Personenschaden
    [Documentation]     This is a login test case
    Given the user opens up  firefox
    And opens the Home page of  https://beauftragung.personenschaden.eucon.com
    When the user enters his  emailadress
    And enters his  password
    And clicks the login button
    Then an error message occurs
    And this error message is  Ungültiger Benutzername oder Passwort.
    And the user closes the browser in case of failed login

Invalid Login With Empty String
    [Documentation]     This is a login test case
    Given the user opens up  firefox
    And opens the Home page of  https://beauftragung.personenschaden.eucon.com
    the user enters an empty  emailadress
    And enters his  password
    And clicks the login button
    Then an error message occurs
    And this error message is  Ungültiger Benutzername oder Passwort.
    And the user closes the browser in case of failed login
