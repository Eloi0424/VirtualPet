import { GifRender } from "../utils/components/GifRender"
import {GifDataItem} from "../utils/components/GifRenderDataComponent"
import {MainViewModel} from "../viewmodel/MainViewModel"



@Entry
@Component
struct Index {
  @State viewModel:MainViewModel = new MainViewModel()
  @State backgroundPicture:Resource = $rawfile("backgroundPictures/flower.png")

  @State Gif:GifDataItem = this.viewModel.getGifDate("vup_Default_PoorCondition_1")
  build() {
    Column(){
      Stack(){
        Image(this.backgroundPicture)
        Column() {
          Row(){
            Button("睡觉")
              .stateEffect(true)
              .type(ButtonType.Capsule)
              .onClick(()=>{

              })
            Button(){

            }
          }
          GifRender({ Gif: $Gif })
        }
      }//main shows

      //where put the navigator
    }
  }
  onPageShow(){
    this.Gif.state = AnimationStatus.Running
    this.Gif.iterations = 10
  }
}
//todo:想办法封装imageFrameInfoList,实现一个state 变量决定现在播放什么GIF