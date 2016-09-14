当(/^用户点击修改个人资料按钮$/) do
  @current_page = page(MinePage).await(timeout:30)
  @current_page.GotoProfilePage
end

那么(/^用户可以跳转到个人资料页面$/) do
  @current_page = page(ProfilePage).await(timeout:30)
end

那么(/^用户可以查看我的头像$/) do
  @current_page.AssertAvatar
end

那么(/^用户可以查看我的昵称$/) do
  @current_page.AssertNickname
end

那么(/^用户可以查看我的ID$/) do
  @current_page.AssertUserID
end

那么(/^用户可以查看我的性别$/) do
  @current_page.AssertSex
end

那么(/^用户可以查看个性签名$/) do
  @current_page.AssertDescription
end

那么(/^用户可以查看我的地区$/) do
  @current_page.AssertRegion
end


假如(/^用户打开个人资料页面$/) do
  @current_page = page(HomePage).await(timeout:30)
  @current_page.GotoMinePage
  @current_page = page(MinePage).await(timeout:30)
  @current_page.GotoProfilePage
end

当(/^用户点击昵称$/) do
  @current_page = page(ProfilePage).await(timeout:30)
  @current_page.GotoNickPage
end

那么(/^用户可以跳转到修改昵称页面$/) do
  @current_page = page(NickPage).await(timeout:30)
  @current_page.AssertNickPage
end

当(/^用户修改昵称为非保存昵称$/) do
  nick = ALIASES[:unsaved_name]
  @current_page = @current_page.EditNickName(nick[:name])
end

当(/^返回个人页面$/) do
  @current_page = page(NickPage).await(timeout:30)
  @current_page.ReturnProfilePage
end

那么(/^个人昵称不会生效$/) do
  @current_page = page(ProfilePage).await(timeout:30)
  nick = ALIASES[:unsaved_name]
  @current_page.VerifyUnsavedNickName(nick[:name])
end

当(/^用户修改昵称为保存昵称$/) do
  nick = ALIASES[:saved_name]
  @current_page = @current_page.EditNickName(nick[:name])
end

当(/^点击保存$/) do
  @current_page = page(NickPage).await(timeout:30)
  @current_page.SaveNickName
end

那么(/^个人昵称会生效$/) do
  @current_page = page(ProfilePage).await(timeout:30)
  nick = ALIASES[:saved_name]
  @current_page.VerifySavedNickName(nick[:name])
end

当(/^用户点击性别选择男$/) do
  @current_page.SelectGender "male"
end

那么(/^性别会显示男$/) do
  @current_page = page(ProfilePage).await(timeout:30)
  gender = GENDERS[:male]
  @current_page.VerifySavedGender(gender[:gender])
end

当(/^用户点击性别选择女$/) do
  @current_page.SelectGender "female"
end

那么(/^性别会显示女$/) do
  @current_page = page(ProfilePage).await(timeout:30)
  gender = GENDERS[:female]
  @current_page.VerifySavedGender(gender[:gender])
end

当(/^用户点击性别选择保密$/) do
  @current_page.SelectGender "secret"
end

那么(/^性别会显示保密$/) do
  @current_page = page(ProfilePage).await(timeout:30)
  gender = GENDERS[:secret]
  @current_page.VerifySavedGender(gender[:gender])
end

当(/^用户点击性别选择取消$/) do
  @current_page.SelectGender "cancel"
end

当(/^用户点击个性签名$/) do
  @current_page.GotoSignaturePage
end

那么(/^用户可以跳转到修改签名页面$/) do
  @current_page = page(SignaturePage).await(timeout:30)
  @current_page.AssertSignaturePage
end

当(/^用户输入非保存签名$/) do
  sign = SIGNATURES[:unsaved_sign]
  @current_page = @current_page.EditSignature(sign[:signature])
end

当(/^点击返回个人页面$/) do
  @current_page = page(SignaturePage).await(timeout:30)
  @current_page.ReturnProfilePage
end

那么(/^个性签名不会生效$/) do
  @current_page = page(ProfilePage).await(timeout:30)
  sign = SIGNATURES[:unsaved_sign]
  @current_page.VerifyUnsavedSignature(sign[:signature])
end

当(/^用户输入保存签名$/) do
  sign = SIGNATURES[:saved_sign]
  @current_page = @current_page.EditSignature(sign[:signature])
end

当(/^保存签名$/) do
  @current_page = page(SignaturePage).await(timeout:30)
  @current_page.SaveSignature
end

那么(/^个性签名会生效$/) do
  @current_page = page(ProfilePage).await(timeout:30)
  sign = SIGNATURES[:saved_sign]
  @current_page.VerifySavedSignature(sign[:signature])
end

当(/^用户点击地区$/) do
  @current_page.GotoLocationPage
end

那么(/^用户可以跳转到区号选择页面$/) do
  @current_page = page(LocationPage).await(timeout:30)
  @current_page.AssertLocationPage
end

当(/^用户选择阿富汗$/) do
  location = LOCATIONS[:Afghan]
  @current_page.SelectLocation(location[:name])
end

那么(/^地区将会显示阿富汗$/) do
  @current_page = page(ProfilePage).await(timeout:30)
  location = LOCATIONS[:Afghan]
  @current_page.VerifySavedLocation(location[:name])
end
