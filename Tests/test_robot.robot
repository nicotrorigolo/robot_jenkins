*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${browser}        chrome
${url}    http://127.0.0.1
${time}    2
@{search}    boulanger    pain    brioche    bonbon    Connexion


*** Keywords ***
Connexion au site de Google
    Open Browser    ${url}    ${browser}    # Ouvrir chrome
   # Maximize Browser Window    # Mettre la fenetre de chrome en plein ecran
   Page should contain element    //p

*** Test Cases ***
Google Index
    Connexion au site de Google


