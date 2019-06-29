.class public final Lcom/google/android/gms/internal/zzcgc;
.super Ljava/lang/Object;


# instance fields
.field private final zzbrL:Lcom/google/android/gms/internal/zzcge;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzcge;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcgc;->zzbrL:Lcom/google/android/gms/internal/zzcge;

    return-void
.end method

.method public static zzj(Landroid/content/Context;Z)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "com.google.android.gms.measurement.AppMeasurementReceiver"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzcjl;->zza(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcgl;->zzbj(Landroid/content/Context;)Lcom/google/android/gms/internal/zzcgl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgl;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v7

    if-nez p2, :cond_0

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcfl;->zzyz()Lcom/google/android/gms/internal/zzcfn;

    move-result-object p1

    const-string p2, "Receiver called with null intent"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzcem;->zzxE()Z

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v1

    const-string v3, "Local receiver got"

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzciw;->zzk(Landroid/content/Context;Z)Z

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgc;->zzbrL:Lcom/google/android/gms/internal/zzcge;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzcge;->doStartService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string v1, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "referrer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object p1

    const-string p2, "Install referrer extras are null"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcfl;->zzyB()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v1

    const-string v3, "Install referrer extras are"

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "?"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_4
    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgl;->zzwB()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcjl;->zzq(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcfl;->zzyD()Lcom/google/android/gms/internal/zzcfn;

    move-result-object p1

    const-string p2, "No campaign defined in install referrer broadcast"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v0, "referrer_timestamp_seconds"

    const-wide/16 v3, 0x0

    invoke-virtual {p2, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v8, 0x3e8

    mul-long v8, v8, v0

    cmp-long p2, v8, v3

    if-nez p2, :cond_6

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcfl;->zzyz()Lcom/google/android/gms/internal/zzcfn;

    move-result-object p2

    const-string v0, "Install referrer is missing timestamp"

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgl;->zzwE()Lcom/google/android/gms/internal/zzcgg;

    move-result-object p2

    new-instance v10, Lcom/google/android/gms/internal/zzcgd;

    move-object v0, v10

    move-object v1, p0

    move-wide v3, v8

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzcgd;-><init>(Lcom/google/android/gms/internal/zzcgc;Lcom/google/android/gms/internal/zzcgl;JLandroid/os/Bundle;Landroid/content/Context;Lcom/google/android/gms/internal/zzcfl;)V

    invoke-virtual {p2, v10}, Lcom/google/android/gms/internal/zzcgg;->zzj(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method
