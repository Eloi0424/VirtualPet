
import { GifDataItem } from '../bean/GifData'
const allDurationOfFrame:number = 160
export const GifDatas:Record<string,GifDataItem> = {
  //  待机GIF

  "vup_Default_Happy_1":{
    name: "vup_Default_Happy_1",//InDefault
    state : AnimationStatus.Initial,
    imageFrameInfoList: [
      {src: $rawfile("motions/vup/Default/Happy/1/循环A_000_125.png"),duration: allDurationOfFrame},
      {src: $rawfile("motions/vup/Default/Happy/1/循环A_001_125.png"),duration: allDurationOfFrame},
      {src: $rawfile("motions/vup/Default/Happy/1/循环A_002_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Default/Happy/1/循环A_003_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Default/Happy/1/循环A_004_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Default/Happy/1/循环A_005_250.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Default/Happy/1/循环A_006_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Default/Happy/1/循环A_007_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Default/Happy/1/循环A_008_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Default/Happy/1/循环A_009_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Default/Happy/1/循环A_010_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Default/Happy/1/循环A_011_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Default/Happy/1/循环A_012_250.png"),duration: allDurationOfFrame },
    ],
    iterations: -1,
    isReverse: false,
    fillMode: FillMode.Forwards,
    renderWidth: 400,
    renderHeight: 400
  },
  "vup_Default_PoorCondition_1":{
    name: "vup_Default_PoorCondition_1",//InDefault
    state : AnimationStatus.Initial,
    imageFrameInfoList: [
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_000_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_001_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_002_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_003_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_004_375.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_005_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_006_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_007_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_008_500.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_009_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_010_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_011_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_012_375.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_013_375.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_014_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_015_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Default/PoorCondition/1/_016_125.png"),duration: allDurationOfFrame },
    ],
    iterations: -1,
    isReverse: false,
    fillMode: FillMode.Forwards,
    renderWidth: 400,
    renderHeight: 400
  },





  // 睡眠GIF
  "vup_Sleep_A_Happy":{
    name :"vup_Sleep_A_Happy",//ToSleep
    state : AnimationStatus.Initial,
    imageFrameInfoList: [
      {src: $rawfile("motions/vup/Sleep/A_Happy/happysleep_000_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Sleep/A_Happy/happysleep_001_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Sleep/A_Happy/happysleep_002_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Sleep/A_Happy/happysleep_003_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Sleep/A_Happy/happysleep_004_125.png"),duration: allDurationOfFrame },
    ],
    iterations: 1,
    isReverse: false,
    fillMode: FillMode.Forwards,
    renderWidth: 400,
    renderHeight: 400
  },
  "vup_Sleep_B_Happy":{
    name :"vup_Sleep_B_Happy",//InSleep
    state : AnimationStatus.Initial,
    imageFrameInfoList: [
      {src: $rawfile("motions/vup/Sleep/B_Happy/happysleep_000_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Sleep/B_Happy/happysleep_001_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Sleep/B_Happy/happysleep_002_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Sleep/B_Happy/happysleep_003_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Sleep/B_Happy/happysleep_004_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Sleep/B_Happy/happysleep_005_125.png"),duration: allDurationOfFrame },
    ],
    iterations: -1,
    isReverse: false,
    fillMode: FillMode.Forwards,
    renderWidth: 400,
    renderHeight: 400
  },
  "vup_Sleep_C_Happy":{
    name :"vup_Sleep_C_Happy",//ExitSleep
    state : AnimationStatus.Initial,
    imageFrameInfoList: [
      {src: $rawfile("motions/vup/Sleep/C_Happy/happysleep_000_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Sleep/C_Happy/happysleep_001_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Sleep/C_Happy/happysleep_002_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Sleep/C_Happy/happysleep_003_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Sleep/C_Happy/happysleep_004_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Sleep/C_Happy/happysleep_005_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Sleep/C_Happy/happysleep_006_125.png"),duration: allDurationOfFrame },
    ],
    iterations: 1,
    isReverse: false,
    fillMode: FillMode.Forwards,
    renderWidth: 400,
    renderHeight: 400
  },


  //学习GIF

  "vup_WORK_Study_A_normal":{
    name :"vup_WORK_Study_A_normal",//ToStudy
    state : AnimationStatus.Initial,
    imageFrameInfoList: [
      {src: $rawfile("motions/vup/WORK/Study/A_Nomal/reading1A_000_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/A_Nomal/reading1A_001_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/A_Nomal/reading1A_002_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/A_Nomal/reading1A_003_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/A_Nomal/reading1A_004_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/A_Nomal/reading1A_005_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/A_Nomal/reading1A_006_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/A_Nomal/reading1A_007_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/A_Nomal/reading1A_008_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/A_Nomal/reading1A_008_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/A_Nomal/reading1A_010_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/A_Nomal/reading1A_011_125.png"),duration: allDurationOfFrame },
    ],
    iterations: 1,
    isReverse: false,
    fillMode: FillMode.Forwards,
    renderWidth: 400,
    renderHeight: 400
  },

  "vup_WORK_Study_B_normal":{
    name :"vup_WORK_Study_B_normal",//InStudy
    state : AnimationStatus.Initial,
    imageFrameInfoList: [
      {src: $rawfile("motions/vup/WORK/Study/B_1_Nomal/reading1B_000_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/B_1_Nomal/reading1B_001_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/B_1_Nomal/reading1B_002_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/B_1_Nomal/reading1B_003_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/B_1_Nomal/reading1B_004_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/B_1_Nomal/reading1B_005_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/B_1_Nomal/reading1B_006_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/B_1_Nomal/reading1B_007_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/B_1_Nomal/reading1B_008_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/B_1_Nomal/reading1B_009_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/B_1_Nomal/reading1B_010_125.png"),duration: allDurationOfFrame },
    ],
    iterations: -1,
    isReverse: false,
    fillMode: FillMode.Forwards,
    renderWidth: 400,
    renderHeight: 400
  },

  "vup_WORK_Study_C_normal":{
    name :"vup_WORK_Study_C_normal",//ExitStudy
    state : AnimationStatus.Initial,
    imageFrameInfoList: [
      {src: $rawfile("motions/vup/WORK/Study/C_NomalX/C_000_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/C_NomalX/C_001_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/C_NomalX/C_002_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/C_NomalX/C_003_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/C_NomalX/C_004_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/C_NomalX/C_005_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/C_NomalX/C_006_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/C_NomalX/C_007_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/C_NomalX/C_008_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/C_NomalX/C_009_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/Study/C_NomalX/C_010_125.png"),duration: allDurationOfFrame },
    ],
    // imageFrameInfoList: [
    //   {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_000_125.png"),duration: allDurationOfFrame },
    //   {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_001_125.png"),duration: allDurationOfFrame },
    //   {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_002_125.png"),duration: allDurationOfFrame },
    //   {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_003_125.png"),duration: allDurationOfFrame },
    //   {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_004_125.png"),duration: allDurationOfFrame },
    //   {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_005_125.png"),duration: allDurationOfFrame },
    //   {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_006_125.png"),duration: allDurationOfFrame },
    //   {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_007_125.png"),duration: allDurationOfFrame },
    //   {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_008_125.png"),duration: allDurationOfFrame },
    //   {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_009_125.png"),duration: allDurationOfFrame },
    //   {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_010_125.png"),duration: allDurationOfFrame },
    //   {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_011_125.png"),duration: allDurationOfFrame },
    //   {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_012_125.png"),duration: allDurationOfFrame },
    //   {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_013_125.png"),duration: allDurationOfFrame },
    //   {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_014_125.png"),duration: allDurationOfFrame },
    //   {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_015_125.png"),duration: allDurationOfFrame },
    //   {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_016_125.png"),duration: allDurationOfFrame },
    //   {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_017_125.png"),duration: allDurationOfFrame },
    //   {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_018_125.png"),duration: allDurationOfFrame },
    //   {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_019_125.png"),duration: allDurationOfFrame },
    // ],
    //waitFix:为什么换另一个Gif源就可以？？？？？？？
    iterations: 1,
    isReverse: false,
    fillMode: FillMode.Forwards,
    renderWidth: 400,
    renderHeight: 400
  },

  //研究GIF
  "vup_WORK_WORKTWO_A_Nomal":{
    name :"vup_WORK_WORKTWO_A_Nomal",//toReserch
    state : AnimationStatus.Initial,
    imageFrameInfoList: [
      {src: $rawfile("motions/vup/WORK/WorkTWO/A_Nomal/workA_000_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/A_Nomal/workA_001_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/A_Nomal/workA_002_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/A_Nomal/workA_003_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/A_Nomal/workA_004_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/A_Nomal/workA_005_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/A_Nomal/workA_006_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/A_Nomal/workA_007_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/A_Nomal/workA_008_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/A_Nomal/workA_009_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/A_Nomal/workA_010_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/A_Nomal/workA_011_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/A_Nomal/workA_012_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/A_Nomal/workA_013_125.png"),duration: allDurationOfFrame },
    ],
    iterations: 1,
    isReverse: false,
    fillMode: FillMode.Forwards,
    renderWidth: 400,
    renderHeight: 400
  },

  "vup_WORK_WORKTWO_B_1_Nomal":{
    name :"vup_WORK_WORKTWO_B_1_Nomal",//inReserch
    state : AnimationStatus.Initial,
    imageFrameInfoList: [
      {src: $rawfile("motions/vup/WORK/WorkTWO/B_1_Nomal/face1_000_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/B_1_Nomal/face1_001_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/B_1_Nomal/face1_002_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/B_1_Nomal/face1_003_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/B_1_Nomal/face1_004_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/B_1_Nomal/face1_005_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/B_1_Nomal/face1_006_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/B_1_Nomal/face1_007_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/B_1_Nomal/face1_008_125.png"),duration: allDurationOfFrame },
    ],
    iterations: -1,
    isReverse: false,
    fillMode: FillMode.Forwards,
    renderWidth: 400,
    renderHeight: 400
  },


  "vup_WORK_WORKTWO_C_Nomal":{
    name :"vup_WORK_WORKTWO_C_Nomal",//outReserch
    state : AnimationStatus.Initial,
    imageFrameInfoList: [
      {src: $rawfile("motions/vup/WORK/WorkTWO/C_Nomal/电脑退出C_000_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/C_Nomal/电脑退出C_001_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/C_Nomal/电脑退出C_002_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/C_Nomal/电脑退出C_003_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/C_Nomal/电脑退出C_004_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/C_Nomal/电脑退出C_005_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/C_Nomal/电脑退出C_006_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/C_Nomal/电脑退出C_007_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/C_Nomal/电脑退出C_008_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/C_Nomal/电脑退出C_009_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/WORK/WorkTWO/C_Nomal/电脑退出C_010_125.png"),duration: allDurationOfFrame },
    ],
    iterations: 1,
    isReverse: false,
    fillMode: FillMode.Forwards,
    renderWidth: 400,
    renderHeight: 400
  },




  //玩耍GIF


  //吃饭GIF
  "vup_Eat_Happy_back_lay":{
    name :"vup_Eat_Happy_back_lay",//Eat
    state : AnimationStatus.Initial,
    imageFrameInfoList: [
      {src: $rawfile("motions/vup/Eat/Happy/back_lay/_000_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Eat/Happy/back_lay/_001_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Eat/Happy/back_lay/_002_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Eat/Happy/back_lay/_003_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Eat/Happy/back_lay/_004_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Eat/Happy/back_lay/_005_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Eat/Happy/back_lay/_006_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Eat/Happy/back_lay/_007_375.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Eat/Happy/back_lay/_008_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Eat/Happy/back_lay/_009_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Eat/Happy/back_lay/_010_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Eat/Happy/back_lay/_011_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Eat/Happy/back_lay/_012_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Eat/Happy/back_lay/_013_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Eat/Happy/back_lay/_014_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Eat/Happy/back_lay/_015_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Eat/Happy/back_lay/_016_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Eat/Happy/back_lay/_017_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Eat/Happy/back_lay/_018_125.png"),duration: allDurationOfFrame },
    ],
    iterations: 1,
    isReverse: false,
    fillMode: FillMode.Forwards,
    renderWidth: 400,
    renderHeight: 400
  },
  //喝水GIF
  "vup_Drink_Happy_back_lay":{
    name :"vup_Drink_Happy_back_lay",//Drink
    state : AnimationStatus.Initial,
    imageFrameInfoList: [
      {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_000_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_001_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_002_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_003_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_004_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_005_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_006_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_007_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_008_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_009_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_010_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_011_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_012_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_013_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_014_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_015_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_016_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_017_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_018_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/Drink/Happy/back_lay/喝水_019_125.png"),duration: allDurationOfFrame },
    ],
    iterations: 1,
    isReverse: false,
    fillMode: FillMode.Forwards,
    renderWidth: 400,
    renderHeight: 400
  },


  //启动动画
  "vup_StartUP_Happy":{
    name :"vup_StartUP_Happy",//Drink
    state : AnimationStatus.Initial,
    imageFrameInfoList: [
      {src: $rawfile("motions/vup/StartUP/Happy/启动动画_000_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/StartUP/Happy/启动动画_001_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/StartUP/Happy/启动动画_002_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/StartUP/Happy/启动动画_003_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/StartUP/Happy/启动动画_004_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/StartUP/Happy/启动动画_005_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/StartUP/Happy/启动动画_006_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/StartUP/Happy/启动动画_007_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/StartUP/Happy/启动动画_008_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/StartUP/Happy/启动动画_009_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/StartUP/Happy/启动动画_010_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/StartUP/Happy/启动动画_011_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/StartUP/Happy/启动动画_012_125.png"),duration: allDurationOfFrame },
      {src: $rawfile("motions/vup/StartUP/Happy/启动动画_013_125.png"),duration: allDurationOfFrame },

    ],
    iterations: 1,
    isReverse: false,
    fillMode: FillMode.Forwards,
    renderWidth: 400,
    renderHeight: 400
  },

}