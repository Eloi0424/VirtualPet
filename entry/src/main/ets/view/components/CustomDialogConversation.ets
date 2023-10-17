import http from '@ohos.net.http'
import Logger from '../../common/utils/Logger'
import PreferencesUtil from '../../model/PreferencesUtil'

@CustomDialog
export struct CustomDialogConversation{
  @Link textValue: string
  @Link inputValue: string
  @Link resultOfPrompt:string
  controller: CustomDialogController
  // 若尝试在CustomDialog中传入多个其他的Controller，以实现在CustomDialog中打开另一个或另一些CustomDialog，那么此处需要将指向自己的controller放在最后
  cancel: () => void
  confirm: () => void

  aboutToAppear(){
  }
  build() {
    Column() {
      Text('想和我说些什么呢').fontSize(20).margin({ top: 10, bottom: 10 })
      TextInput({ placeholder: '', text: this.textValue }).height(60).width('90%')
        .onChange((value: string) => {
          this.textValue = value
        })
      Text('输入hello打个招呼吧').fontSize(16).margin({ bottom: 10 })
      Flex({ justifyContent: FlexAlign.SpaceAround }) {
        Button('cancel')
          .onClick(() => {
            this.controller.close()
            this.cancel()
          }).backgroundColor(0xffffff).fontColor(Color.Black)
        Button('confirm')
          .onClick(() => {
            this.inputValue = this.textValue



            console.log(this.inputValue)


            let httpRequest = http.createHttp()

            let promise = httpRequest.request('http://10.42.251.96:5000/conversation',{
              method:http.RequestMethod.POST,
              extraData:{
                'prompt':this.inputValue
              },
              connectTimeout:120000,
              readTimeout:60000,
              header:{
                'Content-Type':'application/json'
              }
            })
            console.log('my json string')
            this.resultOfPrompt = '你好'
            console.log('my json string'+this.resultOfPrompt)
            promise.then((value)=>{
              console.log('my json string'+value.result)
              PreferencesUtil.saveData('resultOfPrompt',JSON.parse(value.result as string)['data']['choices'][0]['content'])
            })







            this.controller.close()
            this.confirm()
          }).backgroundColor(0xffffff).fontColor(Color.Red)
      }.margin({ bottom: 10 })
    }
    // dialog默认的borderRadius为24vp，如果需要使用border属性，请和borderRadius属性一起使用。
  }
}


