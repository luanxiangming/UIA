当(/^用户点击站内信按钮$/) do
  @current_page = page(HomePage).await(timeout:30)
  @current_page.GotoMailPage
end

那么(/^用户可以跳转到站内信页面$/) do
  @current_page = page(MailPage).await(timeout:30)
end

当(/^用户点击官方消息$/) do
  @current_page.GotoOfficialNotification
end

那么(/^用户可以查看官方消息页面$/) do
  @current_page = page(OfficialMailPage).await(timeout:30)
  @current_page.await
end

当(/^用户返回通知页面$/) do
  @current_page.returnMailPage
end

当(/^点击开播提醒$/) do
  @current_page = page(MailPage).await(timeout:30)
  @current_page.GotoLiveNotification
end

那么(/^用户可以查看开播提醒页面$/) do
  @current_page = page(LiveNotificationPage).await(timeout:30)
  @current_page.await
end

当(/^点击粉丝$/) do
  @current_page = page(MailPage).await(timeout:30)
  @current_page.GotoFansNotification
end

那么(/^用户可以查看粉丝关注页面$/) do
  @current_page = page(FansNotificationPage).await(timeout:30)
  @current_page.await
end
