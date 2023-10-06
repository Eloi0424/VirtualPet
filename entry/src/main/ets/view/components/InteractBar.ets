
import { GifDataItem } from '../../common/bean/GifData'
import GifDataViewModel from '../../viewmodel/GifDataViewModel'
import {
  TITLE_FONT_WEIGHT,
  MARGIN_FONT_SIZE_SPACE,
  EIGHT_POINT_TWO_PERCENT,
  COMMON_FONT_WEIGHT,
  INDEX_COMPONENT_WITH_PERCENT,
  ALL_PERCENT
} from '../../common/constants/styleConstants';



@Component
export struct InteractBar{
  @Link Gif:GifDataItem
  @Link GifName:string


  @Builder
  interactMenu(){
    Menu(){
      MenuItem({content:"睡觉"})
        .onClick(()=>{
          this.Gif = GifDataViewModel.getGifData("vup_Sleep_A_Happy")
          this.GifName = "vup_Sleep_A_Happy"
          this.Gif.state= AnimationStatus.Running
        })
      MenuItem({content:"起床"})
        .onClick(()=>{
          this.Gif = GifDataViewModel.getGifData("vup_Sleep_C_Happy")
          this.GifName = "vup_Sleep_C_Happy"
          this.Gif.state= AnimationStatus.Running
        })
      MenuItem({content:"学习"})
        .onClick(()=>{
          ActionSheet.show({
            title: '学习',
            message: '学啥捏',
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
                title: '读书',
                action: () => {
                  this.Gif = GifDataViewModel.getGifData("vup_WORK_Study_A_normal")
                  this.GifName = "vup_WORK_Study_A_normal"
                  this.Gif.state = AnimationStatus.Running
                },
              },//Todo    实现状态切换
              {
                title: '研究',
                action: () => {
                  console.log('apples')
                }
              },//Todo 研究action实现
            ]
          })
        })
    }
  }

  @Builder
  feedMenu(){
    Menu(){

    }
  }//Todo 喂食菜单实现


  build(){
    Row(){
      Button('互动')
        .bindMenu(this.interactMenu())
        .fontColor(Color.Black)
        .width(100)
        .height(60)
        .borderRadius(MARGIN_FONT_SIZE_SPACE.SEVENTH_MARGIN)
        .margin({ left: MARGIN_FONT_SIZE_SPACE.SECOND_MARGIN, right: MARGIN_FONT_SIZE_SPACE.SECOND_MARGIN })
        .backgroundColor(Color.White)
      Button('喂食')
        .bindMenu(this.feedMenu())
        .fontColor(Color.Black)
        .width(100)
        .height(60)
        .borderRadius(MARGIN_FONT_SIZE_SPACE.SEVENTH_MARGIN)
        .margin({ left: MARGIN_FONT_SIZE_SPACE.SECOND_MARGIN, right: MARGIN_FONT_SIZE_SPACE.SECOND_MARGIN })
        .backgroundColor(Color.White)
    }
  }
}
