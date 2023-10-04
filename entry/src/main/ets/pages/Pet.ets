import { GifRender } from "../view/components/GifRender"
import {GifDataItem} from "../common/bean/GifData"
import {GifDataViewModel} from "../viewmodel/GifRenderViewModel"

@Entry
@Component
struct Index {
  @State viewModel:GifDataViewModel = new GifDataViewModel()
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