# -*- coding: UTF-8 -*-

require 'calabash-android/abase'


class PreLivePage < Calabash::ABase

  def trait
    "* id:'tv_start'"
  end

  def await(opts={})
    wait_for_elements_exist([trait])
    self
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

  def closePresetting
    tap_mark "iv_close_pre_setting"
  end

end
