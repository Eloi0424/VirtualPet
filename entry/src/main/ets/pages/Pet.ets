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
  @State Gif:GifDataItem = GifDataViewModel.getGifData("vup_StartUP_Happy")
  @State GifName:string = "vup_StartUP_Happy"
  @State petName:string = "Alice"
  aboutToAppear(){
    // PreferencesUtil.hasData('backgroundPicture').then((value)=>{
    //   Logger.info(TAG, 'Has the value of changeFontSize: ' + value);
    // })
    PreferencesUtil.getData('backgroundPicture').then((value) => {
      this.backgroundPicture = $rawfile(value);
      Logger.info(TAG, 'Get the value of changeFontSize: ' + value);
    });
    PreferencesUtil.getData('petName').then((value) => {
      this.petName = value
      Logger.info(TAG, 'Get the value of petName: ' + value);
    });
  }
  build() {
    Column(){
      Stack(){
        Image(this.backgroundPicture)
        Column() {
          Text(this.petName)
            .fontSize(60)
            .margin({top:0})
          InteractBar({Gif:$Gif,GifName:$GifName})
          GifRender({ Gif: $Gif, GifName:$GifName})
        }
      }
    }//main shows
  }
}