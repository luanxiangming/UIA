# -*- coding: UTF-8 -*-

require 'calabash-cucumber/ibase'

class HomePage < Calabash::IBase

  def trait
    "* id:'home_logo'"
  end
  
  def GotoMyLivePage
    tap_mark "mine_play02"
  end

end


class MailPage < Calabash::IBase

  def trait
    "* id:'站内信'"
  end
  
  def await(opts={})
    wait_for_elements_exist([trait])
    self
  end

  def GotoOfficialNotification
    wait_for_element_exists "* text:'V团队'"
    tap_mark "V团队"
  end

  def GotoLiveNotification
    wait_for_element_exists "* text:'直播提醒'"
    tap_mark "直播提醒"
  end

  def GotoFansNotification
    wait_for_element_exists "* text:'粉丝'"
    tap_mark "粉丝"
  end

end

class OfficialMailPage < Calabash::IBase

  def trait
    "* id:'V团队'"
  end
  
  def await(opts={})
    wait_for_elements_exist([trait])
    self
  end

  def returnMailPage
    tap_mark "home_back"
  end


end

class LiveNotificationPage < Calabash::IBase

  def trait
    "* id:'直播提醒'"
  end
  
  def await(opts={})
    wait_for_elements_exist([trait])
    self
  end

  def returnMailPage
    tap_mark "home_back"
  end

end

class FansNotificationPage < Calabash::IBase

  def trait
    "* id:'粉丝'"
  end
  
  def await(opts={})
    wait_for_elements_exist([trait])
    self
  end

  def returnMailPage
    tap_mark "home_back"
  end

end

