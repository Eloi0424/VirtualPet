import { GifRender } from "../view/components/GifRender"
import {GifDataItem} from "../common/bean/GifData"
import GifDataViewModel from "../viewmodel/GifDataViewModel"
import { InteractBar } from '../view/components/InteractBar'
import  PreferencesUtil  from '../model/PreferencesUtil'
import Logger from '../common/utils/Logger'


const TAG = '[Pet]';
@Component
export struct Pet {
  @State backgroundPicture:Resource = $rawfile("backgroundPictures/yellowFlower.png")
  @State Gif:GifDataItem = GifDataViewModel.getGifData("vup_Default_PoorCondition_1")
  @State GifName:string = "vup_Default_PoorCondition_1"
  aboutToAppear(){
    PreferencesUtil.getData('backgroundPicture').then((value) => {
      this.backgroundPicture = $rawfile(value);
      Logger.info(TAG, 'Get the value of changeFontSize: ' + value);
    });
  }
  build() {
    Column(){
      Stack(){
        Image(this.backgroundPicture)
        Column() {
          InteractBar({Gif:$Gif,GifName:$GifName})
          GifRender({ Gif: $Gif, GifName:$GifName})
        }
      }
    }//main shows
  }
}