# -*- coding: UTF-8 -*-

require 'calabash-android/abase'


class LoginPage < Calabash::ABase

  def trait
    "* id:'layout_third_login'"
  end

  def AssertLoginPage
    check_element_exists "* marked:'btn_wechat'"
  end

  def await(opts={})
    wait_for_elements_exist([trait])
    self
  end

  def tapNext
    wait_for_elements_exist "* marked:'btn_next'"
    tap_mark "btn_next"
  end

  def LoginViaPhone phone

    clear_text "edit_phone"
    tap_mark "edit_phone"
    keyboard_enter_text "#{phone}"
    hide_soft_keyboard
    sleep 2
    # clear_text "textField index:1"
    # tap_mark "请输入您的密码"
    # keyboard_enter_text "#{pass}"

    # wait_for_login_done
  end
end


class CaptchaPage < Calabash::ABase

  def trait
    "* id:'vcode_layout'"
  end

  def AssertUnregisteredNumber
    wait_for_elements_exist "* marked:'vcode_layout'"
    wait_for_elements_exist "* marked:'imv_back'"
    tap_mark "imv_back"
  end

end

class PasswordPage < Calabash::ABase

  def trait
    "* id:'pwd_layout'"
  end

  def inputPassword pwd
    clear_text "edit"
    tap_mark "edit"
    keyboard_enter_text "#{pwd}" #有些手机开启密码安全输入会导致键盘invisible
    hide_soft_keyboard
  end

  def tapLogin
    wait_for_elements_exist "* marked:'btn_next'"
    tap_mark "btn_next"
  end

  def tapBack
    tap_mark "imv_back"
  end

  def assertErrorMsg
    wait_for_elements_exist("* text:'账号或密码无效'")
  end

end

