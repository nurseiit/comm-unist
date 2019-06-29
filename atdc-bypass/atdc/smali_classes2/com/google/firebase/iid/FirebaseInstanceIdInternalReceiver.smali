.class public final Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;
.super Landroid/support/v4/content/WakefulBroadcastReceiver;


# static fields
.field private static zzbfB:Z = false

.field private static zzckA:Lcom/google/firebase/iid/zzh;

.field private static zzckz:Lcom/google/firebase/iid/zzh;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/content/WakefulBroadcastReceiver;-><init>()V

    return-void
.end method

.method static declared-synchronized zzH(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzh;
    .locals 2

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;

    monitor-enter v0

    :try_start_0
    const-string v1, "com.google.firebase.MESSAGING_EVENT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;->zzckA:Lcom/google/firebase/iid/zzh;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/firebase/iid/zzh;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/iid/zzh;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;->zzckA:Lcom/google/firebase/iid/zzh;

    :cond_0
    sget-object p0, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;->zzckA:Lcom/google/firebase/iid/zzh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_1
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;->zzckz:Lcom/google/firebase/iid/zzh;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/firebase/iid/zzh;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/iid/zzh;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;->zzckz:Lcom/google/firebase/iid/zzh;

    :cond_2
    sget-object p0, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;->zzckz:Lcom/google/firebase/iid/zzh;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static zzbH(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/google/android/gms/common/util/zzq;->isAtLeastO()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x19

    if-le p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "wrapped_intent"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, Landroid/content/Intent;

    if-nez v1, :cond_1

    const-string p1, "FirebaseInstanceId"

    const-string p2, "Missing or invalid wrapped intent"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    check-cast v0, Landroid/content/Intent;

    invoke-static {p1}, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;->zzbH(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;->zzH(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzh;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/iid/zzh;->zza(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/google/firebase/iid/zzq;->zzJX()Lcom/google/firebase/iid/zzq;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/firebase/iid/zzq;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)I

    return-void
.end method
