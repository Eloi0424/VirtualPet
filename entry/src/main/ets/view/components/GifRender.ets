@Component
export struct GifRender {
  @Link state: AnimationStatus
  @Link imageFrameInfoList: ImageFrameInfo[]
  @Link duration: number
  @Link isReverse: boolean
  @Link fillMode: FillMode
  @Link iterations: number
  @Link renderWidth: number
  @Link renderHeight: number
  // @Link marginGifRender:number wait to fix
  build() {
    Column({ space: 10 }) {
      ImageAnimator()
        .images(this.imageFrameInfoList)
        .duration(this.duration)
        .state(this.state)
        .reverse(this.isReverse)
        .fillMode(this.fillMode)
        .iterations(this.iterations)
        .width(this.renderWidth)
        .height(this.renderHeight)
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
          this.state = AnimationStatus.Stopped
        })
    }
  }
}