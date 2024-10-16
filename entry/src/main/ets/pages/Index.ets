//导入toast包
import promptAction from '@ohos.promptAction'
import { router } from '@kit.ArkUI'

@Entry
@Component
struct Login {
  @State username: string = "";
  @State pass: string = "";

  build() {

    Column() {

      Image($r('app.media.launcher')).width(100).height(100).margin(100)

      TextInput({ placeholder: '输入账号' }).margin({ top: 20 }).id("user")
        .onChange((text) => {
          this.username = text
          console.info(text + '输入法回车键的类型值')
        })
      TextInput({ placeholder: '输入密码' }).type(InputType.Password).margin({ top: 20 }).id("pass")
        .onChange((text) => {
          this.pass = text
          console.info(text + '输入法回车键的类型值')
        })
      Button('登录')
        .width(150)
        .backgroundColor(Color.Green)
        .fontColor("#ffffff")
        .margin({ top: 20 })
        .onClick(event => {

          if (this.username == null || this.pass == null || this.username == "" || this.pass == "") {
            promptAction.showToast({
              message: "参数不能为空",
              duration: 1000
            })
          } else {
            router.replaceUrl({ url: 'pages/Main' });
          }
        })
    }.padding(20)
  }
}