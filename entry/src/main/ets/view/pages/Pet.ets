import { GifRender } from "../../utils/components/GifRender"
@Component
export struct pet{
  build(){
    Stack(){
      Image(this.backgroundPicture)
      Row() {
        Column() {
          GifRender({
            imageFrameInfoList:$imageFrameInfoList,
            state:$state,
            duration:$duration,
            iterations:$iterations,
            isReverse:$isReverse,
            fillMode:$fillMode,
            renderWidth:$renderWidth,
            renderHeight:$renderHeight,
          })
        }
        .width('100%')
      }
      .height('100%')
    }//main shows
  }
}