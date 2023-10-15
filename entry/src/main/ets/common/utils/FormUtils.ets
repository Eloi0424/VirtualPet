import FormInfo from '../bean/FormInfo';
import PreferencesUtil from '../../model/PreferencesUtil'
import PetStatusCardInfo from '../bean/PetStatusCardInfo'
import { statusListDefault } from '../../pages/Status'
import formBindingData from '@ohos.app.form.formBindingData';
import formProvider from '@ohos.app.form.formProvider';
class FormUtils{
  public async insertFormData(formInfo:FormInfo,context:Context){
    PreferencesUtil.createPreferences(context)
    await PreferencesUtil.saveData('formId',formInfo.formId)
    await PreferencesUtil.hasData('formId').then((isExist)=>{
      if(isExist){
        console.log('preference have formId')
      }
      else
        console.log('preference not have formId')
    })
    await PreferencesUtil.saveData('formName',formInfo.formName)
    await PreferencesUtil.saveData('formDimension',formInfo.formDimension)
  }

  public async getFormInfo(context:Context){
    PreferencesUtil.createPreferences(context)
    let formInfo:FormInfo;
    await PreferencesUtil.getData('water').then((val)=>{
      console.log('waterval:'+val)
    })
    await PreferencesUtil.hasData('formId').then((isExist)=>{
      if(isExist){
        console.log('preference have formId')
      }
      else
        console.log('preference not have formId')
    }).catch((e)=>{
      console.log("Stack:"+e.stack)
    })
    formInfo.formId = await PreferencesUtil.getData('formId');
    formInfo.formName = await PreferencesUtil.getData('formName');
    formInfo.formDimension = await PreferencesUtil.getData('formDimension');
    return formInfo
  }


  public async getStatusList(context:Context){
    PreferencesUtil.createPreferences(context)
    let statusList:Object[] = []
    for(let item of statusListDefault as any){
      console.log('arrive 1')
      await PreferencesUtil.getData(item.name).then((val)=>{
        console.log('arrive 2')
        statusList.push({
          name:item.name,
          value:val
        })
      })
    }
    return statusList
  }
  public updateForm(formInfo:FormInfo,context:Context)
  {
    PreferencesUtil.createPreferences(context)
    let obj:PetStatusCardInfo = {}
    this.getStatusList(context).then((statusList)=>{
      obj.statusList = statusList
      console.log('statusListLen' + obj.statusList.length.toString())
      let formData = formBindingData.createFormBindingData(obj);
      formProvider.updateForm(formInfo.formId, formData)
    })
  }
}
export default new FormUtils();