//yes
import { GifRender } from "../view/components/GifRender"
@Entry
@Component
struct Index {
  @State backgroundPicture:Resource = $rawfile("backgroundPictures/flower.png")

  @State state: AnimationStatus = AnimationStatus.Initial
  @State imageFrameInfoList:ImageFrameInfo [] = [
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
  ]
  @State duration:number = 1000
  @State iterations: number = 20
  @State isReverse: boolean = false
  @State fillMode:FillMode = FillMode.Forwards
  @State renderWidth:number = 400
  @State renderHeight:number = 400

  build() {
    Column(){
      Stack(){
        Image(this.backgroundPicture)
        Column() {
          Row(){
            Button("睡觉")
              .stateEffect(true)
              .type(ButtonType.Capsule)
              .onClick(()=>{

              })
            Button(){

            }
          }
          GifRender({
            imageFrameInfoList: $imageFrameInfoList,
            state: $state,
            duration: $duration,
            iterations: $iterations,
            isReverse: $isReverse,
            fillMode: $fillMode,
            renderWidth: $renderWidth,
            renderHeight: $renderHeight,
          })
        }
      }//main shows

      //where put the navigator
    }
  }
  onPageShow(){
    this.state = AnimationStatus.Running
    this.iterations = 10
  }
}
//todo:想办法封装imageFrameInfoList,实现一个state 变量决定现在播放什么GIF