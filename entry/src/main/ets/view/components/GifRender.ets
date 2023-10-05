import { GifDataItem } from '../../common/bean/GifData'
import  GifDataViewModel from '../../viewmodel/GifDataViewModel'

@Component
export struct GifRender {
  @Link Gif:GifDataItem
  @Link @Watch('onGifChange')GifName:string
  @State finishCount:number = 0
  aboutToAppear(){
    this.Gif.state=AnimationStatus.Running
  }
  onGifChange(){
    this.Gif.state = AnimationStatus.Running
  }
  build() {
    Column({ space: 10 }) {
      ImageAnimator()
        .images(this.Gif.imageFrameInfoList)
        .duration(this.Gif.duration)
        .state(this.Gif.state)
        .reverse(this.Gif.isReverse)
        .fillMode(this.Gif.fillMode)
        .iterations(this.Gif.iterations)
        .width(this.Gif.renderWidth)
        .height(this.Gif.renderHeight)
          // .margin(this.marginGifRender) wait to fix
        .onStart(() => {
          console.info(this.Gif.iterations.toString())
          console.info(this.Gif.name+' Start')
        })
        .onPause(() => {
          console.info(this.Gif.iterations.toString())
          console.info(this.Gif.name+' Pause')
        })
        .onRepeat(() => {
          console.info(this.Gif.iterations.toString())
          console.info(this.Gif.name+' Repeat')
        })
        .onCancel(() => {
          console.info(this.Gif.iterations.toString())
          console.info(this.Gif.name+' Cancel')
        })
        .onFinish(() => {
          console.info(this.Gif.iterations.toString())
          console.info(this.Gif.name+' Finish')
          this.finishCount++
          if(this.finishCount==2&&this.GifName=='vup_Sleep_A_Happy') {
            console.log(this.GifName)
            this.Gif = GifDataViewModel.getGifData('vup_Sleep_B_Happy')
            this.GifName = 'vup_Sleep_B_Happy'
            this.Gif.state = AnimationStatus.Running
            this.finishCount = 0
          }
          else if(this.finishCount==2&&this.GifName == 'vup_Sleep_C_Happy'){
            console.log(this.GifName)
            this.Gif = GifDataViewModel.getGifData('vup_Default_PoorCondition_1')
            this.GifName = 'vup_Default_PoorCondition_1'
            this.Gif.state = AnimationStatus.Running
            this.finishCount = 0
          }
          else
            this.Gif.state = AnimationStatus.Stopped
        })
    }
  }
}