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

  async saveData(keyName,Data) {
      let getPreferences: Function = GlobalContext.getContext().getObject('getPreferences') as Function;
      let preferences = await getPreferences()
      await preferences.put(keyName, Data);
      await preferences.flush();
  }
  async getData(keyName) {
    let Data
    let getPreferences: Function = GlobalContext.getContext().getObject('getPreferences') as Function;
    Data = await (await getPreferences()).get(keyName, Data);
    return Data;
  }

  async hasData(keyName) {
    let getPreferences: Function = GlobalContext.getContext().getObject('getPreferences') as Function;
    let flag = await (await getPreferences()).has(keyName) as boolean;
    Logger.info("hasData:",flag + "")
    return flag;
  }

}

export default new PreferencesUtil();