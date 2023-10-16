import formInfo from '@ohos.app.form.formInfo';
import formBindingData from '@ohos.app.form.formBindingData';
import FormExtensionAbility from '@ohos.app.form.FormExtensionAbility';
import FormUtils from '../common/utils/FormUtils'
import { CommonConstants as Const } from '../common/constants/FormConstants';
import FormInfo from '../common/bean/FormInfo';
import PreferencesUtil from '../model/PreferencesUtil';

export default class EntryFormAbility extends FormExtensionAbility {
  onAddForm(want) {
    PreferencesUtil.createPreferences(this.context)
    console.log('ability preferdir'+this.context.preferencesDir)
    let parameters = want.parameters;
    if (parameters) {
      let formId: string = parameters[Const.FORM_PARAM_IDENTITY_KEY] as string;
      let formName: string = parameters[Const.FORM_PARAM_NAME_KEY] as string;
      let formDimension: number = parameters[Const.FORM_PARAM_DIMENSION_KEY] as number;
      let formInfo: FormInfo = {
        formId: formId,
        formName: formName,
        formDimension: formDimension
      };
      FormUtils.insertFormData(formInfo,this.context).then(async ()=>{
        console.log('formInfo save ok')
        // await PreferencesUtil.hasData('formId').then((isExist)=>{
        //   if(isExist){
        //     console.log('preference have formId')
        //   }
        //   else
        //     console.log('preference not have formId')
        // })
        await FormUtils.updateForm(formInfo,this.context)
        // if(PreferencesUtil.isCAS != null){
        //   await PreferencesUtil.isCAS
        // }
        // await PreferencesUtil.saveData('water',0)

      })
    }


    // Called to return a FormBindingData object.
    let formData = {};
    return formBindingData.createFormBindingData(formData);
  }

  onCastToNormalForm(formId) {
    // Called when the form provider is notified that a temporary form is successfully
    // converted to a normal form.
  }

  onUpdateForm(formId) {
    // Called to notify the form provider to update a specified form.
  }
  onChangeFormVisibility(newStatus) {
    // Called when the form provider receives form events from the system.
  }

  onFormEvent(formId, message) {
    // Called when a specified message event defined by the form provider is triggered.

    console.info(`FormAbility onEvent, formId = ${formId}, message: ${JSON.stringify(message)}`);
    // PreferencesUtil.hasData('formId').then((isExist)=>{
    //   if(isExist){
    //     console.log('preference have formId')
    //     PreferencesUtil.saveData('formId',formId)
    //   }
    //   else
    //     console.log('preference not have formId')
    // }).catch((e)=>{
    //   console.log('preference err ' + e)
    // })
    let formInfo: FormInfo = {
      formId: formId,
      formName: message.formName,
      formDimension: message.formDimension
    };
    FormUtils.updateForm(formInfo,this.context)
  }

  onRemoveForm(formId) {
    // Called to notify the form provider that a specified form has been destroyed.
  }

  onAcquireFormState(want) {
    // Called to return a {@link FormState} object.
    return formInfo.FormState.READY;
  }
};