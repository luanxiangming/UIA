假如(/^用户已经成功登录$/) do
  @current_page = page(HomePage).await(timeout:30)
  @current_page.await
end

当(/^用户进入首页$/) do
  @current_page.AssertHomePage
end

那么(/^用户可以看到首页页面按钮$/) do
  @current_page.AssertHomePage
end

那么(/^用户可以看到关注页面按钮$/) do
  @current_page.AssertFollowPage
end

那么(/^用户可以看到直播页面按钮$/) do
  @current_page.AssertLivePage
end

那么(/^用户可以看到站内信标签按钮$/) do
  @current_page.AssertMailPage
end

那么(/^用户可以看到个人页面按钮$/) do
  @current_page.AssertMinePage
end

当(/^用户点击关注页面按钮$/) do
  @current_page.GotoFollowPage
end

那么(/^用户可以跳转到关注页面$/) do
  @current_page = page(FollowPage).await(timeout:30)
end

当(/^用户点击直播页面按钮$/) do
  @current_page.GotoPreLivePage
end

那么(/^用户可以跳转到直播页面$/) do
  @current_page = page(PreLivePage).await(timeout:30)
end

当(/^用户关闭直播页面$/) do
  @current_page.closePresetting
end

当(/^点击站内信页面按钮$/) do
  @current_page = page(FollowPage).await(timeout:30)
  @current_page.GotoMailPage
end

当(/^用户点击个人页面按钮$/) do
  @current_page = page(MailPage).await(timeout:30)
  @current_page.GotoMinePage
end

那么(/^用户可以跳转到个人页面$/) do
  @current_page = page(MinePage).await(timeout:30)
end

当(/^用户点击首页页面按钮$/) do
  @current_page.GotoHomePage
end

那么(/^用户可以回到首页页面$/) do
  @current_page = page(HomePage).await(timeout:30)
  @current_page.AssertHomePage
end
