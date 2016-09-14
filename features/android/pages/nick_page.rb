# -*- coding: UTF-8 -*-

require 'calabash-android/abase'

class NickPage < Calabash::ABase

  def trait
    "* id:'layout_nick'"
  end

  def AssertNickPage
    check_element_exists "* id:'layout_nick'"
  end

  def EditNickName name

    clear_text "edit_nick"
    tap_mark "edit_nick"
    keyboard_enter_text "#{name}"
    hide_soft_keyboard

  end

  def ReturnProfilePage
    tap_mark "imv_back"
  end

  def SaveNickName
    touch "* text:'保存'"
  end



end
