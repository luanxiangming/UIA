# -*- coding: UTF-8 -*-

require 'calabash-android/abase'


class HomePage < Calabash::ABase

  def trait
    "* id:'tab_home'"
  end

  def await(opts={})
    wait_for_elements_exist([trait])
    self
  end

  def AssertHomePage
    check_element_exists "* id:'tab_home'"
  end

  def AssertFollowPage
    check_element_exists "* id:'tab_follow'"
  end

  def AssertLivePage
    check_element_exists "* id:'tab_live'"
  end

  def AssertMailPage
    check_element_exists "* id:'tab_msg'"
  end

  def AssertMinePage
    check_element_exists "* id:'tab_mine'"
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
