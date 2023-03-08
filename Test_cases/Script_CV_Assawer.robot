*** Settings ***
Documentation    documentation CV_Assawer
Library           SeleniumLibrary 


*** Variables ***

${URL}=    https://assawerhabibi.github.io/Localisateur_Web_Assawer/
${browser}=    chrome

*** Test Cases ***
Ouverture du navigateur
    Open Browser    ${URL}    ${browser}   
    Maximize Browser Window
    Sleep    4
  
Test de la strucrures de la page
    Click Link    xpath://a[@title='Formation']
    Sleep    4
    Execute Javascript    window.scrollTo(0,2000)
    Sleep    3
    Execute Javascript    window.scrollTo(0,-5000)
    Sleep    2
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)
    Sleep    3
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)
    Sleep    4
capture de l'ecran
    capture de l'ecran
verfier le titre de la page
    verfier le titre de la page
verfier adresse url de la page
    verfier adresse url de la page
verfier le reste des elements de la page
    verfier le reste des elements de la page
verfier des liens dans la page
    verfier les liens dans la page
verfier le lien vers le pdf
    verfier le lien vers le pdf

Fermer le navigateur
    Close Browser

*** Keywords ***
verifier la page du cv

    Page Should Contain    Compétences
    Sleep    2
    Page Should Contain    FORMATION
    Sleep    2
    Page Should Contain    À propos
    Sleep    2
    Page Should Contain Image    xpath://img[@class='img-thumbnail shadow-2-strong']
    Sleep    2
verfier le titre de la page 
    Title Should Be  CV ASSAWER
verfier adresse url de la page
    Location Should Be  https://assawerhabibi.github.io/Localisateur_Web_Assawer/#education
verfier le reste des elements de la page
    Page Should Contain Element  xpath=//h2[text()='References']
    Page Should Contain Element  xpath=//h2[text()='EXPÉRIENCES PERTINANTES']
verfier les liens dans la page
    Page Should Contain Link  xpath=//a[@title='Compétences']
    Page Should Contain Link  xpath=//a[@title='Formation']
verfier le lien vers le pdf
    Page Should Contain Element  xpath=//a[text()='Download CV']
capture de l'ecran
    Capture Page Screenshot  page1.png 