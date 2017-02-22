# language: zh-CN
# encoding: UTF-8

功能: 登入/登出

  @手机号登录 @ios @android
  场景: 用户通过手机登录
    假如 用户准备登录
    当 用户输入未注册手机号码
    并且 点击下一步
    那么 用户会被提示当前手机号未注册
    当 用户输入已注册手机号码
    并且 点击下一步
    那么 用户可以看到密码输入页面
    并且 用户输入错误密码
    并且 点击登录
    那么 用户会被提示帐号密码无效
    当 用户再次输入正确密码
    并且 点击登录
    那么 用户可以成功登录并进入主页

  @退出登录
  场景: 用户退出登录
    假如 用户准备退出登录
    当 用户打开我的个人页面
    并且 点击设置
    那么 用户可以看到个人设置页面
    当 用户点击退出
    那么 用户可以看到退出确认页面
    当 用户点击取消
    那么 用户返回个人设置页面
    当 用户点击退出
    那么 用户可以看到退出确认页面
    当 用户点击确定
    那么 用户可以返回登录页面
