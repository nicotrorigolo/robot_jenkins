*** Settings ***
Library       SeleniumLibrary
# Library       chromeConfiguration.py
# Library       XvfbRobot

*** Variables ***
${url}    https://www.google.fr/
${BROWSER}   chrome
${SELSPEED}  0.0s


*** Keywords ***
Connexion au site de Google
    # ${chrome_options}    chromeConfiguration.Config
    # ${args}    chromeConfiguration.Serviceargs
    # Start Virtual Display    1920    1080
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --disable-dev-shm-usage
    Call Method    ${chrome_options}    add_argument    --window-size=1920,1080
    # Call Method    ${chrome_options}    add_argument    --log-level=ALL
    Open Browser    ${url}    ${BROWSER}    options=${chrome_options}
    Maximize Browser Window    # Mettre la fenetre de chrome en plein ecran
    Capture Page Screenshot







*** Test Cases ***
Google Index
    Connexion au site de Google


