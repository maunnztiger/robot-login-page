*** Settings ***
Documentation       Try to login into the Personenschaden web application. Use any valid mail adress and a random password.
...                 Verify that the login failes with an error message. Use a BDD approach.
...                 You need to install Python, node.js and the packages from requirements.txt to run this file.
...
...                 Useful links:
...                 * https://robotframework.org
...                 * https://marketsquare.github.io/robotframework-browser/Browser.html

Library             Browser


*** Variables ***
${URL}      https://beauftragung.personenschaden.eucon.com
