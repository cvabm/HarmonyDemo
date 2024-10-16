//导入toast包
import promptAction from '@ohos.promptAction'
import { router } from '@kit.ArkUI'

@Entry
@Component
struct Main {
  build() {
    Column() {
      List() {
        ListItem() {
          Text("test1").fontSize(24).margin(5)
        }

        ListItem() {
          Text("test2").fontSize(24).margin(5)
        }

        ListItem() {
          Text("test3").fontSize(24).margin(5)
        }

        ListItem() {
          Text("test4").fontSize(24).margin(5)
        }
      }
      .listDirection(Axis.Vertical)
      .lanes(1)
      .alignListItem(ListItemAlign.Center)
      .margin(100)

      Button('注销')
        .width(150)
        .backgroundColor(Color.Green)
        .fontColor("#ffffff")
        .margin({ top: 20 })
        .onClick(event => {

          AlertDialog.show(
            {
              title: '是否注销?',
              subtitle: '',
              message: '',
              autoCancel: true,
              alignment: DialogAlignment.Bottom,
              gridCount: 4,
              offset: { dx: 0, dy: -20 },
              primaryButton: {
                value: 'cancel',
                action: () => {
                  promptAction.showToast({ message: "取消了" })
                }
              },
              secondaryButton: {
                enabled: true,
                defaultFocus: true,
                style: DialogButtonStyle.HIGHLIGHT,
                value: 'ok',
                action: () => {
                  console.info('Callback when the second button is clicked')
                  router.replaceUrl({ url: 'pages/Index' });
                }
              }
            })


        })
    }.padding(20)
  }
}