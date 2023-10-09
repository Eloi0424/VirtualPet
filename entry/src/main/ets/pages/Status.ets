import * as commonConst from '../common/constants/ListStyleConstants';
import Logger from '../common/utils/Logger';
import PreferencesUtil from '../model/PreferencesUtil';

export const statusListDefault:Object[] = [
  {
    name : 'money',
    value : 100,
  },
  {
    name : 'emotion',
    value : 100,
  },
  {
    name : 'water',
    value : 100,
  },
  {
    name : 'food',
    value : 100,
  }
]

@Component
export struct Status{

  @State statusList:Object[] = []

  aboutToAppear() {
    for(let obj of statusListDefault as any) {
      PreferencesUtil.getData(obj.name).then((val)=>{
        Logger.info('Status','Get'+obj.name+val.toString())
        this.statusList.push({
          name: obj.name,
          value: val
        })
      })
    }
  }



  build(){
    Column(){
      Text('状态')
        .fontSize(40)
        .textAlign(TextAlign.Center)
        .margin({top:40})
      Blank(40)
      List({ space: commonConst.LIST_ITEM_SPACE }) {
        ForEach(this.statusList, item => {
          ListItem() {
            Row() {
              Row() {
                // Image(item?.icon)
                //   .width(commonConst.DEFAULT_24)
                //   .height(commonConst.DEFAULT_24)
                //   .margin({ right: commonConst.DEFAULT_8 })
                Text(item.name).fontSize(commonConst.DEFAULT_20).fontColor($r('app.color.titleColor'))
                Blank()
                Text(item.value.toString()).fontSize(commonConst.DEFAULT_20).fontColor($r('app.color.titleColor'))
              }
              .width(commonConst.THOUSANDTH_1000)

              // Blank()
              //   .layoutWeight(1)
              // if (item?.isOpen) {
              //   Text('已开启')
              //     .fontSize(commonConst.DEFAULT_16)
              //     .flexGrow(1)
              //     .align(Alignment.End)
              //     .margin({ right: commonConst.DEFAULT_8 })
              //     .fontColor($r('app.color.titleColor'))
              // }
              // Image($r('app.media.right_grey')).width(commonConst.DEFAULT_8).height(commonConst.DEFAULT_16)
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