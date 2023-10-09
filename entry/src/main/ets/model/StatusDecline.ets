import  PreferencesUtil  from '../model/PreferencesUtil'
import Logger from '../common/utils/Logger'

class StatusDecline{
  async decline(statusName:string,data:number){
    let dataOrigin:number = await PreferencesUtil.getData(statusName)
    Logger.info(statusName, 'Get the value of changeFontSize: ' + dataOrigin);
    await PreferencesUtil.saveData(statusName,Math.max(0,dataOrigin-data))
  }
}

export default new StatusDecline()