
import { GifDataItem } from '../bean/GifData'

export const GifDatas:Record<string,GifDataItem> = {
  //  待机GIF

  "vup_Default_Happy_1":{
    name: "vup_Default_Happy_1",//InDefault
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
      {src: $rawfile("motions/vup/Sleep/A_Happy/happysleep_000_125.png") },
      {src: $rawfile("motions/vup/Sleep/A_Happy/happysleep_001_125.png") },
      {src: $rawfile("motions/vup/Sleep/A_Happy/happysleep_002_125.png") },
      {src: $rawfile("motions/vup/Sleep/A_Happy/happysleep_003_125.png") },
      {src: $rawfile("motions/vup/Sleep/A_Happy/happysleep_004_125.png") },
    ],
    duration: 2000,
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
      {src: $rawfile("motions/vup/Sleep/B_Happy/happysleep_000_125.png") },
      {src: $rawfile("motions/vup/Sleep/B_Happy/happysleep_001_125.png") },
      {src: $rawfile("motions/vup/Sleep/B_Happy/happysleep_002_125.png") },
      {src: $rawfile("motions/vup/Sleep/B_Happy/happysleep_003_125.png") },
      {src: $rawfile("motions/vup/Sleep/B_Happy/happysleep_004_125.png") },
      {src: $rawfile("motions/vup/Sleep/B_Happy/happysleep_005_125.png") },
    ],
    duration: 2000,
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
      {src: $rawfile("motions/vup/Sleep/C_Happy/happysleep_000_125.png") },
      {src: $rawfile("motions/vup/Sleep/C_Happy/happysleep_001_125.png") },
      {src: $rawfile("motions/vup/Sleep/C_Happy/happysleep_002_125.png") },
      {src: $rawfile("motions/vup/Sleep/C_Happy/happysleep_003_125.png") },
      {src: $rawfile("motions/vup/Sleep/C_Happy/happysleep_004_125.png") },
      {src: $rawfile("motions/vup/Sleep/C_Happy/happysleep_005_125.png") },
      {src: $rawfile("motions/vup/Sleep/C_Happy/happysleep_006_125.png") },
    ],
    duration: 2000,
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
      {src: $rawfile("motions/vup/WORK/Study/A_Nomal/reading1A_000_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/A_Nomal/reading1A_001_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/A_Nomal/reading1A_002_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/A_Nomal/reading1A_003_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/A_Nomal/reading1A_004_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/A_Nomal/reading1A_005_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/A_Nomal/reading1A_006_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/A_Nomal/reading1A_007_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/A_Nomal/reading1A_008_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/A_Nomal/reading1A_008_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/A_Nomal/reading1A_010_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/A_Nomal/reading1A_011_125.png") },
    ],
    duration: 2000,
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
      {src: $rawfile("motions/vup/WORK/Study/B_1_Nomal/reading1B_000_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/B_1_Nomal/reading1B_001_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/B_1_Nomal/reading1B_002_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/B_1_Nomal/reading1B_003_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/B_1_Nomal/reading1B_004_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/B_1_Nomal/reading1B_005_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/B_1_Nomal/reading1B_006_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/B_1_Nomal/reading1B_007_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/B_1_Nomal/reading1B_008_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/B_1_Nomal/reading1B_009_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/B_1_Nomal/reading1B_010_125.png") },
    ],
    duration: 2000,
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
      {src: $rawfile("motions/vup/WORK/Study/C_Nomal/看书退出C_000_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/C_Nomal/看书退出C_001_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/C_Nomal/看书退出C_002_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/C_Nomal/看书退出C_003_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/C_Nomal/看书退出C_004_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/C_Nomal/看书退出C_005_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/C_Nomal/看书退出C_006_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/C_Nomal/看书退出C_007_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/C_Nomal/看书退出C_008_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/C_Nomal/看书退出C_009_125.png") },
      {src: $rawfile("motions/vup/WORK/Study/C_Nomal/看书退出C_010_125.png") },
    ],
    duration: 2000,
      iterations: 1,
    isReverse: false,
    fillMode: FillMode.Forwards,
    renderWidth: 400,
    renderHeight: 400
  },
  //玩耍GIF




}