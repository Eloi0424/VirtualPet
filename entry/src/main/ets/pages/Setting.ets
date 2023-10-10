import * as commonConst from '../common/constants/ListStyleConstants';
import Logger from '../common/utils/Logger';
import PreferencesUtil from '../model/PreferencesUtil';
import { CustomDialogChangePetName } from '../view/components/CustomDialogChangePetName'



@Component
export struct Setting{

  //修改名字自定义弹窗
  @State textValue: string = ''
  @State inputValue: string = 'click me'
  dialogController: CustomDialogController = new CustomDialogController({
    builder: CustomDialogChangePetName({
      cancel: this.onCancel,
      confirm: this.onAccept,
      textValue: $textValue,
      inputValue: $inputValue
    }),
    cancel: this.existApp,
    autoCancel: true,
    alignment: DialogAlignment.Bottom,
    offset: { dx: 0, dy: -20 },
    gridCount: 4,
    customStyle: false
  })
  // 在自定义组件即将析构销毁时将dialogController删除和置空
  aboutToDisappear() {
    delete this.dialogController, // 删除dialogController
    this.dialogController = undefined // 将dialogController置空
  }

  onCancel() {
    console.info('Callback when the first button is clicked')
  }

  onAccept() {
    console.log('Hey im here')
    PreferencesUtil.saveData('petName',this.inputValue)
  }

  existApp() {
    console.info('Click the callback in the blank area')
  }

  //设置列表
  settingList:Object[]=[
    {
      name:'背景',
      // icon:,
      action:()=>{
        ActionSheet.show({
          title: '背景',
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
              title: '紫花',
              action: () => {
                PreferencesUtil.saveData('backgroundPicture','backgroundPictures/purpleFlower.png')
                Logger.info('backgroundPicture', 'Set the value of changeFontSize: ' );
              },
            },
            {
              title: '黄花',
              action:()=>{
                PreferencesUtil.saveData('backgroundPicture','backgroundPictures/yellowFlower.png')
                Logger.info('backgroundPicture', 'Set the value of changeFontSize: ' );
              },
            }
          ]
        })
      }
    },
    {
      name:'宠物名字',
      action:()=>{
        if (this.dialogController != undefined) {
          this.dialogController.open()
        }
      },
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
              // if (item?.isOpen) {
              //   Text('已开启')
              //     .fontSize(commonConst.DEFAULT_16)
              //     .flexGrow(1)
              //     .align(Alignment.End)
              //     .margin({ right: commonConst.DEFAULT_8 })
              //     .fontColor($r('app.color.titleColor'))
              // }
              Image($r('app.media.right_grey')).width(commonConst.DEFAULT_8).height(commonConst.DEFAULT_16)
            }
            .width(commonConst.THOUSANDTH_1000)
            .justifyContent(FlexAlign.SpaceBetween)
            .padding({ left: commonConst.DEFAULT_12, right: commonConst.DEFAULT_12 })
          }
          .height(commonConst.THOUSANDTH_80)
          .borderRadius(commonConst.DEFAULT_12)
          .onClick(item.action)
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