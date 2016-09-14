# -*- coding: UTF-8 -*-

require 'calabash-android/abase'

class FollowPage < Calabash::ABase

  def trait
    "* id:'rcv_follow_list'"
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


end
