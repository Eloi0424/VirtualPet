import {GifDataItem} from "../common/bean/GifData"
import { GifDatas } from '../common/constants/GifDataConstants'
import { GifRender } from '../view/components/GifRender'


export class GifDataViewModel{
  getGifData(motion_name:string):GifDataItem{
    return GifDatas[motion_name]
  }
}
export default new GifDataViewModel()