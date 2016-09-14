假如(/^用户打开我的页面$/) do
  @current_page = page(HomePage).await(timeout:30)
  @current_page.GotoMinePage
end

当(/^用户点击设置$/) do
  @current_page = page(MinePage).await(timeout:30)
  @current_page.GotoSetupPage
end

那么(/^用户可以跳转到设置页面$/) do
  @current_page = page(SetupPage).await(timeout:30)
end

当(/^用户点击黑名单$/) do
  @current_page.GotoBlacklist
end

那么(/^用户可以跳转到黑名单页面$/) do
  @current_page = page(BlackListPage).await(timeout:30)
end

当(/^用户点击返回设置页面$/) do
  @current_page.returnSetupPage
end

那么(/^用户可以返回设置页面$/) do
  @current_page = page(SetupPage).await(timeout:30)
end

当(/^用户关闭直播信息提醒$/) do
  @current_page.SwitchOffLiveNotification
end

那么(/^直播信息提醒显示为关闭$/) do
  @current_page.VerifyLiveNotificationIsOff
end

当(/^用户再次打开直播信息提醒$/) do
  @current_page.SwitchOnLiveNotification
end

那么(/^直播信息提醒显示为打开$/) do
  @current_page.VerifyLiveNotificationIsOn
end

当(/^用户打开关注人邀请$/) do
  @current_page.SwitchOnInviteNotification
end

那么(/^关注人邀请显示为打开$/) do
  @current_page.VerifyInviteNotificationIsOn
end

当(/^用户再次关闭关注人邀请$/) do
  @current_page.SwitchOffInviteNotification
end

那么(/^关注人邀请显示为关闭$/) do
  @current_page.VerifyInviteNotificationIsOff
end

当(/^用户打开关注人私聊$/) do
  @current_page.SwitchOnMessageNotification
end

那么(/^关注人私聊显示为打开$/) do
  @current_page.VerifyMessageNotificationIsOn
end

当(/^用户再次关闭关注人私聊$/) do
  @current_page.SwitchOffMessageNotification
end

那么(/^关注人私聊显示为关闭$/) do
  @current_page.VerifyMessageNotificationIsOff
end

当(/^用户点击关于我们$/) do
  @current_page.GotoAboutUs
end

那么(/^用户可以跳转到关于我们页面$/) do
  @current_page = page(AboutUsPage).await(timeout:30)
end

那么(/^用户可以看到版本号$/) do
  @current_page.CheckVersion
end
