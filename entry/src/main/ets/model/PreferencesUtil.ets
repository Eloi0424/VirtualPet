import dataPreferences from '@ohos.data.preferences';
import { GlobalContext } from '../common/utils/GlobalContext';
import Logger from '../common/utils/Logger';

const TAG = '[PreferencesUtil]';
const PREFERENCES_NAME = 'myPreferences';
const KEY_BackgroundPicture = 'BackgroundPicture'
/**
 * The PreferencesUtil provides preferences of create, save and query.
 */
export class PreferencesUtil {
  createPreferences(context: Context) {
    let Preferences: Function = (() => {
      let preferences: Promise<dataPreferences.Preferences> = dataPreferences.getPreferences(context,
        PREFERENCES_NAME);
      return preferences;
    });
    GlobalContext.getContext().setObject('getPreferences', Preferences);
  }

  saveData(keyName,Data) {
    let getPreferences: Function = GlobalContext.getContext().getObject('getPreferences') as Function;
    getPreferences().then(async (preferences: dataPreferences.Preferences) => {
      await preferences.put(keyName, Data);
      preferences.flush();
    }).catch((err: Error) => {
      Logger.error(TAG, 'put the preferences failed, err: ' + err);
    });
  }

  async getData(keyName) {
    let Data
    let getPreferences: Function = GlobalContext.getContext().getObject('getPreferences') as Function;
    Data = await (await getPreferences()).get(keyName, Data);
    return Data;
  }
}

export default new PreferencesUtil();