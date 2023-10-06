import * as commonConst from '../common/constants/ListStyleConstants';

@Component
export struct Setting{

  settingList:Object[]=[
    {
      name:'设置背景',
      // icon:,
      action:()=>{
        ActionSheet.show({
          title: '设置背景',
          message: '请选择您要设置的背景',
          autoCancel: true,
          confirm: {
            value: '确认',
            action: () => {
              console.log('Get Alert Dialog handled')
            }
          },
          cancel: () => {
            console.log('actionSheet canceled')
          },
          alignment: DialogAlignment.Bottom,
          offset: { dx: 0, dy: -10 },
          sheets: [
            {
              title: '花朵',
              action: () => {

              },
            },//Todo    实现数据持久化，通过数据库读取背景图片 来改变背景

          ]
        })
      }
    },
    {

    }
  ]


  build(){
    Column(){
      Text('设置')
        .fontSize(40)
        .textAlign(TextAlign.Center)
        .margin({top:40})
      Blank(40)
      List({ space: commonConst.LIST_ITEM_SPACE }) {
        ForEach(this.settingList, item => {
          ListItem() {
            Row() {
              Row() {
                // Image(item?.icon)
                //   .width(commonConst.DEFAULT_24)
                //   .height(commonConst.DEFAULT_24)
                //   .margin({ right: commonConst.DEFAULT_8 })
                Text(item.name).fontSize(commonConst.DEFAULT_20).fontColor($r('app.color.titleColor'))
              }
              .width(commonConst.THOUSANDTH_500)

              Blank()
                .layoutWeight(1)
              if (item?.isOpen) {
                Text('已开启')
                  .fontSize(commonConst.DEFAULT_16)
                  .flexGrow(1)
                  .align(Alignment.End)
                  .margin({ right: commonConst.DEFAULT_8 })
                  .fontColor($r('app.color.titleColor'))
              }
              Image($r('app.media.right_grey')).width(commonConst.DEFAULT_8).height(commonConst.DEFAULT_16)
            }
            .width(commonConst.THOUSANDTH_1000)
            .justifyContent(FlexAlign.SpaceBetween)
            .padding({ left: commonConst.DEFAULT_12, right: commonConst.DEFAULT_12 })
          }
          .height(commonConst.THOUSANDTH_80)
          .borderRadius(commonConst.DEFAULT_12)
          // .onClick(() => {
          //   router.pushUrl({
          //     url: 'pages/TaskEditPage',
          //     params: {
          //       params: formatParams(item),
          //     }
          //   })
          // })
          .backgroundColor($r('app.color.white'))
        })
      }
      .height(commonConst.THOUSANDTH_1000)
      .width(commonConst.THOUSANDTH_940)
    }
    .backgroundColor($r('app.color.primaryBgColor'))
    .width('100%')
    .height('100%')
  }
}