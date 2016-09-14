# -*- coding: UTF-8 -*-

require 'calabash-android/abase'

class LocationPage < Calabash::ABase

  def trait
    "* id:'layout_location'"
  end

  def AssertLocationPage
    check_element_exists "* id:'layout_location'"
  end


  def ReturnProfilePage
    tap_mark "imv_back"
  end

  def SelectLocation location
    touch "* text:'#{location}'"
  end


end
