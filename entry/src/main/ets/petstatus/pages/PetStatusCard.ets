let petStatusStorage = new LocalStorage();

@Entry(petStatusStorage)
@Component
struct PetStatusCard {
  /*
   * The title.
   */
  readonly TITLE: string = 'Hello World';

  /*
   * The action type.
   */
  readonly ACTION_TYPE: string = 'router';

  /*
   * The ability name.
   */
  readonly ABILITY_NAME: string = 'EntryAbility';

  /*
   * The message.
   */
  readonly MESSAGE: string = 'add detail';

  /*
   * The with percentage setting.
   */
  readonly FULL_WIDTH_PERCENT: string = '100%';

  /*
   * The height percentage setting.
   */
  readonly FULL_HEIGHT_PERCENT: string = '100%';


  //List Style Constants
  // Thousandth
  readonly THOUSANDTH_80: string = '8%';
  readonly THOUSANDTH_100: string = '10%';
  readonly THOUSANDTH_400: string = '40%';
  readonly THOUSANDTH_500: string = '50%';
  readonly THOUSANDTH_560: string = '56%';
  readonly THOUSANDTH_800: string = '80%';
  readonly THOUSANDTH_900: string = '90%';
  readonly THOUSANDTH_940: string = '94%';
  readonly THOUSANDTH_1000: string = '100%';

  readonly DEFAULT_2: number = 2;
  readonly DEFAULT_8: number = 8;
  readonly DEFAULT_12: number = 12;
  readonly DEFAULT_10: number = 10;
  readonly DEFAULT_16: number = 16;
  readonly DEFAULT_18: number = 18;
  readonly DEFAULT_20: number = 20;
  readonly DEFAULT_24: number = 24;
  readonly DEFAULT_28: number = 28;
  readonly DEFAULT_32: number = 32;
  readonly DEFAULT_48: number = 48;
  readonly DEFAULT_56: number = 56;
  readonly DEFAULT_60: number = 60;

  // list space
  readonly LIST_ITEM_SPACE: number = 2;

  // navigation title
  readonly ADD_TASK_TITLE: string = '添加任务';
  readonly EDIT_TASK_TITLE: string = '编辑任务';

  // prompt message
  readonly SETTING_FINISHED_MESSAGE = '设置完成！！！';
  readonly CHOOSE_TIME_OUT_RANGE: string = '选择时间超出范围';

  // date format
  readonly TODAY: string = new Date().toDateString();

  // time range
  readonly DEFAULT_TIME: string = '08:00';
  readonly GET_UP_TIME_RANGE: string = '(06:00 - 09:00)';
  readonly SLEEP_TIME_RANGE: string = '(20:00 - 23:00)';
  readonly GET_UP_EARLY_TIME: string = '06:00';
  readonly GET_UP_LATE_TIME: string = '09:00';
  readonly SLEEP_EARLY_TIME: string = '20:00';
  readonly SLEEP_LATE_TIME: string = '23:00';
  readonly DEFAULT_SELECTED_TIME: Date = new Date(`${this.TODAY} 8:00:00`);

  // frequency Dialog
  readonly EVERYDAY: string = '每天';
  readonly NO_LENGTH: number = 0;
  readonly INIT_WEEK_IDS: string = '1, 2, 3, 4, 5, 6, 7';

  // unit
  readonly PER_DAY: string = '/ 天';

  // offset
  readonly ZERO: number = 0;
  readonly MINUS_20: number = -20;
  readonly HAS_NO_INDEX: number = -1;

  // targetSetting Range
  readonly DRINK_STEP: number = 25;
  readonly DRINK_MAX_RANGE: number = 500;
  readonly TIMES_100: number = 100;
  readonly EAT_APPLE_RANGE: number = 100;
  readonly DEFAULT_TEXT: string = '0.25';
  readonly DEFAULT_APPLE: string = '1';


  @LocalStorageProp('formId') formId:string = ''
  @LocalStorageProp('formName') formName:string = ''
  @LocalStorageProp('formDimension') formDimension:number = 0
  @LocalStorageProp('statusList') statusList:Object[] = []

  build() {
    Column(){
      Text('状态')
        .fontSize(20)
        .textAlign(TextAlign.Center)
        .margin({top:5})
        .onClick(()=>{
          console.info('FormAbility update form click');
          // formId需要为实际需要刷新的卡片ID
          postCardAction(this, {
            'action': 'message',
            'params': {
              'formId': this.formId,
              'formName': this.formName,
              'formDimension': this.formDimension,
            }
          });
        })
      Blank(5)
      List({ space: this.LIST_ITEM_SPACE }) {
        ForEach(this.statusList, item => {
          ListItem() {
            Row() {
              Row() {
                // Image(item?.icon)
                //   .width(this.DEFAULT_24)
                //   .height(this.DEFAULT_24)
                //   .margin({ right: this.DEFAULT_8 })
                Text(item.name).fontSize(this.DEFAULT_20).fontColor($r('app.color.titleColor'))
                Blank()
                Text(item.value.toString()).fontSize(this.DEFAULT_20).fontColor($r('app.color.titleColor'))
              }
              .width(this.THOUSANDTH_1000)

              // Blank()
              //   .layoutWeight(1)
              // if (item?.isOpen) {
              //   Text('已开启')
              //     .fontSize(this.DEFAULT_16)
              //     .flexGrow(1)
              //     .align(Alignment.End)
              //     .margin({ right: this.DEFAULT_8 })
              //     .fontColor($r('app.color.titleColor'))
              // }
              // Image($r('app.media.right_grey')).width(this.DEFAULT_8).height(this.DEFAULT_16)
            }
            .width(this.THOUSANDTH_1000)
            .justifyContent(FlexAlign.SpaceBetween)
            .padding({ left: this.DEFAULT_12, right: this.DEFAULT_12 })
          }
          .height('12%')
          .borderRadius(this.DEFAULT_12)
          .onClick(item.action)
          .backgroundColor($r('app.color.white'))
        })
      }
      .height(this.THOUSANDTH_1000)
      .width(this.THOUSANDTH_940)
    }
    .backgroundColor($r('app.color.primaryBgColor'))
    .width('100%')
    .height('100%')
  }
}