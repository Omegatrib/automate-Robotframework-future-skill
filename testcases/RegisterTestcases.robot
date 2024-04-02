*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/RegisterPageKeywords.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/testdata.yaml
Suite Setup        Open Browser    ${baseUrl}    chrome
Suite Teardown     Close Browser


*** Test Cases ***
As a user, I want to register success with valid credential


    When user Register to future skill platform with ${email} and ${firstname} and ${lastname} and ${phoneNumber} and ${newPassword} and ${confirmPassword}
    Then future skill should display message as "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"
    
