import { GifRender } from "../view/components/GifRender"
import {GifDataItem} from "../common/bean/GifData"
import GifDataViewModel from "../viewmodel/GifDataViewModel"
import { InteractBar } from '../view/components/InteractBar'
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
          InteractBar({Gif:$Gif,GifName:$GifName})
          GifRender({ Gif: $Gif, GifName:$GifName})
        }
      }//main shows

      //where put the navigator
    }
  }
}