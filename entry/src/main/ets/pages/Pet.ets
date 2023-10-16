import { GifRender } from "../view/components/GifRender"
import {GifDataItem} from "../common/bean/GifData"
import GifDataViewModel from "../viewmodel/GifDataViewModel"
import { InteractBar } from '../view/components/InteractBar'
import  PreferencesUtil  from '../model/PreferencesUtil'
import Logger from '../common/utils/Logger'
import { CustomDialogConversation } from '../view/components/CustomDialogConversation'


const TAG = '[Pet]';
@Component
export struct Pet {
  @State backgroundPicture:Resource = $rawfile("backgroundPictures/yellowFlower.png")
  @State Gif:GifDataItem = GifDataViewModel.getGifData("vup_StartUP_Happy")
  @State GifName:string = "vup_StartUP_Happy"
  @State petName:string = "Alice"


  //修改名字自定义弹窗
  @State textValue: string = ''
  @State inputValue: string = 'click me'
  dialogController: CustomDialogController = new CustomDialogController({
    builder: CustomDialogConversation({
      cancel: this.onCancel,
      confirm: this.onAccept,
      textValue: $textValue,
      inputValue: $inputValue
    }),
    cancel: this.existApp,
    autoCancel: true,
    alignment: DialogAlignment.Bottom,
    offset: { dx: 0, dy: -20 },
    gridCount: 4,
    customStyle: false
  })
  // 在自定义组件即将析构销毁时将dialogController删除和置空
  aboutToDisappear() {
    delete this.dialogController, // 删除dialogController
    this.dialogController = undefined // 将dialogController置空
  }
  onCancel() {
    console.info('Callback when the first button is clicked')
  }

  onAccept() {
    console.log(this.inputValue)
    //todo request result
  }
  existApp() {
    console.info('Click the callback in the blank area')
  }
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

          Button('与我对话吧')
            .type(ButtonType.Capsule)
            .fontSize(40)
            .stateEffect(true)
            .onClick(()=>{
              if (this.dialogController != undefined) {
                this.dialogController.open()
              }
            })
        }
      }
    }//main shows
  }
}