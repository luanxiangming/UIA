# -*- coding: UTF-8 -*-

require 'calabash-android/abase'

class ProfilePage < Calabash::ABase

  def trait
    "* id:'item_sex'"
  end

  def AssertProfilePage
    check_element_exists "* id:'item_sex'"
  end

  def AssertAvatar
    check_element_exists "* id:'item_head'"
  end

  def AssertNickname
    check_element_exists "* id:'item_nick'"
  end

  def AssertUserID
    check_element_exists "* id:'item_id'"
  end

  def AssertSex
    check_element_exists "* id:'item_sex'"
  end

  def AssertDescription
    check_element_exists "* id:'item_info'"
  end

  def AssertRegion
    check_element_exists "* id:'item_area'"
  end

  def GotoNickPage
    tap_mark "item_nick"
  end

  def GotoSignaturePage
    tap_mark "item_sign"
  end

  def GotoLocationPage
    tap_mark "item_area"
  end

  def VerifyUnsavedNickName unsavedNickName
    wait_for_elements_exist "* marked:'item_info' index:0"
    actualNickName = query "* marked:'item_info' index:0",:text #昵称栏
    expect(actualNickName[0]).not_to eq(unsavedNickName)
  end

  def VerifySavedNickName savedNickName
    wait_for_elements_exist "* marked:'item_info' index:0"
    actualNickName = query "* marked:'item_info' index:0",:text #昵称栏
    expect(actualNickName[0]).to eq(savedNickName)
  end

  def VerifyUnsavedGender gender
    wait_for_elements_exist "* marked:'item_info' index:2"
    actualGender = query "* marked:'item_info' index:2",:text #性别栏
    expect(actualGender[0]).not_to eq(gender)
  end

  def VerifySavedGender gender
    wait_for_elements_exist "* marked:'item_info' index:2"
    actualGender = query "* marked:'item_info' index:2",:text #性别栏
    expect(actualGender[0]).to eq(gender)
  end

  def VerifyUnsavedSignature sign
    wait_for_elements_exist "* marked:'item_info' index:3"
    actualSign = query "* marked:'item_info' index:3",:text #签名栏
    expect(actualSign[0]).not_to eq(sign)
  end

  def VerifySavedSignature sign
    wait_for_elements_exist "* marked:'item_info' index:3"
    actualSign = query "* marked:'item_info' index:3",:text #签名栏
    expect(actualSign[0]).to eq(sign)
  end

  def VerifySavedLocation location
    wait_for_elements_exist "* marked:'item_info' index:4"
    actualLocation = query "* marked:'item_info' index:4",:text #地区栏
    expect(actualLocation[0]).to eq(location)
  end

  def SelectGender gender
    wait_for_elements_exist "* marked:'item_sex'"
    tap_mark "item_sex"
    case gender
    when 'male'
      wait_for_elements_exist "* marked:'txt_male'"
      tap_mark "txt_male"
    when 'female'
      wait_for_elements_exist "* marked:'txt_female'"
      tap_mark "txt_female"
    when 'secret'
      wait_for_elements_exist "* marked:'txt_secret'"
      tap_mark "txt_secret"
    when 'cancel'
      wait_for_elements_exist "* marked:'btn_cancel'"
      tap_mark "btn_cancel"
    end
  end

end
