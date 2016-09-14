# -*- coding: UTF-8 -*-

require 'calabash-android/abase'

class SignaturePage < Calabash::ABase

  def trait
    "* id:'layout_sign'"
  end

  def AssertSignaturePage
    check_element_exists "* id:'layout_sign'"
  end

  def EditSignature sign

    clear_text "edit_sign"
    tap_mark "edit_sign"
    keyboard_enter_text "#{sign}"
    hide_soft_keyboard

  end

  def ReturnProfilePage
    tap_mark "imv_back"
  end

  def SaveSignature
    touch "* text:'保存'"
  end


end
