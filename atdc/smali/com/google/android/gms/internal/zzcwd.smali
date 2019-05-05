.class final Lcom/google/android/gms/internal/zzcwd;
.super Lcom/google/android/gms/internal/zzcwc;


# static fields
.field private static final zzbGC:Ljava/lang/Object;

.field private static zzbIZ:Lcom/google/android/gms/internal/zzcwd;


# instance fields
.field private connected:Z

.field private zzbGD:Landroid/content/Context;

.field private zzbGG:I

.field private zzbGH:Z

.field private zzbGI:Z

.field private zzbGJ:Z

.field private zzbGN:Z

.field private zzbIT:Lcom/google/android/gms/internal/zzcvb;

.field private volatile zzbIU:Lcom/google/android/gms/internal/zzcuy;

.field private zzbIV:Z

.field private zzbIW:Lcom/google/android/gms/internal/zzcvc;

.field private zzbIX:Lcom/google/android/gms/internal/zzcwg;

.field private zzbIY:Lcom/google/android/gms/internal/zzcvm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcwd;->zzbGC:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcwc;-><init>()V

    const v0, 0x1b7740

    iput v0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbGG:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbGH:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcwd;->zzbGI:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcwd;->zzbIV:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcwd;->connected:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbGJ:Z

    new-instance v0, Lcom/google/android/gms/internal/zzcwe;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcwe;-><init>(Lcom/google/android/gms/internal/zzcwd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbIW:Lcom/google/android/gms/internal/zzcvc;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcwd;->zzbGN:Z

    return-void
.end method

.method private final isPowerSaveMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbGN:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcwd;->connected:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbGG:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic zzBX()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzcwd;->zzbGC:Ljava/lang/Object;

    return-object v0
.end method

.method public static zzCA()Lcom/google/android/gms/internal/zzcwd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzcwd;->zzbIZ:Lcom/google/android/gms/internal/zzcwd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzcwd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcwd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcwd;->zzbIZ:Lcom/google/android/gms/internal/zzcwd;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzcwd;->zzbIZ:Lcom/google/android/gms/internal/zzcwd;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcwd;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbGD:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcwd;Z)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcwd;->zzbIV:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzcwd;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcwd;->isPowerSaveMode()Z

    move-result p0

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzcwd;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbGG:I

    return p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzcwd;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzcwd;->connected:Z

    return p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzcwd;)Lcom/google/android/gms/internal/zzcvb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbIT:Lcom/google/android/gms/internal/zzcvb;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized dispatch()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbGI:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvk;->v(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcwd;->zzbGH:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbIV:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcwd;->zzbIV:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbIU:Lcom/google/android/gms/internal/zzcuy;

    new-instance v1, Lcom/google/android/gms/internal/zzcwf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcwf;-><init>(Lcom/google/android/gms/internal/zzcwd;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcuy;->zzn(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzBU()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcwd;->isPowerSaveMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbIX:Lcom/google/android/gms/internal/zzcwg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcwg;->zzBY()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized zzCB()Lcom/google/android/gms/internal/zzcvb;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbIT:Lcom/google/android/gms/internal/zzcvb;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbGD:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzcvn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcwd;->zzbIW:Lcom/google/android/gms/internal/zzcvc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcwd;->zzbGD:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzcvn;-><init>(Lcom/google/android/gms/internal/zzcvc;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbIT:Lcom/google/android/gms/internal/zzcvb;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbIX:Lcom/google/android/gms/internal/zzcwg;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzcwh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzcwh;-><init>(Lcom/google/android/gms/internal/zzcwd;Lcom/google/android/gms/internal/zzcwe;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbIX:Lcom/google/android/gms/internal/zzcwg;

    iget v0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbGG:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbIX:Lcom/google/android/gms/internal/zzcwg;

    iget v1, p0, Lcom/google/android/gms/internal/zzcwd;->zzbGG:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzcwg;->zzs(J)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbGI:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbGH:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcwd;->dispatch()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbGH:Z

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbIY:Lcom/google/android/gms/internal/zzcvm;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbGJ:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzcvm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcvm;-><init>(Lcom/google/android/gms/internal/zzcwc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbIY:Lcom/google/android/gms/internal/zzcvm;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbIY:Lcom/google/android/gms/internal/zzcvm;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcwd;->zzbGD:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.google.analytics.RADIO_POWERED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbIT:Lcom/google/android/gms/internal/zzcvb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzcuy;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbGD:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcwd;->zzbGD:Landroid/content/Context;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcwd;->zzbIU:Lcom/google/android/gms/internal/zzcuy;

    if-nez p1, :cond_1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcwd;->zzbIU:Lcom/google/android/gms/internal/zzcuy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzas(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcwd;->zzbGN:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzcwd;->zzd(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized zzd(ZZ)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcwd;->isPowerSaveMode()Z

    move-result v0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcwd;->zzbGN:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzcwd;->connected:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcwd;->isPowerSaveMode()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcwd;->isPowerSaveMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcwd;->zzbIX:Lcom/google/android/gms/internal/zzcwg;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzcwg;->cancel()V

    const-string p1, "PowerSaveMode initiated."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcvk;->v(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcwd;->zzbIX:Lcom/google/android/gms/internal/zzcwg;

    iget p2, p0, Lcom/google/android/gms/internal/zzcwd;->zzbGG:I

    int-to-long v0, p2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzcwg;->zzs(J)V

    const-string p1, "PowerSaveMode terminated."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcvk;->v(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
