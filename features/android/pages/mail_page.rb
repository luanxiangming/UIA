# -*- coding: UTF-8 -*-

require 'calabash-android/abase'

class MailPage < Calabash::ABase

  def trait
    "* id:'tab_msg'"
  end

  def await(opts={})
    wait_for_elements_exist([trait])
    self
  end

  def AssertMinePage
    check_element_exists "* id:'layout_follow'"
  end

  def GotoHomePage
    tap_mark "tab_home"
  end

  def GotoFollowPage
    tap_mark "tab_follow"
  end

  def GotoPreLivePage
    tap_mark "tab_live"
  end

  def GotoMailPage
    tap_mark "tab_msg"
  end

  def GotoMinePage
    tap_mark "tab_mine"
  end

  def GotoOfficialNotification
    wait_for_element_exists "* text:'官方消息'"
    tap_mark "官方消息"
  end

  def GotoLiveNotification
    wait_for_element_exists "* text:'开播提醒'"
    tap_mark "开播提醒"
  end

  def GotoFansNotification
    wait_for_element_exists "* text:'粉丝'"
    tap_mark "粉丝"
  end

end

class OfficialMailPage < Calabash::ABase

  def trait
    "* id:'imv_del'"
  end

  def await(opts={})
    wait_for_elements_exist([trait])
    self
  end

  def returnMailPage
    tap_mark "imv_back"
  end


end

class LiveNotificationPage < Calabash::ABase

  def trait
    "* id:'imv_del'"
  end

  def await(opts={})
    wait_for_elements_exist([trait])
    self
  end

  def returnMailPage
    tap_mark "imv_back"
  end

end

class FansNotificationPage < Calabash::ABase

  def trait
    "* id:'imv_del'"
  end

  def await(opts={})
    wait_for_elements_exist([trait])
    self
  end

  def returnMailPage
    tap_mark "imv_back"
  end

end
