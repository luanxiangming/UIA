假如(/^用户登录首页$/) do
  @current_page = page(HomePage).await(timeout:30)
end

当(/^用户点击我的页面按钮$/) do
  @current_page.GotoMinePage
end

那么(/^用户可以跳转到我的页面$/) do
  @current_page = page(MinePage).await(timeout:30)
end

那么(/^用户可以看到我的头像$/) do
  @current_page.AssertAvatar
end

那么(/^用户可以看到我的昵称$/) do
  @current_page.AssertNickname
end

那么(/^用户可以看到个性签名$/) do
  @current_page.AssertDescription
end

那么(/^用户可以看到用户ID$/) do
  @current_page.AssertUserID
end

那么(/^用户可以看到关注人数$/) do
  @current_page.AssertFollowerNum
end

那么(/^用户可以看到粉丝人数$/) do
  @current_page.AssertFollowerNum
end

那么(/^用户可以看到V票排行榜$/) do
  @current_page.AssertVTicketRanking
end

那么(/^用户可以看到我的V钻$/) do
  @current_page.AssertVDrill
end

那么(/^用户可以看到我的V票$/) do
  @current_page.AssertVTicket
end

那么(/^用户可以看到我的设置$/) do
  @current_page.AssertSetup
end
