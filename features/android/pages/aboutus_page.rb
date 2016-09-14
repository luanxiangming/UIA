# -*- coding: UTF-8 -*-

require 'calabash-android/abase'

class AboutUsPage < Calabash::ABase

  def trait
    "* id:'about_policy'"
  end

  def returnSetupPage
    tap_mark "imv_back"
  end

  def CheckVersion
    wait_for_element_exists "* marked:'version'"
  end

  def GotoAssociatePage
    tap_mark "about_associate"
  end

  def GotoPrivacyPage
    tap_mark "about_policy"
  end

  def GotoServicePage
    tap_mark "about_service"
  end

  def GotoContactPage
    tap_mark "about_contact"
  end

end

class AssociatePage < Calabash::ABase

  def trait
    "* id:'webview'"
  end

  def AssertAssociatePage
    check_element_exists "* text:'社会公约'"
  end

  def returnAboutUsPage
    tap_mark "imv_back"
  end

end

class PrivacyPage < Calabash::ABase

  def trait
    "* id:'webview'"
  end

  def AssertPrivacyPage
    check_element_exists "* text:'隐私政策'"
  end

  def returnAboutUsPage
    tap_mark "imv_back"
  end

end

class ServicePage < Calabash::ABase

  def trait
    "* id:'webview'"
  end

  def AssertServicePage
    check_element_exists "* text:'服务条款'"
  end

  def returnAboutUsPage
    tap_mark "imv_back"
  end

end

class ContactPage < Calabash::ABase

  def trait
    "* id:'text_title'"
  end

  def AssertContactPage
    check_element_exists "* text:'联系我们'"
  end

  def returnAboutUsPage
    tap_mark "imv_back"
  end

end
