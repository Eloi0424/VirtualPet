// import * as commonConst from '../common/constants/ListStyleConstants';
//
//
//
//
//
//
// @Component
// export struct Status{
//
//   statusList:Object[] = [
//     {
//       name = 'money',
//       value = 0,
//     },
//     {
//       name = 'emotion',
//       value = 0,
//     },
//     {
//       name = 'water',
//       value = 0,
//     },
//     {
//       name = 'food',
//       value = 0,
//     }
//   ]
//
//
//   // aboutToAppear() {
//   //   let obj
//   //   for(obj of this.statusList) {
//   //    obj.value =
//   //   }
//   //
//   // }
//
//
//
//   build(){
//     Column(){
//       Text('状态')
//         .fontSize(40)
//         .textAlign(TextAlign.Center)
//         .margin({top:40})
//       Blank(40)
//       List({ space: commonConst.LIST_ITEM_SPACE }) {
//         ForEach(this.settingList, item => {
//           ListItem() {
//             Row() {
//               Row() {
//                 // Image(item?.icon)
//                 //   .width(commonConst.DEFAULT_24)
//                 //   .height(commonConst.DEFAULT_24)
//                 //   .margin({ right: commonConst.DEFAULT_8 })
//                 Text(item.name).fontSize(commonConst.DEFAULT_20).fontColor($r('app.color.titleColor'))
//               }
//               .width(commonConst.THOUSANDTH_500)
//
//               Blank()
//                 .layoutWeight(1)
//               if (item?.isOpen) {
//                 Text('已开启')
//                   .fontSize(commonConst.DEFAULT_16)
//                   .flexGrow(1)
//                   .align(Alignment.End)
//                   .margin({ right: commonConst.DEFAULT_8 })
//                   .fontColor($r('app.color.titleColor'))
//               }
//               Image($r('app.media.right_grey')).width(commonConst.DEFAULT_8).height(commonConst.DEFAULT_16)
//             }
//             .width(commonConst.THOUSANDTH_1000)
//             .justifyContent(FlexAlign.SpaceBetween)
//             .padding({ left: commonConst.DEFAULT_12, right: commonConst.DEFAULT_12 })
//           }
//           .height(commonConst.THOUSANDTH_80)
//           .borderRadius(commonConst.DEFAULT_12)
//           .onClick(item.action)
//           .backgroundColor($r('app.color.white'))
//         })
//       }
//       .height(commonConst.THOUSANDTH_1000)
//       .width(commonConst.THOUSANDTH_940)
//     }
//     .backgroundColor($r('app.color.primaryBgColor'))
//     .width('100%')
//     .height('100%')
//
//     }
//   }
// }