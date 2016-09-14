假如(/^用户准备登录$/) do
  @current_page = page(LoginPage).await(timeout:30)
end

当(/^用户输入未注册手机号码$/) do
  user = CREDENTIALS[:invalid_user]
  @current_page = @current_page.LoginViaPhone(user[:phone])
end

当(/^点击下一步$/) do
  @current_page = page(LoginPage).await(timeout:30)
  @current_page = @current_page.tapNext
end

那么(/^用户会被提示当前手机号未注册$/) do
  @current_page = page(LoginPage).await(timeout:30)
  @current_page.AssertUnregisteredNumber
end

那么(/^用户可以看到密码输入页面$/) do
  @current_page = page(PasswordPage).await(timeout:30)
end

当(/^点击登录$/) do
  @current_page = page(PasswordPage).await(timeout:30)
  @current_page.tapLogin
end

那么(/^用户会被提示帐号密码无效$/) do
  @current_page.assertErrorMsg
end

当(/^用户输入已注册手机号码$/) do
  @current_page = page(LoginPage).await(timeout:30)
  user = CREDENTIALS[:valid_user]
  @current_page = @current_page.LoginViaPhone(user[:phone])
end

那么(/^用户输入错误密码$/) do
  @current_page = page(PasswordPage).await(timeout:30)
  user = CREDENTIALS[:invalid_pass]
  @current_page = @current_page.inputPassword(user[:password])
end

当(/^用户再次输入正确密码$/) do
  user = CREDENTIALS[:valid_pass]
  @current_page = @current_page.inputPassword(user[:password])
end

那么(/^用户可以成功登录并进入主页$/) do
  @current_page = page(HomePage).await(timeout:30)
  @current_page.await
end


假如(/^用户准备退出登录$/) do
  @current_page = page(HomePage).await(timeout:30)
end

当(/^用户打开我的个人页面$/) do
  @current_page = page(HomePage).await(timeout:30)
  @current_page = @current_page.GotoMinePage
  @current_page = page(MinePage).await(timeout:30)
  @current_page.await
end

当(/^点击设置$/) do
  @current_page.GotoSetupPage
end

那么(/^用户可以看到个人设置页面$/) do
  @current_page = page(SetupPage).await(timeout:30)
end

当(/^用户点击退出$/) do
  @current_page = page(SetupPage).await(timeout:30)
  @current_page.Logout
end

那么(/^用户可以看到退出确认页面$/) do
  @current_page = page(LogoutAlertWindow).await(timeout:30)
  @current_page.await
end

当(/^用户点击取消$/) do
  @current_page.cancelLogout
end

那么(/^用户返回个人设置页面$/) do
  @current_page = page(SetupPage).await(timeout:30)
  @current_page.await
end

当(/^用户点击确定$/) do
  @current_page = page(LogoutAlertWindow).await(timeout:30)
  @current_page.confirmLogout
end

那么(/^用户可以返回登录页面$/) do
  @current_page = page(LoginPage).await(timeout:30)
  @current_page.await
end
