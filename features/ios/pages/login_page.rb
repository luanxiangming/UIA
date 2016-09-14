# -*- coding: UTF-8 -*-

require 'calabash-cucumber/ibase'

class LaunchPage < Calabash::IBase

  def trait
    "* id:'dudu_aty_guide_contentPager'"
  end

  def through_guide_pages
    wait_for_launch_done
    while element_exists "* marked:'dudu_aty_guide_contentPager'"
      perform_action('drag',80,20,50,50,5)
    end
  end


  def wait_for_launch_done
    result = nil
    wait_for(timeout: 120) do
      if element_exists("* marked:'dudu_aty_guide_contentPager'")
        result = :valid
      else
        result = :invalid
      end
    end

    case result
      when :invalid
        log 'Launch: failed!'
      else
        log 'Launch: succeed!'
    end
  end

end

class LoginPage < Calabash::IBase

  def trait
    "* id:'login_qq_white'"
  end

  def AssertLoginPage
    check_element_exists "* id:'login_qq_white'"
  end

  def await(opts={})
    wait_for_elements_exist([trait])
    self
  end

  def LoginVia arg
    wait_for_element_exists "* text:'#{arg}'"
    tap_mark "#{arg}"
  end

end

class PhoneLoginPage < Calabash::IBase

  def trait
    "* id:'手机号登录'"
  end

  def loginWithNonexistingNumber phone

    clear_text "textField index:0"

    tap_mark "请输入您的手机号码"
    keyboard_enter_text "#{phone}"
  end

  def login(phone,pass)

    clear_text "textField index:0"
    tap_mark "请输入您的手机号码"
    keyboard_enter_text "#{phone}"

    clear_text "textField index:1"
    tap_mark "请输入您的密码"
    keyboard_enter_text "#{pass}"

    tap_mark "登录"

    # wait_for_login_done
  end
end

class PhoneAlertPage < Calabash::IBase

  def trait
    "* id:'button-grad'"
  end

  def cancelPhoneRegistration
    wait_for(timeout: 30) do
      if element_exists "* marked:'取消'"
        tap_mark "取消"
      end
    end
  end

end

class HomePage < Calabash::IBase

  def trait
    "* id:'home_logo'"
  end

  def await(opts={})
    wait_for_elements_exist([trait])
    self
  end

  def AssertHomePage
    check_element_exists "* id:'home_logo'"
  end

  def AssertMinePage
    check_element_exists "* id:'mine_user02'"
  end

  def GotoMinePage
    tap_mark "mine_user02"
  end

  def GotoMailPage
    tap_mark "home_massage"
  end

end

class MinePage < Calabash::IBase

  def trait
    "* id:'mine_setup'"
  end

  def AssertMinePage
    check_element_exists "* id:'mine_setup'"
  end

  def GotoSetupPage
    tap_mark "mine_setup"
  end

end

class SetupPage < Calabash::IBase

  def trait
    "* id:'设置'"
  end

  def AssertSetupPage
    check_element_exists "* id:'设置'"
  end

  def Logout arg
    tap_mark "#{arg}"
  end

  def confirmLogout
    wait_for(timeout: 30) do
      if element_exists "* marked:'确定'"
        tap_mark "确定"
      end
    end
  end

end
