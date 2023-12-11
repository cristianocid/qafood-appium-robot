***Settings***

Library     AppiumLibrary

***Keywords***
Open Session
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformVersion=8.1
    ...                 platformName=Android
    ...                 deviceName=emulator-5554
    ...                 app=${EXECDIR}/app/qafood.apk

Close Session
    Capture Page Screenshot
    Close Application