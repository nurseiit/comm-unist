.class public final Lcom/google/android/gms/ads/internal/overlay/zzm;
.super Lcom/google/android/gms/internal/zzwy;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzaj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# static fields
.field private static zzOF:I


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private zzJH:Lcom/google/android/gms/internal/zzaka;

.field zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field private zzOH:Lcom/google/android/gms/ads/internal/overlay/zzr;

.field private zzOI:Lcom/google/android/gms/ads/internal/overlay/zzae;

.field private zzOJ:Z

.field private zzOK:Landroid/widget/FrameLayout;

.field private zzOL:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private zzOM:Z

.field private zzON:Z

.field private zzOO:Lcom/google/android/gms/ads/internal/overlay/zzq;

.field private zzOP:Z

.field private zzOQ:I

.field private final zzOR:Ljava/lang/Object;

.field private zzOS:Ljava/lang/Runnable;

.field private zzOT:Z

.field private zzOU:Z

.field private zzOV:Z

.field private zzOW:Z

.field private zzOX:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOF:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzwy;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOJ:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOM:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzON:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOP:Z

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOQ:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOR:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOV:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOW:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOX:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/overlay/zzm;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private final zzfM()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOV:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOV:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOQ:I

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzaka;->zzA(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOR:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOT:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzaka;->zziI()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzo;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzm;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOS:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOS:Ljava/lang/Runnable;

    sget-object v3, Lcom/google/android/gms/internal/zzmo;->zzDS:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzfN()V

    :cond_3
    return-void
.end method

.method private final zzfP()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zzfP()V

    return-void
.end method

.method private final zzr(Z)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzGB:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzaf;

    invoke-direct {v1}, Lcom/google/android/gms/ads/internal/overlay/zzaf;-><init>()V

    const/16 v2, 0x32

    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzaf;->size:I

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzaf;->paddingLeft:I

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    iput v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzaf;->paddingRight:I

    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzaf;->paddingTop:I

    iput v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzaf;->paddingBottom:I

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzae;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzae;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzaf;Lcom/google/android/gms/ads/internal/overlay/zzaj;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOI:Lcom/google/android/gms/ads/internal/overlay/zzae;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p1, :cond_2

    const/16 v1, 0xb

    goto :goto_2

    :cond_2
    const/16 v1, 0x9

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOI:Lcom/google/android/gms/ads/internal/overlay/zzae;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPj:Z

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzae;->zza(ZZ)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOO:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOI:Lcom/google/android/gms/ads/internal/overlay/zzae;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzq;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final zzs(Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/ads/internal/overlay/zzp;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOU:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzp;

    const-string v2, "Invalid activity, no window available."

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzp;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/util/zzq;->isAtLeastN()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/google/android/gms/internal/zzmo;->zzGz:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzagz;->zza(Landroid/app/Activity;Landroid/content/res/Configuration;)Z

    move-result v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    :goto_0
    iget-object v5, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPo:Lcom/google/android/gms/ads/internal/zzap;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPo:Lcom/google/android/gms/ads/internal/zzap;

    iget-boolean v5, v5, Lcom/google/android/gms/ads/internal/zzap;->zzus:Z

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    iget-boolean v7, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzON:Z

    if-eqz v7, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    if-eqz v4, :cond_5

    const/16 v4, 0x400

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    sget-object v4, Lcom/google/android/gms/internal/zzmo;->zzDT:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/google/android/gms/common/util/zzq;->zzsc()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPo:Lcom/google/android/gms/ads/internal/zzap;

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPo:Lcom/google/android/gms/ads/internal/zzap;

    iget-boolean v4, v4, Lcom/google/android/gms/ads/internal/zzap;->zzux:Z

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x1002

    invoke-virtual {v4, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_5
    iget-object v4, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPg:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzaka;->zziw()Lcom/google/android/gms/internal/zzakb;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzakb;->zzcn()Z

    move-result v4

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    iput-boolean v6, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOP:Z

    if-eqz v4, :cond_9

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahe;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzahe;->zzhT()I

    move-result v7

    if-ne v5, v7, :cond_8

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v3, :cond_7

    :goto_3
    const/4 v6, 0x1

    :cond_7
    iput-boolean v6, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOP:Z

    goto :goto_4

    :cond_8
    iget-object v5, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahe;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzahe;->zzhU()I

    move-result v7

    if-ne v5, v7, :cond_9

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_7

    goto :goto_3

    :cond_9
    :goto_4
    iget-boolean v5, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOP:Z

    const/16 v6, 0x2e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Delay onShow to next orientation change: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-virtual {v0, v5}, Lcom/google/android/gms/ads/internal/overlay/zzm;->setRequestedOrientation(I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahe;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/zzahe;->zza(Landroid/view/Window;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "Hardware acceleration on the AdActivity window enabled."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    :cond_a
    iget-boolean v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzON:Z

    if-nez v2, :cond_b

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOO:Lcom/google/android/gms/ads/internal/overlay/zzq;

    const/high16 v5, -0x1000000

    :goto_5
    invoke-virtual {v2, v5}, Lcom/google/android/gms/ads/internal/overlay/zzq;->setBackgroundColor(I)V

    goto :goto_6

    :cond_b
    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOO:Lcom/google/android/gms/ads/internal/overlay/zzq;

    sget v5, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOF:I

    goto :goto_5

    :goto_6
    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOO:Lcom/google/android/gms/ads/internal/overlay/zzq;

    invoke-virtual {v2, v5}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iput-boolean v3, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOU:Z

    if-eqz p1, :cond_e

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbA()Lcom/google/android/gms/internal/zzakk;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPg:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzaka;->zzam()Lcom/google/android/gms/internal/zziv;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v12, 0x0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v13, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzvT:Lcom/google/android/gms/internal/zzaje;

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPg:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzaka;->zzak()Lcom/google/android/gms/ads/internal/zzv;

    move-result-object v16

    invoke-static {}, Lcom/google/android/gms/internal/zzig;->zzde()Lcom/google/android/gms/internal/zzig;

    move-result-object v17

    move v11, v4

    invoke-virtual/range {v7 .. v17}, Lcom/google/android/gms/internal/zzakk;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zziv;ZZLcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/ads/internal/zzbl;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzig;)Lcom/google/android/gms/internal/zzaka;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzaka;->zziw()Lcom/google/android/gms/internal/zzakb;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v8, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPh:Lcom/google/android/gms/internal/zzqk;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v9, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPl:Lcom/google/android/gms/ads/internal/overlay/zzag;

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPg:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzaka;->zziw()Lcom/google/android/gms/internal/zzakb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzakb;->zziO()Lcom/google/android/gms/ads/internal/zzw;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v5 .. v14}, Lcom/google/android/gms/internal/zzakb;->zza(Lcom/google/android/gms/internal/zzim;Lcom/google/android/gms/ads/internal/overlay/zzw;Lcom/google/android/gms/internal/zzqk;Lcom/google/android/gms/ads/internal/overlay/zzag;ZLcom/google/android/gms/internal/zzrm;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzwv;Lcom/google/android/gms/internal/zzaet;)V

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzaka;->zziw()Lcom/google/android/gms/internal/zzakb;

    move-result-object v2

    new-instance v5, Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-direct {v5, v0}, Lcom/google/android/gms/ads/internal/overlay/zzn;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzm;)V

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/zzakb;->zza(Lcom/google/android/gms/internal/zzakf;)V

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/zzaka;->loadUrl(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPk:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v6, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPi:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPk:Ljava/lang/String;

    const-string v8, "text/html"

    const-string v9, "UTF-8"

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Lcom/google/android/gms/internal/zzaka;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPg:Lcom/google/android/gms/internal/zzaka;

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPg:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/zzaka;->zzc(Lcom/google/android/gms/ads/internal/overlay/zzm;)V

    goto :goto_8

    :cond_d
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzp;

    const-string v2, "No URL or HTML to display in ad overlay."

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzp;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzp;

    const-string v2, "Could not obtain webview for the overlay."

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzp;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPg:Lcom/google/android/gms/internal/zzaka;

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/zzaka;->setContext(Landroid/content/Context;)V

    :cond_f
    :goto_8
    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/zzaka;->zzb(Lcom/google/android/gms/ads/internal/overlay/zzm;)V

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzaka;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_10

    instance-of v5, v2, Landroid/view/ViewGroup;

    if-eqz v5, :cond_10

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzaka;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_10
    iget-boolean v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzON:Z

    if-eqz v2, :cond_11

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzaka;->zziN()V

    :cond_11
    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOO:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzaka;->getView()Landroid/view/View;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6, v6}, Lcom/google/android/gms/ads/internal/overlay/zzq;->addView(Landroid/view/View;II)V

    if-nez p1, :cond_12

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOP:Z

    if-nez v1, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzfP()V

    :cond_12
    invoke-direct {v0, v4}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzr(Z)V

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzaka;->zzix()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zza(ZZ)V

    :cond_13
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOQ:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOQ:I

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v2, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOM:Z

    const/4 v2, 0x3

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzb(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-nez v3, :cond_1

    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzp;

    const-string v0, "Could not get info for ad overlay."

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzp;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzvT:Lcom/google/android/gms/internal/zzaje;

    iget v3, v3, Lcom/google/android/gms/internal/zzaje;->zzaaP:I

    const v4, 0x7270e0

    if-le v3, v4, :cond_2

    iput v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOQ:I

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "shouldCallOnOverlayOpened"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOX:Z

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPo:Lcom/google/android/gms/ads/internal/zzap;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPo:Lcom/google/android/gms/ads/internal/zzap;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/zzap;->zzur:Z

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzON:Z

    goto :goto_1

    :cond_4
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzON:Z

    :goto_1
    sget-object v3, Lcom/google/android/gms/internal/zzmo;->zzFh:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzON:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPo:Lcom/google/android/gms/ads/internal/zzap;

    iget v3, v3, Lcom/google/android/gms/ads/internal/zzap;->zzuw:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/zzs;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/ads/internal/overlay/zzs;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzm;Lcom/google/android/gms/ads/internal/overlay/zzn;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzafp;->zzhL()Ljava/util/concurrent/Future;

    :cond_5
    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPf:Lcom/google/android/gms/ads/internal/overlay/zzw;

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOX:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPf:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzaB()V

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPm:I

    if-eq p1, v1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPe:Lcom/google/android/gms/internal/zzim;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPe:Lcom/google/android/gms/internal/zzim;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzim;->onAdClicked()V

    :cond_7
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPn:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzvT:Lcom/google/android/gms/internal/zzaje;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzaje;->zzaP:Ljava/lang/String;

    invoke-direct {p1, v3, v4, v5}, Lcom/google/android/gms/ads/internal/overlay/zzq;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOO:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOO:Lcom/google/android/gms/ads/internal/overlay/zzq;

    const/16 v3, 0x3e8

    invoke-virtual {p1, v3}, Lcom/google/android/gms/ads/internal/overlay/zzq;->setId(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPm:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzp;

    goto :goto_2

    :pswitch_0
    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOM:Z

    if-eqz p1, :cond_8

    iput v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOQ:I

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbw()Lcom/google/android/gms/ads/internal/overlay/zza;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPd:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPl:Lcom/google/android/gms/ads/internal/overlay/zzag;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zza;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/ads/internal/overlay/zzag;)Z

    move-result p1

    if-nez p1, :cond_9

    iput v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOQ:I

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_9
    return-void

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzs(Z)V

    return-void

    :pswitch_2
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzr;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPg:Lcom/google/android/gms/internal/zzaka;

    invoke-direct {p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzr;-><init>(Lcom/google/android/gms/internal/zzaka;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOH:Lcom/google/android/gms/ads/internal/overlay/zzr;

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzs(Z)V

    return-void

    :pswitch_3
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzs(Z)V

    return-void

    :goto_2
    const-string v0, "Could not determine ad overlay type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzp;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/ads/internal/overlay/zzp; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzp;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    iput v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOQ:I

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOO:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzaka;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzq;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzfM()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzfI()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPf:Lcom/google/android/gms/ads/internal/overlay/zzw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPf:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzw;->onPause()V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzGA:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOH:Lcom/google/android/gms/ads/internal/overlay/zzr;

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahe;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzahe;->zzk(Lcom/google/android/gms/internal/zzaka;)Z

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzfM()V

    return-void
.end method

.method public final onRestart()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPm:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOM:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOQ:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOM:Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPf:Lcom/google/android/gms/ads/internal/overlay/zzw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPf:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzw;->onResume()V

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzGA:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahe;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzahe;->zzl(Lcom/google/android/gms/internal/zzaka;)Z

    return-void

    :cond_3
    const-string v0, "The webview does not exist. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "com.google.android.gms.ads.internal.overlay.hasResumed"

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOM:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onStart()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzGA:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahe;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzahe;->zzl(Lcom/google/android/gms/internal/zzaka;)Z

    return-void

    :cond_0
    const-string v0, "The webview does not exist. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onStop()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzGA:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOH:Lcom/google/android/gms/ads/internal/overlay/zzr;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahe;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzahe;->zzk(Lcom/google/android/gms/internal/zzaka;)Z

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzfM()V

    return-void
.end method

.method public final setRequestedOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public final zza(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOK:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOK:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOK:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOK:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOU:Z

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOL:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOJ:Z

    return-void
.end method

.method public final zza(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOI:Lcom/google/android/gms/ads/internal/overlay/zzae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOI:Lcom/google/android/gms/ads/internal/overlay/zzae;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/overlay/zzae;->zza(ZZ)V

    :cond_0
    return-void
.end method

.method public final zzaa()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOU:Z

    return-void
.end method

.method public final zzfI()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOJ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->setRequestedOrientation(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOK:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOO:Lcom/google/android/gms/ads/internal/overlay/zzq;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOU:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOK:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOK:Landroid/widget/FrameLayout;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOL:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOL:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOL:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOJ:Z

    return-void
.end method

.method public final zzfJ()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOQ:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final zzfK()Z
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOQ:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziC()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    const-string v2, "onbackblocked"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/zzaka;->zza(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return v0
.end method

.method public final zzfL()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOO:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOI:Lcom/google/android/gms/ads/internal/overlay/zzae;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzq;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzr(Z)V

    return-void
.end method

.method final zzfN()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOW:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOW:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOO:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzaka;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzq;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOH:Lcom/google/android/gms/ads/internal/overlay/zzr;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOH:Lcom/google/android/gms/ads/internal/overlay/zzr;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzqD:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzaka;->setContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzaka;->zzA(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOH:Lcom/google/android/gms/ads/internal/overlay/zzr;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzr;->parent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzaka;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOH:Lcom/google/android/gms/ads/internal/overlay/zzr;

    iget v3, v3, Lcom/google/android/gms/ads/internal/overlay/zzr;->index:I

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOH:Lcom/google/android/gms/ads/internal/overlay/zzr;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzPa:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOH:Lcom/google/android/gms/ads/internal/overlay/zzr;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzaka;->setContext(Landroid/content/Context;)V

    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzJH:Lcom/google/android/gms/internal/zzaka;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPf:Lcom/google/android/gms/ads/internal/overlay/zzw;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOG:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPf:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzaA()V

    :cond_4
    return-void
.end method

.method public final zzfO()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOP:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOP:Z

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzfP()V

    :cond_0
    return-void
.end method

.method public final zzfQ()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOO:Lcom/google/android/gms/ads/internal/overlay/zzq;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzq;->zzOZ:Z

    return-void
.end method

.method public final zzfR()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOR:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOT:Z

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOS:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOS:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v1, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzOS:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzo(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzGz:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/common/util/zzq;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Configuration;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzagz;->zza(Landroid/app/Activity;Landroid/content/res/Configuration;)Z

    move-result p1

    const/16 v0, 0x800

    const/16 v1, 0x400

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzm;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    return-void
.end method
