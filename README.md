- **开启模拟器如下配置**
- **开启后，其他安卓模拟器就不能用了**
```
首先打开控制面板 > 程序 > 程序与功能 > 启动或关闭Windows功能，
找到并勾选“Hyper-V”、“Windows虚拟机监控程序平台”、“虚拟机平台”，
点击确定并重启电脑。
若勾选后启动模拟器仍然提示该错误，
需要以管理员权限打开命令行窗口并执行：`bcdedit /set hypervisorlaunchtype auto`并重启电脑。
```

  
