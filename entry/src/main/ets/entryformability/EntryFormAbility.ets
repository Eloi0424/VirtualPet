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
      FormUtils.insertFormData(formInfo,this.context).then(()=>{
        console.log('formInfo save ok')
        FormUtils.updateForm(formInfo,this.context)
        PreferencesUtil.saveData('water',0)
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
  }

  onRemoveForm(formId) {
    // Called to notify the form provider that a specified form has been destroyed.
  }

  onAcquireFormState(want) {
    // Called to return a {@link FormState} object.
    return formInfo.FormState.READY;
  }
};