import { GifRender } from "../view/components/GifRender"
import {GifDataItem} from "../common/bean/GifData"
import GifDataViewModel from "../viewmodel/GifDataViewModel"

@Entry
@Component
struct Index {
  @State backgroundPicture:Resource = $rawfile("backgroundPictures/flower.png")
  @State Gif:GifDataItem = GifDataViewModel.getGifData("vup_Default_PoorCondition_1")
  @State GifName:string = "vup_Default_PoorCondition_1"
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
                this.Gif = GifDataViewModel.getGifData("vup_Sleep_A_Happy")
                this.GifName = "vup_Sleep_A_Happy"
                this.Gif.state= AnimationStatus.Running
              })
            Button("起床")
              .stateEffect(true)
              .type(ButtonType.Capsule)
              .onClick(()=>{
                this.Gif = GifDataViewModel.getGifData("vup_Sleep_C_Happy")
                this.GifName = "vup_Sleep_C_Happy"
                this.Gif.state= AnimationStatus.Running
              })
          }
          GifRender({ Gif: $Gif, GifName:$GifName})
        }
      }//main shows

      //where put the navigator
    }
  }
}