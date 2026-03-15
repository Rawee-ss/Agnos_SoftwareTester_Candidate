*** Settings ***
Library                    SeleniumLibrary
Resource                   ${CURDIR}/Login_Keyword.robot
Suite Setup                Set Selenium Speed    0.2s
Test Setup                 Open Website Page                    ${url_login}
Test Teardown              Close Browser
Suite Teardown             Close All Browsers


*** Test Cases ***
Verify Default Login Page
    [Documentation]    TC-LOGIN-001 แสดงรายละเอียดหน้า Login
    Default Login Page

Verify Login Pass Case
    [Documentation]    TC-LOGIN-002 การเข้าสู่ระบบสำเร็จ
    Login Pass Case

Verify Input Email And Password Fail Case
    [Documentation]    TC-LOGIN-002 to TC-LOGIN-005
    [Template]    Input Email And Password Fail Case
    test@gmailcom                        12345
    testgmil.com                         12345
    เทส@gmail.com                        12345
    test@hotmail.com                     12345
    test@gmail.com                       1234
    test@gmail.com                       เทส
    test@gmail.com                       test
    test1234@gmail.com                   ABC12345#

Verify Show Password
    [Documentation]    TC-LOGIN-006 แสดงรายละเอียดใน Password
    Show Password

Verify Disable Button Signin
    [Documentation]    TC-LOGIN-007 to TC-LOGIN-008 ระบบปิดใช้งานปุ่ม Sign in เนื่องจากไม่กรอกข้อมูลใน Field E-mail และ Password
    [Template]    Disable Button Signin
    test@gmail.com                       ${EMPTY}
    ${EMPTY}                             12345