.class public Lcom/lotecs/attendcheck/student/AttendActivity;
.super Lcom/lotecs/attendcheck/BaseActivity;
.source "AttendActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lotecs/attendcheck/student/AttendActivity$BaseAccessPointMac;,
        Lcom/lotecs/attendcheck/student/AttendActivity$MainTimerTask;
    }
.end annotation


# static fields
.field protected static final ATDC_CHECK_FAIL:I = 0x756fd2b

.field protected static final ATDC_CHECK_PROGRESS:I = 0x756fd29

.field protected static final ATDC_CHECK_SUCCESS:I = 0x756fd2a

.field protected static final INFO_BE_SUCCESS:I = 0x756fd2e

.field protected static final INFO_FAIL:I = 0x756fd25

.field protected static final INFO_PROGRESS:I = 0x756fd23

.field protected static final INFO_SUCCESS:I = 0x756fd24

.field protected static final INITIAL_INFO:I = 0x756fd22

.field protected static final MAC_CHECK_FAIL:I = 0x756fd28

.field protected static final MAC_CHECK_PROGRESS:I = 0x756fd26

.field protected static final MAC_CHECK_RUN:I = 0x756fd4e

.field protected static final MAC_CHECK_SUCCESS:I = 0x756fd27

.field protected static final TAG:Ljava/lang/String; = "AttendActivity"

.field protected static final TIME_TEXT_ANIMATION:I = 0x4965e398


# instance fields
.field private alarmIntent:Landroid/content/Intent;

.field private atte_:Lcom/lotecs/attendcheck/domain/AttendInfo;

.field private attend_ok_text_:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f08002c
    .end annotation
.end field

.field private change_iamge_:Landroid/widget/ImageView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f080052
    .end annotation
.end field

.field private checkBeaconCount:I

.field private checkType:Ljava/lang/String;

.field private cnt:I

.field private content_time_:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f080061
    .end annotation
.end field

.field private goplusBeacons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;"
        }
    .end annotation
.end field

.field infomation_group_:Landroid/widget/LinearLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f080095
    .end annotation
.end field

.field private infos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lotecs/attendcheck/domain/AttendInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isGetSSID:Z

.field private isNetStatCnt:I

.field private isWifiState:Z

.field private key:Ljava/lang/String;

.field private lecture_name_:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f08011d
    .end annotation
.end field

.field private lecture_pro_:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f08011e
    .end annotation
.end field

.field private lecture_room_:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f08011f
    .end annotation
.end field

.field private lecture_time_:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f080120
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;

.field private mTimer:Ljava/util/Timer;

.field private mUIHandler:Landroid/os/Handler;

.field private netStatTimer:Ljava/util/Timer;

.field private networkStatRun:Ljava/lang/Runnable;

.field private ok_button_:Landroid/widget/ImageButton;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f08002b
    .end annotation
.end field

.field private prof_photo_:Landroid/widget/ImageView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0800e9
    .end annotation
.end field

.field private prog_:Landroid/widget/ProgressBar;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0800eb
    .end annotation
.end field

.field private secondEncode:Ljava/lang/String;

.field private state_check_:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f08002d
    .end annotation
.end field

.field private time:Ljava/lang/String;

.field private type:I

.field private uid_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/lotecs/attendcheck/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->infos:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->isGetSSID:Z

    .line 131
    iput v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->isNetStatCnt:I

    .line 136
    iput v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->cnt:I

    .line 138
    iput v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->type:I

    .line 141
    iput v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->checkBeaconCount:I

    .line 142
    iput-boolean v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->isWifiState:Z

    .line 173
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->mHandler:Landroid/os/Handler;

    .line 174
    new-instance v0, Lcom/lotecs/attendcheck/student/AttendActivity$1;

    invoke-direct {v0, p0}, Lcom/lotecs/attendcheck/student/AttendActivity$1;-><init>(Lcom/lotecs/attendcheck/student/AttendActivity;)V

    iput-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->mRunnable:Ljava/lang/Runnable;

    .line 182
    new-instance v0, Lcom/lotecs/attendcheck/student/AttendActivity$2;

    invoke-direct {v0, p0}, Lcom/lotecs/attendcheck/student/AttendActivity$2;-><init>(Lcom/lotecs/attendcheck/student/AttendActivity;)V

    iput-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->networkStatRun:Ljava/lang/Runnable;

    .line 872
    new-instance v0, Lcom/lotecs/attendcheck/student/AttendActivity$10;

    invoke-direct {v0, p0}, Lcom/lotecs/attendcheck/student/AttendActivity$10;-><init>(Lcom/lotecs/attendcheck/student/AttendActivity;)V

    iput-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/TextView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->content_time_:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lotecs/attendcheck/student/AttendActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->isNetStatCnt:I

    return p0
