# -*- coding: UTF-8 -*-

require 'calabash-android/abase'

class MinePage < Calabash::ABase

  def trait
    "* id:'layout_follow'"
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

  def GotoSetupPage
    tap_mark "item_setting"
  end

  def GotoProfilePage
    tap_mark "user_edit"
  end

  def AssertAvatar
    check_element_exists "* id:'user_headicon'"
  end

  def AssertNickname
    check_element_exists "* id:'user_name'"
  end

  def AssertDescription
    check_element_exists "* id:'user_intro'"
  end

  def AssertUserID
    check_element_exists "* id:'user_number'"
  end

  def AssertFollowerNum
    # followerNum = query "* marked:'user_follow'",:text
    # assert_text "#{followerNum}
    check_element_exists "* id:'user_follow'"
  end

  def AssertFansNum
    # fansNum = query "* marked:'user_fans'",:text
    # assert_text "#{fansNum}"
    check_element_exists "* id:'user_fans'"
  end

  def AssertVTicketRanking
    check_element_exists "* id:'item_vticket_ranking'"
  end

  def AssertVDrill
    check_element_exists "* id:'item_vdrill'"
  end

  def AssertVTicket
    check_element_exists "* id:'item_vticket'"
  end

  def AssertSetup
    check_element_exists "* id:'item_setting'"
  end

end
