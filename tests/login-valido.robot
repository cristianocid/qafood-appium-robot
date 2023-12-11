***Settings***
Library     AppiumLibrary

***Test Cases***
Login Valido
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformVersion=8.1
    ...                 platformName=Android
    ...                 deviceName=emulator-5554
    ...                 app=${EXECDIR}/app/qafood.apk

    Wait Until Element Is Visible   accessibility_id=email          10

    Click Element                   accessibility_id=email
    Input Text                      accessibility_id=email          teste@teste.com
    
    Click Element                   accessibility_id=password
    Input Text                      accessibility_id=password       123456

    Click Element                   accessibility_id=login-button

    Wait Until Element Is Visible   xpath=//android.widget.TextView[@text="Selecione seu endereço..."]     10
    Element Text Should Be          xpath=//android.widget.TextView[@text="Selecione seu endereço..."]     Selecione seu endereço...

    Capture Page Screenshot
    Close Application