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

  saveBackgroundPicture(BackgroundPicture: string) {
    let getPreferences: Function = GlobalContext.getContext().getObject('getPreferences') as Function;
    getPreferences().then(async (preferences: dataPreferences.Preferences) => {
      await preferences.put(KEY_BackgroundPicture, BackgroundPicture);
      preferences.flush();
    }).catch((err: Error) => {
      Logger.error(TAG, 'put the preferences failed, err: ' + err);
    });
  }

  async getBackgroundPicture() {
    let BackgroundPicture: string
    let getPreferences: Function = GlobalContext.getContext().getObject('getPreferences') as Function;
    BackgroundPicture = await (await getPreferences()).get(KEY_BackgroundPicture, BackgroundPicture);
    return BackgroundPicture;
  }

}

export default new PreferencesUtil();