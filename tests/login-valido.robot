***Settings***
Library     AppiumLibrary
Resource    ../resources/base.robot

*** Variables ***
${email}        teste@teste.com
${password}     123456           

***Test Cases***
Login Valido
    Open Session

    Wait Until Element Is Visible   accessibility_id=email          10

    Click Element                   accessibility_id=email
    Input Text                      accessibility_id=email          ${email}
    
    Click Element                   accessibility_id=password
    Input Text                      accessibility_id=password       ${password}

    Click Element                   accessibility_id=login-button

    Wait Until Element Is Visible   xpath=//android.widget.TextView[@text="Selecione seu endereço..."]     10
    Element Text Should Be          xpath=//android.widget.TextView[@text="Selecione seu endereço..."]     Selecione seu endereço...

    Capture Page Screenshot
    Close Application