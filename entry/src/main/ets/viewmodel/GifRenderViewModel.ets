import {GifDataItem} from "../common/bean/GifData"
import { GifDatas } from '../common/constants/GifDataConstants'


export class GifDataViewModel{
  getGifDate(motion_name:string):GifDataItem{
    return GifDatas[motion_name]
  }
}