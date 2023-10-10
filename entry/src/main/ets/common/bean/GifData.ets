@Observed
export class GifDataItem{
  name:string
  state:AnimationStatus
  imageFrameInfoList:ImageFrameInfo []
  iterations: number
  isReverse: boolean
  fillMode:FillMode
  renderWidth:number
  renderHeight:number
}