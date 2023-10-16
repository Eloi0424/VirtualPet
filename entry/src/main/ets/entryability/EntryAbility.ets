import UIAbility from '@ohos.app.ability.UIAbility';
import hilog from '@ohos.hilog';
import window from '@ohos.window';
import { GlobalContext } from '../common/utils/GlobalContext';
import Logger from '../common/utils/Logger';
import PreferencesUtil from '../model/PreferencesUtil'
import StatusDecline from '../model/StatusDecline'
import {statusListDefault} from '../pages/Status'
import FormUtils from '../common//utils/FormUtils'

export default class EntryAbility extends UIAbility {
  onCreate(want, launchParam) {
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onCreate');
    console.log('ability preferdir'+this.context.preferencesDir)
    GlobalContext.getContext().setObject('abilityWant', want);
    PreferencesUtil.createPreferences(this.context);
    //判断用户首选项中有无对应状态Key
    for(let obj of statusListDefault as any){
      PreferencesUtil.hasData(obj.name).then(exist =>{
        if(!exist){
          Logger.info("Set default:",obj.name,obj.value)
          PreferencesUtil.saveData(obj.name, obj.value)
        }
      })
    }
    //判断用户首选项中有无背景图片Key
    PreferencesUtil.hasData('backgroundPicture').then((exist)=>{
      if(!exist){
        Logger.info("Set default:",'backgroundPicture',"backgroundPictures/yellowFlower.png")
        PreferencesUtil.saveData('backgroundPicture', "backgroundPictures/yellowFlower.png")
      }
    })

    //判断用户首选项中有无宠物名字Key
    PreferencesUtil.hasData('petName').then((exist)=>{
      if(!exist){
        Logger.info("Set default:",'petName',"Alice")
        PreferencesUtil.saveData('petName', "Alice")
      }
    })
  }

  onDestroy() {
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onDestroy');
  }

  onWindowStageCreate(windowStage: window.WindowStage) {
    // Main window is created, set main page for this ability
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageCreate');

    windowStage.loadContent('pages/Index', (err, data) => {
      if (err.code) {
        hilog.error(0x0000, 'testTag', 'Failed to load the content. Cause: %{public}s', JSON.stringify(err) ?? '');
        return;
      }
        hilog.info(0x0000, 'testTag', 'Succeeded in loading the content. Data: %{public}s', JSON.stringify(data) ?? '');
    });
  }

  onWindowStageDestroy() {
      // Main window is destroyed, release UI related resources
      hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageDestroy');
  }

  async onForeground() {
      // Ability has brought to foreground
      hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onForeground');
      setInterval(async ()=>{
         await StatusDecline.decline('water',1)
        await StatusDecline.decline('food',1)
      },5000)
  }

  async onBackground() {
    // Ability has back to background
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onBackground');

    try {
      PreferencesUtil.createPreferences(this.context)
      FormUtils.getFormInfo(this.context).then((formInfo)=>{
        console.log('Get formInfo OK');
        FormUtils.updateForm(formInfo,this.context)
      }).catch((e)=>{
        console.log("Stack:"+e.stack)
      })
    }catch (e){
      console.log("CStack:"+e.stack)
    }
    hilog.info(0x0000, 'testTag', '%{public}s', 'Exit Ability onBackground');
  }
}
