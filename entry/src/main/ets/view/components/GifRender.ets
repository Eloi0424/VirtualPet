import { GifDataItem } from '../../common/bean/GifData'


@Component
export struct GifRender {
  @Link Gif:GifDataItem
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
          console.info('Start')
        })
        .onPause(() => {
          console.info('Pause')
        })
        .onRepeat(() => {
          console.info('Repeat')
        })
        .onCancel(() => {
          console.info('Cancel')
        })
        .onFinish(() => {
          console.info('Finish')
          this.Gif.state = AnimationStatus.Stopped
        })
    }
  }
}