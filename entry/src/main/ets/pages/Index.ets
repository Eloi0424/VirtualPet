import { Pet } from './Pet'
import {Setting} from './Setting'
// import {Status} from './Status'

@Entry
@Component
struct MainPage{
  private arr: number[] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  @State currentIndex: number = 1
  @State Build: Array<Object> = [
    {
      text: 'Status',
      num: 0,
      imgSource : $rawfile('Icons/status.png'),
      imgSourceUnselected : $rawfile('Icons/status_unSelected.png'),
    },
    {
      text: 'Pet',
      num: 1,
      imgSource : $rawfile('Icons/pet.png'),
      imgSourceUnselected : $rawfile('Icons/pet_unSelected.png'),
    },
    {
      text: 'Setting',
      num: 2,
      imgSource : $rawfile('Icons/setting.png'),
      imgSourceUnselected : $rawfile('Icons/setting_unSelected.png'),
    }
  ]
  @Builder
  NavigationToolbar() {
    Row() {
      ForEach(this.Build, item => {
        Column() {
          Image(this.currentIndex == item.num ?  item.imgSource : item.imgSourceUnselected)
            .width(24)
            .height(24)
          Text(item.text)
            .fontColor(this.currentIndex == item.num ? '#007DFF' : '#182431')
            .fontSize(10)
            .lineHeight(14)
            .fontWeight(500)
            .margin({ top: 3 })
        }.width(104).height(56)
        .onClick(() => {
          this.currentIndex = item.num
        })
      })
    }
    .justifyContent(FlexAlign.Center)
    .alignItems(VerticalAlign.Center)
    .borderRadius(12)
    .width('100%')
    .height('100%')
    .margin({bottom:10})
  }
  build(){
    Navigation(){
      if(this.currentIndex == 0)
      {
        // Status()
      }
      if(this.currentIndex == 1)
      {
        Pet()
      }
      if(this.currentIndex == 2)
      {
        Setting()
      }
    }
    .mode(NavigationMode.Stack)
    .toolBar(this.NavigationToolbar())
    .hideTitleBar(true)
  }
}
