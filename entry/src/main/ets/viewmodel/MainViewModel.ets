import {GifDataItem} from "../utils/components/GifRenderDataComponent"

const GifDatas:Record<string,GifDataItem> = {
  "vup_Default_Happy_1":{
    state : AnimationStatus.Initial,
    imageFrameInfoList: [
      {src: $rawfile("motions/vup/Default/Happy/1/循环A_000_125.png") },
      {src: $rawfile("motions/vup/Default/Happy/1/循环A_001_125.png") },
      {src: $rawfile("motions/vup/Default/Happy/1/循环A_002_125.png") },
      {src: $rawfile("motions/vup/Default/Happy/1/循环A_003_125.png") },
      {src: $rawfile("motions/vup/Default/Happy/1/循环A_004_125.png") },
      {src: $rawfile("motions/vup/Default/Happy/1/循环A_005_250.png") },
      {src: $rawfile("motions/vup/Default/Happy/1/循环A_006_125.png") },
      {src: $rawfile("motions/vup/Default/Happy/1/循环A_007_125.png") },
      {src: $rawfile("motions/vup/Default/Happy/1/循环A_008_125.png") },
      {src: $rawfile("motions/vup/Default/Happy/1/循环A_009_125.png") },
      {src: $rawfile("motions/vup/Default/Happy/1/循环A_010_125.png") },
      {src: $rawfile("motions/vup/Default/Happy/1/循环A_011_125.png") },
      {src: $rawfile("motions/vup/Default/Happy/1/循环A_012_250.png") },
    ],
    duration: 1000,
    iterations: 20,
    isReverse: false,
    fillMode: FillMode.Forwards,
    renderWidth: 400,
    renderHeight: 400
  },
  "vup_Default_PoorCondition_1":{
    state : AnimationStatus.Initial,
    imageFrameInfoList: [
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_000_125.png") },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_001_125.png") },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_002_125.png") },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_003_125.png") },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_004_375.png") },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_005_125.png") },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_006_125.png") },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_007_125.png") },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_008_500.png") },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_009_125.png") },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_010_125.png") },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_011_125.png") },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_012_375.png") },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_013_375.png") },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_014_125.png") },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_015_125.png") },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_016_125.png") },
    ],
    duration: 1000,
    iterations: 20,
    isReverse: false,
    fillMode: FillMode.Forwards,
    renderWidth: 400,
    renderHeight: 400
  },
}
export class MainViewModel{
  getGifDate(motion_name:string):GifDataItem{
    return GifDatas[motion_name]
  }
}