.end method

.method static synthetic access$1000(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->checkType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/lotecs/attendcheck/student/AttendActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->checkType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$108(Lcom/lotecs/attendcheck/student/AttendActivity;)I
    .locals 2

    .line 69
    iget v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->isNetStatCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->isNetStatCnt:I

    return v0
.end method

.method static synthetic access$1100(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->secondEncode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/lotecs/attendcheck/student/AttendActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->secondEncode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/lotecs/attendcheck/student/AttendActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->cnt:I

    return p0
.end method

.method static synthetic access$1202(Lcom/lotecs/attendcheck/student/AttendActivity;I)I
    .locals 0

    .line 69
    iput p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->cnt:I

    return p1
.end method

.method static synthetic access$1300(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->time:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/lotecs/attendcheck/student/AttendActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->time:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/lotecs/attendcheck/student/AttendActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->type:I

    return p0
.end method

.method static synthetic access$1402(Lcom/lotecs/attendcheck/student/AttendActivity;I)I
    .locals 0

    .line 69
    iput p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->type:I

    return p1
.end method

.method static synthetic access$1502(Lcom/lotecs/attendcheck/student/AttendActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->key:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->uid_:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/lotecs/attendcheck/student/AttendActivity;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->isGetSSID:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/lotecs/attendcheck/student/AttendActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lotecs/attendcheck/student/AttendActivity;->inputTextView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->prof_photo_:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/util/Timer;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->netStatTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/lotecs/attendcheck/student/AttendActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/lotecs/attendcheck/student/AttendActivity;->getAtdcInfoBe()V

    return-void
.end method

.method static synthetic access$202(Lcom/lotecs/attendcheck/student/AttendActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->netStatTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/lotecs/attendcheck/student/AttendActivity;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->isWifiState:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/lotecs/attendcheck/student/AttendActivity;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->isWifiState:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/lotecs/attendcheck/student/AttendActivity;Lcom/lotecs/attendcheck/domain/AttendInfo;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->atdcCheck2(Lcom/lotecs/attendcheck/domain/AttendInfo;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->prog_:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->change_iamge_:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/TextView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->state_check_:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/lotecs/attendcheck/student/AttendActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/lotecs/attendcheck/student/AttendActivity;->resizeImg()V

    return-void
.end method

.method static synthetic access$2700(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/TextView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->attend_ok_text_:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/lotecs/attendcheck/student/AttendActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->checkBeaconCount:I

    return p0
.end method

.method static synthetic access$2808(Lcom/lotecs/attendcheck/student/AttendActivity;)I
    .locals 2

    .line 69
    iget v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->checkBeaconCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->checkBeaconCount:I

    return v0
.end method

.method static synthetic access$2900(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->goplusBeacons:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/lotecs/attendcheck/student/AttendActivity;)Lcom/lotecs/attendcheck/domain/AttendInfo;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->atte_:Lcom/lotecs/attendcheck/domain/AttendInfo;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/lotecs/attendcheck/student/AttendActivity;Ljava/util/List;)Lcom/lotecs/attendcheck/domain/AttendInfo;
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->getBeaconAuth(Ljava/util/List;)Lcom/lotecs/attendcheck/domain/AttendInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$302(Lcom/lotecs/attendcheck/student/AttendActivity;Lcom/lotecs/attendcheck/domain/AttendInfo;)Lcom/lotecs/attendcheck/domain/AttendInfo;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->atte_:Lcom/lotecs/attendcheck/domain/AttendInfo;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/lotecs/attendcheck/student/AttendActivity;Lcom/lotecs/attendcheck/domain/AttendInfo;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->getAtdcChkBe(Lcom/lotecs/attendcheck/domain/AttendInfo;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/lotecs/attendcheck/student/AttendActivity;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->setImg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/util/Timer;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->mTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/lotecs/attendcheck/student/AttendActivity;Lcom/lotecs/attendcheck/domain/AttendInfo;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/lotecs/attendcheck/student/AttendActivity;->getAtdcChk(Lcom/lotecs/attendcheck/domain/AttendInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->networkStatRun:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->infos:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$902(Lcom/lotecs/attendcheck/student/AttendActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->infos:Ljava/util/ArrayList;

    return-object p1
.end method

.method private atdcCheck2(Lcom/lotecs/attendcheck/domain/AttendInfo;)V
    .locals 5

    const v0, 0x7f0e002b

    .line 752
    invoke-virtual {p0, v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 754
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "idno"

    .line 755
    iget-object v3, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->uid_:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "psco"

    .line 756
    invoke-virtual {p1}, Lcom/lotecs/attendcheck/domain/AttendInfo;->getPsco()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sjco"

    .line 757
    invoke-virtual {p1}, Lcom/lotecs/attendcheck/domain/AttendInfo;->getSjco()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mac"

    .line 758
    invoke-virtual {p1}, Lcom/lotecs/attendcheck/domain/AttendInfo;->getMac()Ljava/lang/String;

    move-result-object p1

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "date"

    const-string v2, "yyyyMMddHHmmss"

    .line 759
    invoke-static {v2}, Lcom/lotecs/util/DateUtil;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "uuid"

    .line 760
    invoke-static {p0}, Lcom/lotecs/util/AndroidUtil;->device_id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "check"

    const-string v2, "1"

    .line 761
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "count"

    .line 762
    iget v2, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->cnt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    sget-object p1, Lcom/lotecs/attendcheck/student/AttendActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-static {v0}, Lcom/androidnetworking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    .line 770
    invoke-virtual {p1, v1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->addUrlEncodeFormBodyParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    sget-object v0, Lcom/androidnetworking/common/Priority;->MEDIUM:Lcom/androidnetworking/common/Priority;

    .line 774
    invoke-virtual {p1, v0}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->setPriority(Lcom/androidnetworking/common/Priority;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->build()Lcom/androidnetworking/common/ANRequest;

    move-result-object p1

    new-instance v0, Lcom/lotecs/attendcheck/student/AttendActivity$8;

    invoke-direct {v0, p0}, Lcom/lotecs/attendcheck/student/AttendActivity$8;-><init>(Lcom/lotecs/attendcheck/student/AttendActivity;)V

    .line 775
    invoke-virtual {p1, v0}, Lcom/androidnetworking/common/ANRequest;->getAsJSONObject(Lcom/androidnetworking/interfaces/JSONObjectRequestListener;)V

    return-void
.end method

.method private changeWifiState()V
    .locals 2

    const-string v0, "wifi"

    .line 324
    invoke-virtual {p0, v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 325
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 326
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 327
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reassociate()Z

    .line 328
    iput-boolean v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->isWifiState:Z

    :cond_0
    return-void
.end method

.method private filterBeacons(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;"
        }
    .end annotation

    .line 1166
    sget-object v0, Lcom/lotecs/attendcheck/student/AttendActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\uac1c filterBeacons"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1169
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/Beacon;

    .line 1170
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1173
    :cond_0
    new-instance p1, Lcom/lotecs/attendcheck/student/AttendActivity$11;

    invoke-direct {p1, p0}, Lcom/lotecs/attendcheck/student/AttendActivity$11;-><init>(Lcom/lotecs/attendcheck/student/AttendActivity;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private getAtdcChk(Lcom/lotecs/attendcheck/domain/AttendInfo;Ljava/lang/String;)V
    .locals 6

    const v0, 0x7f0e002a

    .line 670
    invoke-virtual {p0, v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 672
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "idno"

    .line 673
    iget-object v3, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->uid_:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "psco"

    .line 674
    invoke-virtual {p1}, Lcom/lotecs/attendcheck/domain/AttendInfo;->getPsco()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sjco"

    .line 675
    invoke-virtual {p1}, Lcom/lotecs/attendcheck/domain/AttendInfo;->getSjco()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mac"

    .line 676
    invoke-virtual {p1}, Lcom/lotecs/attendcheck/domain/AttendInfo;->getMac()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "date"

    const-string v3, "yyyyMMddHHmmss"

    .line 677
    invoke-static {v3}, Lcom/lotecs/util/DateUtil;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "uuid"

    .line 678
    invoke-static {p0}, Lcom/lotecs/util/AndroidUtil;->device_id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "check"

    .line 679
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "auth"

    .line 680
    iget-object v2, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->secondEncode:Ljava/lang/String;

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    sget-object p2, Lcom/lotecs/attendcheck/student/AttendActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-static {v0}, Lcom/androidnetworking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p2

    .line 692
    invoke-virtual {p2, v1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->addUrlEncodeFormBodyParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p2

    sget-object v0, Lcom/androidnetworking/common/Priority;->MEDIUM:Lcom/androidnetworking/common/Priority;

    .line 696
    invoke-virtual {p2, v0}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->setPriority(Lcom/androidnetworking/common/Priority;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->build()Lcom/androidnetworking/common/ANRequest;

    move-result-object p2

    new-instance v0, Lcom/lotecs/attendcheck/student/AttendActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/lotecs/attendcheck/student/AttendActivity$7;-><init>(Lcom/lotecs/attendcheck/student/AttendActivity;Lcom/lotecs/attendcheck/domain/AttendInfo;)V

    .line 697
    invoke-virtual {p2, v0}, Lcom/androidnetworking/common/ANRequest;->getAsJSONObject(Lcom/androidnetworking/interfaces/JSONObjectRequestListener;)V

    return-void
.end method

.method private getAtdcChkBe(Lcom/lotecs/attendcheck/domain/AttendInfo;)V
    .locals 5

    const v0, 0x7f0e002d

    .line 817
    invoke-virtual {p0, v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 819
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "idno"

    .line 820
    iget-object v3, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->uid_:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mac"

    .line 821
    invoke-virtual {p1}, Lcom/lotecs/attendcheck/domain/AttendInfo;->getMac()Ljava/lang/String;

    move-result-object p1

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "date"

    const-string v2, "yyyyMMddHHmmss"

    .line 822
    invoke-static {v2}, Lcom/lotecs/util/DateUtil;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "check"

    const-string v2, "1"

    .line 823
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    sget-object p1, Lcom/lotecs/attendcheck/student/AttendActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-static {v0}, Lcom/androidnetworking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    .line 831
    invoke-virtual {p1, v1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->addUrlEncodeFormBodyParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    sget-object v0, Lcom/androidnetworking/common/Priority;->MEDIUM:Lcom/androidnetworking/common/Priority;

    .line 835
    invoke-virtual {p1, v0}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->setPriority(Lcom/androidnetworking/common/Priority;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->build()Lcom/androidnetworking/common/ANRequest;

    move-result-object p1

    new-instance v0, Lcom/lotecs/attendcheck/student/AttendActivity$9;

    invoke-direct {v0, p0}, Lcom/lotecs/attendcheck/student/AttendActivity$9;-><init>(Lcom/lotecs/attendcheck/student/AttendActivity;)V

    .line 836
    invoke-virtual {p1, v0}, Lcom/androidnetworking/common/ANRequest;->getAsJSONObject(Lcom/androidnetworking/interfaces/JSONObjectRequestListener;)V

    return-void
.end method

.method private getAtdcInfo()V
    .locals 5

    const v0, 0x7f0e002e

    .line 354
    invoke-virtual {p0, v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 356
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "idno"

    .line 357
    iget-object v3, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->uid_:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "date"

    const-string v3, "yyyyMMddHHmmss"

    .line 358
    invoke-static {v3}, Lcom/lotecs/util/DateUtil;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v2, Lcom/lotecs/attendcheck/student/AttendActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-static {v0}, Lcom/androidnetworking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 366
    invoke-virtual {v0, v1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->addUrlEncodeFormBodyParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/androidnetworking/common/Priority;->MEDIUM:Lcom/androidnetworking/common/Priority;

    .line 370
    invoke-virtual {v0, v1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->setPriority(Lcom/androidnetworking/common/Priority;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->build()Lcom/androidnetworking/common/ANRequest;

    move-result-object v0

    new-instance v1, Lcom/lotecs/attendcheck/student/AttendActivity$5;

    invoke-direct {v1, p0}, Lcom/lotecs/attendcheck/student/AttendActivity$5;-><init>(Lcom/lotecs/attendcheck/student/AttendActivity;)V

    .line 371
    invoke-virtual {v0, v1}, Lcom/androidnetworking/common/ANRequest;->getAsJSONObject(Lcom/androidnetworking/interfaces/JSONObjectRequestListener;)V

    return-void
.end method

.method private getAtdcInfoBe()V
    .locals 5

    const v0, 0x7f0e002f

    .line 470
    invoke-virtual {p0, v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 472
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "idno"

    .line 473
    iget-object v3, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->uid_:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "date"

    const-string v3, "yyyyMMddHHmmss"

    .line 474
    invoke-static {v3}, Lcom/lotecs/util/DateUtil;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v2, Lcom/lotecs/attendcheck/student/AttendActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-static {v0}, Lcom/androidnetworking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 481
    invoke-virtual {v0, v1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->addUrlEncodeFormBodyParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/androidnetworking/common/Priority;->MEDIUM:Lcom/androidnetworking/common/Priority;

    .line 485
    invoke-virtual {v0, v1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->setPriority(Lcom/androidnetworking/common/Priority;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->build()Lcom/androidnetworking/common/ANRequest;

    move-result-object v0

    new-instance v1, Lcom/lotecs/attendcheck/student/AttendActivity$6;

    invoke-direct {v1, p0}, Lcom/lotecs/attendcheck/student/AttendActivity$6;-><init>(Lcom/lotecs/attendcheck/student/AttendActivity;)V

    .line 486
    invoke-virtual {v0, v1}, Lcom/androidnetworking/common/ANRequest;->getAsJSONObject(Lcom/androidnetworking/interfaces/JSONObjectRequestListener;)V

    return-void
.end method

.method private getBeaconAuth(Ljava/util/List;)Lcom/lotecs/attendcheck/domain/AttendInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lotecs/attendcheck/domain/AttendInfo;",
            ">;)",
            "Lcom/lotecs/attendcheck/domain/AttendInfo;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->goplusBeacons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/Beacon;

    .line 336
    sget-object v2, Lcom/lotecs/attendcheck/student/AttendActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/Beacon;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lotecs/attendcheck/domain/AttendInfo;

    .line 339
    invoke-virtual {v3}, Lcom/lotecs/attendcheck/domain/AttendInfo;->getSsid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/altbeacon/beacon/Beacon;->getId1()Lorg/altbeacon/beacon/Identifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/altbeacon/beacon/Identifier;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 341
    invoke-virtual {v3}, Lcom/lotecs/attendcheck/domain/AttendInfo;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/altbeacon/beacon/Beacon;->getId3()Lorg/altbeacon/beacon/Identifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/Beacon;->getId2()Lorg/altbeacon/beacon/Identifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private inputTextView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->lecture_name_:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->lecture_room_:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->lecture_time_:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->lecture_pro_:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private isAlarmActivated(I)Z
    .locals 4

    .line 1126
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->alarmIntent:Landroid/content/Intent;

    const/high16 v1, 0x20000000

    .line 1127
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1133
    :goto_0
    sget-object v1, Lcom/lotecs/attendcheck/student/AttendActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isAlarmActivated] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private resizeImg()V
    .locals 3

    .line 1099
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->change_iamge_:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->change_iamge_:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleX()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1100
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->change_iamge_:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->change_iamge_:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleY()F

    move-result v1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1102
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->change_iamge_:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x2

    const v2, 0x7f080061

    .line 1104
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xe

    .line 1105
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1106
    invoke-virtual {p0}, Lcom/lotecs/attendcheck/student/AttendActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1107
    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->change_iamge_:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setImg(Ljava/lang/String;)V
    .locals 1

    .line 1111
    invoke-direct {p0}, Lcom/lotecs/attendcheck/student/AttendActivity;->resizeImg()V

    const-string v0, "O"

    .line 1113
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->change_iamge_:Landroid/widget/ImageView;

    const v0, 0x7f070059

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const-string v0, "/"

    .line 1115
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1116
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->change_iamge_:Landroid/widget/ImageView;

    const v0, 0x7f070058

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const-string v0, "X"

    .line 1117
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1118
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->change_iamge_:Landroid/widget/ImageView;

    const v0, 0x7f07005b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1120
    :cond_2
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->change_iamge_:Landroid/widget/ImageView;

    const v0, 0x7f07005a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public didRangeBeaconsInRegion(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;)V"
        }
    .end annotation

    .line 1156
    sget-object v0, Lcom/lotecs/attendcheck/student/AttendActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\uac1c didRangeBeaconsInRegion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->goplusBeacons:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->filterBeacons(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f08002b

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 265
    :cond_0
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->attend_ok_text_:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0e0037

    invoke-virtual {p0, v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 266
    iget-boolean p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->isGetSSID:Z

    if-nez p1, :cond_1

    const-string p1, "\uc54c\ub9bc"

    const-string v0, "The unregistered classroom.(\ub4f1\ub85d\ub418\uc9c0 \uc54a\uc740 \uac15\uc758\uc2e4 \uc785\ub2c8\ub2e4.) "

    .line 268
    invoke-static {p0, p1, v0}, Lcom/lotecs/util/AndroidUtil;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 273
    :cond_1
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->key:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->key:Ljava/lang/String;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "null"

    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 280
    :cond_2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\uc804\uc790\ucd9c\uacb0\uc2dc\uc2a4\ud15c"

    .line 282
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "\uc778\uc99d\ud0a4\ub97c \uc785\ub825\ud558\uc2ed\uc2dc\uc624."

    .line 283
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 286
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 287
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v1, "OK"

    .line 289
    new-instance v2, Lcom/lotecs/attendcheck/student/AttendActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/lotecs/attendcheck/student/AttendActivity$3;-><init>(Lcom/lotecs/attendcheck/student/AttendActivity;Landroid/widget/EditText;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "Cancel"

    .line 301
    new-instance v1, Lcom/lotecs/attendcheck/student/AttendActivity$4;

    invoke-direct {v1, p0}, Lcom/lotecs/attendcheck/student/AttendActivity$4;-><init>(Lcom/lotecs/attendcheck/student/AttendActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 308
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 274
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->mUIHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->mUIHandler:Landroid/os/Handler;

    const v1, 0x756fd26

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 275
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->mUIHandler:Landroid/os/Handler;

    const v0, 0x756fd4e

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 314
    :cond_4
    invoke-virtual {p0}, Lcom/lotecs/attendcheck/student/AttendActivity;->finish()V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 149
    invoke-super {p0, p1}, Lcom/lotecs/attendcheck/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001c

    .line 150
    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->setContentView(I)V

    .line 153
    invoke-virtual {p0}, Lcom/lotecs/attendcheck/student/AttendActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 155
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 156
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 160
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->goplusBeacons:Ljava/util/ArrayList;

    .line 161
    invoke-virtual {p0}, Lcom/lotecs/attendcheck/student/AttendActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->uid_:Ljava/lang/String;

    .line 163
    invoke-direct {p0}, Lcom/lotecs/attendcheck/student/AttendActivity;->getAtdcInfo()V

    .line 165
    new-instance v1, Lcom/lotecs/attendcheck/student/AttendActivity$MainTimerTask;

    const/16 p1, 0x64

    invoke-direct {v1, p0, p1}, Lcom/lotecs/attendcheck/student/AttendActivity$MainTimerTask;-><init>(Lcom/lotecs/attendcheck/student/AttendActivity;I)V

    .line 166
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->mTimer:Ljava/util/Timer;

    .line 167
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->mTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 170
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->ok_button_:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1140
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->mTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1142
    iput-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->mTimer:Ljava/util/Timer;

    .line 1145
    :cond_0
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->netStatTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 1146
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->netStatTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1147
    iput-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->netStatTimer:Ljava/util/Timer;

    .line 1150
    :cond_1
    invoke-super {p0}, Lcom/lotecs/attendcheck/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 1184
    invoke-virtual {p0}, Lcom/lotecs/attendcheck/student/AttendActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->setRangingActivity(Lcom/lotecs/attendcheck/student/AttendActivity;Z)V

    .line 1185
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1187
    iput-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->mTimer:Ljava/util/Timer;

    .line 1189
    :cond_0
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->netStatTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 1190
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->netStatTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1191
    iput-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->netStatTimer:Ljava/util/Timer;

    .line 1193
    :cond_1
    invoke-super {p0}, Lcom/lotecs/attendcheck/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 8

    .line 1198
    invoke-virtual {p0}, Lcom/lotecs/attendcheck/student/AttendActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->setRangingActivity(Lcom/lotecs/attendcheck/student/AttendActivity;Z)V

    .line 1199
    new-instance v3, Lcom/lotecs/attendcheck/student/AttendActivity$MainTimerTask;

    const/16 v0, 0x64

    invoke-direct {v3, p0, v0}, Lcom/lotecs/attendcheck/student/AttendActivity$MainTimerTask;-><init>(Lcom/lotecs/attendcheck/student/AttendActivity;I)V

    .line 1200
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1201
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->mTimer:Ljava/util/Timer;

    .line 1202
    iget-object v2, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->mTimer:Ljava/util/Timer;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1204
    :cond_0
    invoke-super {p0}, Lcom/lotecs/attendcheck/BaseActivity;->onResume()V

    return-void
.end method

.method public registerRestartAlarm(ZLjava/util/ArrayList;ILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Lcom/lotecs/attendcheck/domain/AttendInfo;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1063
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lotecs/attendcheck/ReCheckRestartReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->alarmIntent:Landroid/content/Intent;

    .line 1064
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "atte"

    .line 1065
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p2, "cnt"

    .line 1066
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1067
    iget-object p2, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->alarmIntent:Landroid/content/Intent;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p2, ","

    .line 1068
    invoke-virtual {p4, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 1071
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lotecs/util/DateUtil;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1074
    sget-object v2, Lcom/lotecs/attendcheck/student/AttendActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/lotecs/util/DateUtil;->getDifferenceSecond(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    invoke-static {v1}, Lcom/lotecs/util/DateUtil;->getDifferenceSecond(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    .line 1077
    aget-object v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/lotecs/attendcheck/student/AttendActivity;->isAlarmActivated(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1078
    aget-object v2, p2, v0

    .line 1079
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/lotecs/attendcheck/student/AttendActivity;->alarmIntent:Landroid/content/Intent;

    .line 1078
    invoke-static {p0, v2, v3, p4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v3, "alarm"

    .line 1080
    invoke-virtual {p0, v3}, Lcom/lotecs/attendcheck/student/AttendActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    if-eqz p1, :cond_0

    .line 1083
    invoke-static {v1}, Lcom/lotecs/util/DateUtil;->toCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    .line 1086
    sget-object v4, Lcom/lotecs/attendcheck/student/AttendActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, p4, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 1091
    :cond_0
    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
