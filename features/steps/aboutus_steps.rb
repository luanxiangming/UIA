假如(/^用户打开关于我们$/) do
  @current_page = page(HomePage).await(timeout:30)
  @current_page.GotoMinePage
  @current_page = page(MinePage).await(timeout:30)
  @current_page.GotoSetupPage
  @current_page = page(SetupPage).await(timeout:30)
  @current_page.GotoAboutUs
end

当(/^用户点击社会公约$/) do
  @current_page = page(AboutUsPage).await(timeout:30)
  @current_page.GotoAssociatePage
end

那么(/^用户可以跳转到社会公约页面$/) do
  @current_page = page(AssociatePage).await(timeout:30)
  @current_page.AssertAssociatePage
end

当(/^用户点击返回关于我们页面$/) do
  @current_page.returnAboutUsPage
end

那么(/^用户可以返回关于我们页面$/) do
  @current_page = page(AboutUsPage).await(timeout:30)
end

当(/^用户点击隐私政策$/) do
  @current_page.GotoPrivacyPage
end

那么(/^用户可以跳转到隐私政策页面$/) do
  @current_page = page(PrivacyPage).await(timeout:30)
  @current_page.AssertPrivacyPage
end

当(/^用户点击服务条款$/) do
  @current_page.GotoServicePage
end

那么(/^用户可以跳转到服务条款页面$/) do
  @current_page = page(ServicePage).await(timeout:30)
  @current_page.AssertServicePage
end

当(/^用户点击联系我们$/) do
  @current_page.GotoContactPage
end

那么(/^用户可以跳转到联系我们页面$/) do
  @current_page = page(ContactPage).await(timeout:30)
  @current_page.AssertContactPage
end
