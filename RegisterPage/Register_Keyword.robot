*** Settings ***
Library             SeleniumLibrary
Resource            ${CURDIR}/../LoginPage/Login_Keyword.robot
Resource            ${CURDIR}/Register_Veriable.robot


*** Keywords ***
Default Register Page
    [Documentation]    แสดงรายละเอียดหน้า Login
    Wait Until Element Is Visible                        ${logo_register}
    Wait Until Page Contains                             AI SCREENING DASHBOARD
    Wait Until Page Contains                             Create Account
    Wait Until Element Is Visible                        ${locator_email}
    Wait Until Element Is Visible                        ${locator_password}
    Wait Until Element Is Visible                        ${locator_showPassword}
    Wait Until Element Is Visible                        ${locator_confirmPassword}
    Wait Until Element Is Visible                        ${locator_showConfirmPassword}
    Wait Until Element Is Visible                        ${locator_btn_confirm}

Register Pass Case
    [Arguments]    ${input_email}    ${input_pass}    ${input_conPass} 
    Open Website Page                                    ${url_register}
    Wait Until Element Is Visible                        ${locator_email}
    Input Text                                           ${locator_email}                    ${input_email}
    Wait Until Element Is Visible                        ${locator_password}
    Input Password                                       ${locator_password}                 ${input_pass}
    Wait Until Element Is Visible                        ${locator_confirmPassword}
    Input Password                                       ${locator_confirmPassword}          ${input_conPass}
    Wait Until Element Is Visible                        ${locator_btn_confirm}
    Click Element                                        ${locator_btn_confirm}
    Wait Until Element Is Not Visible                    ${locator_msg_email}
    Wait Until Element Is Not Visible                    ${locator_msg_password}
    Wait Until Element Is Not Visible                    ${locator_msg_ConfirmPassword}
    Wait Until Element Is Visible                        ${msg_createSuccess}  
    Wait Until Location Contains                         ${url_login}
    Wait Until Page Contains                             Log-in
    Close Browser  