# -*- coding: UTF-8 -*-

require 'calabash-android/abase'


class SetupPage < Calabash::ABase

  def trait
    "* id:'set_phone'"
  end

  def AssertSetupPage
    check_element_exists "* id:'set_phone'"
  end

  def Logout
    tap_mark "set_exit"
  end

  def SwitchPhone
    tap_mark "更换绑定"
  end

  def GotoBlacklist
    tap_mark "黑名单"
  end

  def GotoAboutUs
    tap_mark "关于我们"
  end

  def SwitchOnLiveNotification
    checked = query "* marked:'item_check' index:0",:checked
    if checked[0] == false
      touch "* marked:'item_check' index:0" #直播信息提醒开关
    end
  end

  def SwitchOffLiveNotification
    checked = query "* marked:'item_check' index:0",:checked
    if checked[0] == true
      touch "* marked:'item_check' index:0" #直播信息提醒开关
    end
  end

  def VerifyLiveNotificationIsOn
    actualState = query "* marked:'item_check' index:0",:checked #直播信息提醒开关
    expect(actualState[0]).to eq(true)
  end

  def VerifyLiveNotificationIsOff
    actualState = query "* marked:'item_check' index:0",:checked #直播信息提醒开关
    expect(actualState[0]).to eq(false)
  end

  def SwitchOnInviteNotification
    checked = query "* marked:'item_check' index:1",:checked
    if checked[0] == false
      touch "* marked:'item_check' index:1" #关注人邀请开关
    end
  end

  def SwitchOffInviteNotification
    checked = query "* marked:'item_check' index:1",:checked
    if checked[0] == true
      touch "* marked:'item_check' index:1" #关注人邀请开关
    end
  end

  def VerifyInviteNotificationIsOn
    actualState = query "* marked:'item_check' index:1",:checked #关注人邀请开关
    expect(actualState[0]).to eq(true)
  end

  def VerifyInviteNotificationIsOff
    actualState = query "* marked:'item_check' index:1",:checked #关注人邀请开关
    expect(actualState[0]).to eq(false)
  end

  def SwitchOnMessageNotification
    checked = query "* marked:'item_check' index:2",:checked
    if checked[0] == false
      touch "* marked:'item_check' index:2" #关注人私聊开关
    end
  end

  def SwitchOffMessageNotification
    checked = query "* marked:'item_check' index:2",:checked
    if checked[0] == true
      touch "* marked:'item_check' index:2" #关注人私聊开关
    end
  end

  def VerifyMessageNotificationIsOn
    actualState = query "* marked:'item_check' index:2",:checked #关注人私聊开关
    expect(actualState[0]).to eq(true)
  end

  def VerifyMessageNotificationIsOff
    actualState = query "* marked:'item_check' index:2",:checked #关注人私聊开关
    expect(actualState[0]).to eq(false)
  end

end

class BlackListPage < Calabash::ABase

  def trait
    "* id:'set_phone'"
  end

  def returnSetupPage
    tap_mark "imv_back"
  end

end

class LogoutAlertWindow < Calabash::ABase

    def trait
      "* id:'dlg_right'"
    end

    def cancelLogout
        tap_mark "dlg_left"
    end

    def confirmLogout
        tap_mark "dlg_right"
    end
end
