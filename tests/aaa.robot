*** Settings ***
Library       SeleniumLibrary
Library       ChromeConfiguration.py
Library       XvfbRobot

*** Variables ***
${url}    https://www.google.fr/
${BROWSER}   chrome
${SELSPEED}  0.0s


*** Keywords ***
Connexion au site de Google
    ${chrome_options}    ChromeConfiguration.Config
    ${args}    ChromeConfiguration.Serviceargs
    Start Virtual Display    1920    1080
    Open Browser    ${url}    ${BROWSER}    options=${chrome_options}
    Maximize Browser Window    # Mettre la fenetre de chrome en plein ecran
    Capture Page Screenshot

*** Test Cases ***
Google Index
    Connexion au site de Google


