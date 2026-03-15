*** Settings ***
Library             SeleniumLibrary
Resource            ${CURDIR}/Login_Variable.robot


*** Keywords ***
Open Website Page
    [Documentation]    ใช้สำหรับเปิดหน้า website
    [Arguments]     ${url_website}    ${browser_website}=gc
    Open Browser    ${url_website}    ${browser_website}
    Maximize Browser Window

Default Login Page
    [Documentation]    แสดงรายละเอียดหน้า Login
    Wait Until Element Is Visible                        ${logo_login}
    Wait Until Page Contains                             AI SCREENING DASHBOARD
    Wait Until Page Contains                             Log-in
    Wait Until Element Is Visible                        ${locator_email}
    Wait Until Element Is Visible                        ${locator_password}
    Wait Until Element Is Visible                        ${locator_showPassword}
    Wait Until Element Is Visible                        ${locator_btn_Signin}

Login Pass Case
    Default Login Page
    Input Text                                           ${locator_email}                    test@gmail.com
    Input Password                                       ${locator_password}                 12345
    Click Element                                        ${locator_btn_Signin}
    Wait Until Element Is Not Visible                    ${msg_login} 
    Wait Until Location Contains                         https://dev.app.agnoshealth.com/ai_dashboard
    Wait Until Page Contains                             Diagnosis List
    
Verify Error Message
    [Documentation]    ใช้สำหรับตรวจสอบข้อความที่มีการแจ้งเตือน
    [Arguments]                   ${locator}    ${message}
    Wait Until Element Is Visible               ${locator}
    ${msg}                        Get Text      ${locator}
    Should Be Equal As Strings    ${msg}        ${message}

Input Email And Password Fail Case
    [Arguments]    ${input_email}    ${input_password}
    Wait Until Element Is Visible            ${locator_email}
    Input Text                               ${locator_email}                ${input_email}
    Wait Until Element Is Visible            ${locator_password}
    Input Password                           ${locator_password}             ${input_password}
    Click Element                            ${locator_btn_Signin}
    Verify Error Message                     ${locator_err_msg}              ${msg_login} 
    Reload Page
    
Show Password
    Wait Until Element Is Enabled            ${locator_password} 
    Input Password                           ${locator_password}                12345
    Wait Until Element Is Enabled            ${locator_showPassword} 
    Click Element                            ${locator_showPassword} 
    ${txt}    Get Element Attribute          ${locator_password}                value
    Should Be Equal As Strings               ${txt}                             12345

Disable Button Signin
    [Arguments]                              ${input_email}                  ${input_password}
    Wait Until Element Is Visible            ${locator_email}
    Input Text                               ${locator_email}                ${input_email}
    Wait Until Element Is Visible            ${locator_password}
    Input Password                           ${locator_password}             ${input_password}
    Element Should Be Disabled               ${locator_btn_Signin}
    Reload Page