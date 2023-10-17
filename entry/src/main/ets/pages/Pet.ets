import { GifRender } from "../view/components/GifRender"
import {GifDataItem} from "../common/bean/GifData"
import GifDataViewModel from "../viewmodel/GifDataViewModel"
import { InteractBar } from '../view/components/InteractBar'
import  PreferencesUtil  from '../model/PreferencesUtil'
import Logger from '../common/utils/Logger'
import { CustomDialogConversation } from '../view/components/CustomDialogConversation'
import http from '@ohos.net.http';

const TAG = '[Pet]';
@Component
export struct Pet {
  @State backgroundPicture:Resource = $rawfile("backgroundPictures/yellowFlower.png")
  @State Gif:GifDataItem = GifDataViewModel.getGifData("vup_StartUP_Happy")
  @State GifName:string = "vup_StartUP_Happy"
  @State petName:string = "Alice"

  @State intervalId:number = 0;
  @State showLoading:number = 0 ;


  //修改名字自定义弹窗
  @State resultOfPrompt:string = '你好'
  @State textValue: string = ''
  @State inputValue: string = 'click me'
  dialogController: CustomDialogController = new CustomDialogController({
    builder: CustomDialogConversation({
      cancel: this.onCancel,
      confirm: this.onAccept,
      textValue: $textValue,
      inputValue: $inputValue,
      resultOfPrompt:$resultOfPrompt
    }),
    cancel: this.existApp,
    autoCancel: true,
    alignment: DialogAlignment.Bottom,
    offset: { dx: 0, dy: -20 },
    gridCount: 4,
    customStyle: false
  })

  onCancel() {
    console.info('Callback when the first button is clicked')
  }

  onAccept() {
    //todo display result
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

    this.intervalId = setInterval(()=>{
      PreferencesUtil.getData('isResultOfPromptArrive').then((isResultOfPromptArrive)=>{
        if(isResultOfPromptArrive)
        {
          PreferencesUtil.getData('resultOfPrompt').then((val)=>{
            this.resultOfPrompt = val
          })
          this.showLoading = 0
        }
      })
    },1000)
  }
  // 在自定义组件即将析构销毁时将dialogController删除和置空
  aboutToDisappear() {
    delete this.dialogController, // 删除dialogController
    this.dialogController = undefined // 将dialogController置空
    clearInterval(this.intervalId)
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
          Row(){
            Button('与我对话吧')
              .type(ButtonType.Capsule)
              .fontColor(Color.Black)
              .fontSize(20)
              .stateEffect(true)
              .backgroundColor(Color.White)
              .width('40%')
              .height('8%')
              .onClick(()=>{
                this.resultOfPrompt = ''
                PreferencesUtil.saveData('isResultOfPromptArrive',0).then(()=>{
                  if (this.dialogController != undefined) {
                    this.dialogController.open()
                  }
                  this.showLoading = 1
                })
              })
            // Button('Gen')
            //   .type(ButtonType.Capsule)
            //   .fontColor(Color.Black)
            //   .fontSize(27)
            //   .stateEffect(true)
            //   .backgroundColor(Color.White)
            //   .width('40%')
            //   .height('8%')
            //   .onClick(()=>{
            //     PreferencesUtil.getData('resultOfPrompt').then((val)=>{
            //       this.resultOfPrompt = val
            //     })
            //   })
            if(this.showLoading)
            {
              Image($rawfile('Icons/loading.gif'))
                .width('15%')
            }
          }
          Text(this.resultOfPrompt)
            .fontSize(20)
            .width('80%')
            .height('20%')
            .border({width:1})
            .backgroundColor(Color.White)
            .borderRadius(10)
            .margin({top:5})
            .textAlign(TextAlign.Start)
            .baselineOffset(30)
        }
      }
    }//main shows
  }
}