.class public final Lcom/google/android/gms/internal/zzcwn;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzcwn$zza;,
        Lcom/google/android/gms/internal/zzcwn$zzb;,
        Lcom/google/android/gms/internal/zzcwn$zzc;
    }
.end annotation


# static fields
.field private static final zzbJe:Ljava/util/regex/Pattern;

.field private static volatile zzbJf:Lcom/google/android/gms/internal/zzcwn;

.field private static zzbJo:Lcom/google/android/gms/internal/zzcwn$zzc;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzbDw:Ljava/lang/String;

.field private final zzbHL:Ljava/util/concurrent/ExecutorService;

.field private final zzbHM:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzbHN:Lcom/google/android/gms/tagmanager/zzcn;

.field private final zzbHW:Lcom/google/android/gms/tagmanager/zzce;

.field private final zzbJg:Lcom/google/android/gms/internal/zzcxi;

.field private final zzbJh:Lcom/google/android/gms/internal/zzcvs;

.field private final zzbJi:Lcom/google/android/gms/internal/zzcwn$zza;

.field private final zzbJj:Ljava/lang/Object;

.field private zzbJk:Ljava/lang/String;

.field private zzbJl:I

.field private final zzbJm:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzbJn:Z

.field private volatile zzuH:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "(gtm-[a-z0-9]{1,10})\\.json"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzcwn;->zzbJe:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/google/android/gms/internal/zzcwo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcwo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcwn;->zzbJo:Lcom/google/android/gms/internal/zzcwn$zzc;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;Lcom/google/android/gms/internal/zzcxi;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzcvs;Lcom/google/android/gms/internal/zzcwn$zza;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcwn;->zzbJj:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcwn;->zzbJl:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcwn;->zzbJm:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcwn;->zzuH:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcwn;->zzbJn:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcwn;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcwn;->zzbHN:Lcom/google/android/gms/tagmanager/zzcn;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcwn;->zzbHW:Lcom/google/android/gms/tagmanager/zzce;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcwn;->zzbJg:Lcom/google/android/gms/internal/zzcxi;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcwn;->zzbHL:Ljava/util/concurrent/ExecutorService;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcwn;->zzbHM:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzcwn;->zzbJh:Lcom/google/android/gms/internal/zzcvs;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzcwn;->zzbJi:Lcom/google/android/gms/internal/zzcwn$zza;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcwn;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzcwn;->zzbJl:I

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcwn;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzcwn;->zzbJl:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcwn;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcwn;->zzf([Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;)Lcom/google/android/gms/internal/zzcwn;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcwn;->zzbJf:Lcom/google/android/gms/internal/zzcwn;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/zzcwn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzcwn;->zzbJf:Lcom/google/android/gms/internal/zzcwn;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzcwn;->zzbJo:Lcom/google/android/gms/internal/zzcwn$zzc;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzcwn$zzc;->zzb(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;)Lcom/google/android/gms/internal/zzcwn;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/zzcwn;->zzbJf:Lcom/google/android/gms/internal/zzcwn;

    move-object v0, p0

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object v0
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p0, 0x4

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcwn;Z)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcwn;->zzuH:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzcwn;)Lcom/google/android/gms/internal/zzcxi;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcwn;->zzbJg:Lcom/google/android/gms/internal/zzcxi;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzcwn;)Lcom/google/android/gms/tagmanager/zzcn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcwn;->zzbHN:Lcom/google/android/gms/tagmanager/zzcn;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzcwn;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcwn;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzcwn;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcwn;->zzbJm:Ljava/util/Queue;

    return-object p0
.end method

.method private final zzf([Ljava/lang/String;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p1, "Looking up container asset."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcvk;->v(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcwn;->zzbDw:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcwn;->zzbJk:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcwn;->zzbDw:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwn;->zzbJk:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcwn;->zzbJi:Lcom/google/android/gms/internal/zzcwn$zza;

    const-string v3, "containers"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcwn$zza;->zzfL(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_5

    sget-object v5, Lcom/google/android/gms/internal/zzcwn;->zzbJe:Ljava/util/regex/Pattern;

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v4, :cond_2

    invoke-virtual {v5, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/zzcwn;->zzbDw:Ljava/lang/String;

    const-string v4, "containers"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aget-object v6, v2, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/zzcwn;->zzbJk:Ljava/lang/String;

    const-string v4, "Asset found for container "

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcwn;->zzbDw:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_1
    invoke-static {v4}, Lcom/google/android/gms/internal/zzcvk;->v(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const-string v5, "Extra container asset found, will not be loaded: "

    aget-object v6, v2, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    goto :goto_2

    :cond_4
    const-string v5, "Ignoring container asset %s (does not match %s)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aget-object v7, v2, v3

    aput-object v7, v6, v0

    sget-object v7, Lcom/google/android/gms/internal/zzcwn;->zzbJe:Ljava/util/regex/Pattern;

    invoke-virtual {v7}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-static {v5}, Lcom/google/android/gms/internal/zzcvk;->zzaT(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    if-nez v4, :cond_a

    const-string v2, "No container asset found in /assets/containers. Checking top level /assets directory for container assets."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcvk;->zzaT(Ljava/lang/String;)V

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcwn;->zzbJi:Lcom/google/android/gms/internal/zzcwn$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcwn$zza;->zzCC()[Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    array-length p1, v2

    if-ge v0, p1, :cond_a

    sget-object p1, Lcom/google/android/gms/internal/zzcwn;->zzbJe:Ljava/util/regex/Pattern;

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_9

    if-nez v4, :cond_7

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcwn;->zzbDw:Ljava/lang/String;

    aget-object p1, v2, v0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcwn;->zzbJk:Ljava/lang/String;

    const-string p1, "Asset found for container "

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcwn;->zzbDw:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_6
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v3

    :goto_5
    invoke-static {p1}, Lcom/google/android/gms/internal/zzcvk;->v(Ljava/lang/String;)V

    const-string p1, "Loading container assets from top level /assets directory. Please move the container asset to /assets/containers"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcvk;->zzaT(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_7

    :cond_7
    const-string p1, "Extra container asset found, will not be loaded: "

    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_8
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v3

    :goto_6
    invoke-static {p1}, Lcom/google/android/gms/internal/zzcvk;->zzaT(Ljava/lang/String;)V

    :cond_9
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v1, "Failed to enumerate assets."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzcvk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcwn;->zzbDw:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwn;->zzbJk:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception v2

    const-string v3, "Failed to enumerate assets in folder %s"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "containers"

    aput-object v4, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzcvk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzcwn;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcwn;->zzbHL:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzcwn;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcwn;->zzbJj:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzcwn;)Lcom/google/android/gms/internal/zzcvs;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcwn;->zzbJh:Lcom/google/android/gms/internal/zzcvs;

    return-object p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzcwn;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzcwn;->zzuH:Z

    return p0
.end method


# virtual methods
.method public final initialize()V
    .locals 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-string v0, "Initializing Tag Manager."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvk;->v(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcwn;->zzbJj:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzcwn;->zzuH:Z

    if-eqz v3, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_0
    const/4 v3, 0x1

    :try_start_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzcwn;->mContext:Landroid/content/Context;

    const-class v5, Lcom/google/android/gms/tagmanager/TagManagerService;

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzcwn;->zza(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v0, "Tag Manager fails to initialize (TagManagerService not enabled in the manifest)"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvk;->zzaT(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzcwn;->zzuH:Z

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_1
    const/4 v4, 0x0

    :try_start_3
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/zzcwn;->zzf([Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    const-string v7, "Loading container "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    :goto_0
    invoke-static {v7}, Lcom/google/android/gms/internal/zzcvk;->zzaS(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/google/android/gms/internal/zzcwn;->zzbHL:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/google/android/gms/internal/zzcwt;

    invoke-direct {v8, p0, v6, v5, v4}, Lcom/google/android/gms/internal/zzcwt;-><init>(Lcom/google/android/gms/internal/zzcwn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcwn;->zzbHM:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lcom/google/android/gms/internal/zzcwu;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/zzcwu;-><init>(Lcom/google/android/gms/internal/zzcwn;)V

    const-wide/16 v6, 0x1388

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v5, v6, v7, v8}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzcwn;->zzbJn:Z

    if-nez v4, :cond_4

    const-string v4, "Installing Tag Manager event handler."

    invoke-static {v4}, Lcom/google/android/gms/internal/zzcvk;->zzaS(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzcwn;->zzbJn:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v4, p0, Lcom/google/android/gms/internal/zzcwn;->zzbHN:Lcom/google/android/gms/tagmanager/zzcn;

    new-instance v5, Lcom/google/android/gms/internal/zzcwp;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/zzcwp;-><init>(Lcom/google/android/gms/internal/zzcwn;)V

    invoke-interface {v4, v5}, Lcom/google/android/gms/tagmanager/zzcn;->zza(Lcom/google/android/gms/tagmanager/zzck;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_5
    const-string v5, "Error communicating with measurement proxy: "

    iget-object v6, p0, Lcom/google/android/gms/internal/zzcwn;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v6}, Lcom/google/android/gms/internal/zzcup;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    :try_start_6
    iget-object v4, p0, Lcom/google/android/gms/internal/zzcwn;->zzbHN:Lcom/google/android/gms/tagmanager/zzcn;

    new-instance v5, Lcom/google/android/gms/internal/zzcwr;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/zzcwr;-><init>(Lcom/google/android/gms/internal/zzcwn;)V

    invoke-interface {v4, v5}, Lcom/google/android/gms/tagmanager/zzcn;->zza(Lcom/google/android/gms/tagmanager/zzch;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_7
    const-string v5, "Error communicating with measurement proxy: "

    iget-object v6, p0, Lcom/google/android/gms/internal/zzcwn;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v6}, Lcom/google/android/gms/internal/zzcup;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/zzcwn;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/google/android/gms/internal/zzcww;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/zzcww;-><init>(Lcom/google/android/gms/internal/zzcwn;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    const-string v4, "Tag Manager event handler installed."

    invoke-static {v4}, Lcom/google/android/gms/internal/zzcvk;->zzaS(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v4, "Tag Manager\'s event handler WILL NOT be installed (no container loaded)"

    invoke-static {v4}, Lcom/google/android/gms/internal/zzcvk;->zzaT(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_4
    :goto_3
    :try_start_8
    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzcwn;->zzuH:Z

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    const/16 v0, 0x35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Tag Manager initilization took "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvk;->zzaS(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_9
    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzcwn;->zzuH:Z

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v0
.end method

.method public final zze([Ljava/lang/String;)V
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-string p1, "Initializing Tag Manager."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcvk;->v(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcwn;->zzbJj:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcwn;->zzuH:Z

    if-eqz v2, :cond_0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzcwn;->mContext:Landroid/content/Context;

    const-class v4, Lcom/google/android/gms/tagmanager/TagManagerService;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzcwn;->zza(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v0, "Tag Manager fails to initialize (TagManagerService not enabled in the manifest)"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvk;->zzaT(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcwn;->zzuH:Z

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_1
    const/4 v3, 0x0

    :try_start_3
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzcwn;->zzf([Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    const-string v6, "Loading container "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    :goto_0
    invoke-static {v6}, Lcom/google/android/gms/internal/zzcvk;->zzaS(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/android/gms/internal/zzcwn;->zzbHL:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/google/android/gms/internal/zzcwt;

    invoke-direct {v7, p0, v5, v4, v3}, Lcom/google/android/gms/internal/zzcwt;-><init>(Lcom/google/android/gms/internal/zzcwn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcwn;->zzbHM:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/google/android/gms/internal/zzcwu;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzcwu;-><init>(Lcom/google/android/gms/internal/zzcwn;)V

    const-wide/16 v5, 0x1388

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6, v7}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzcwn;->zzbJn:Z

    if-nez v3, :cond_4

    const-string v3, "Installing Tag Manager event handler."

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcvk;->zzaS(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcwn;->zzbJn:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v3, p0, Lcom/google/android/gms/internal/zzcwn;->zzbHN:Lcom/google/android/gms/tagmanager/zzcn;

    new-instance v4, Lcom/google/android/gms/internal/zzcwp;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzcwp;-><init>(Lcom/google/android/gms/internal/zzcwn;)V

    invoke-interface {v3, v4}, Lcom/google/android/gms/tagmanager/zzcn;->zza(Lcom/google/android/gms/tagmanager/zzck;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_5
    const-string v4, "Error communicating with measurement proxy: "

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcwn;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v5}, Lcom/google/android/gms/internal/zzcup;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    :try_start_6
    iget-object v3, p0, Lcom/google/android/gms/internal/zzcwn;->zzbHN:Lcom/google/android/gms/tagmanager/zzcn;

    new-instance v4, Lcom/google/android/gms/internal/zzcwr;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzcwr;-><init>(Lcom/google/android/gms/internal/zzcwn;)V

    invoke-interface {v3, v4}, Lcom/google/android/gms/tagmanager/zzcn;->zza(Lcom/google/android/gms/tagmanager/zzch;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_7
    const-string v4, "Error communicating with measurement proxy: "

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcwn;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v5}, Lcom/google/android/gms/internal/zzcup;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    :goto_2
    iget-object v3, p0, Lcom/google/android/gms/internal/zzcwn;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/google/android/gms/internal/zzcww;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzcww;-><init>(Lcom/google/android/gms/internal/zzcwn;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    const-string v3, "Tag Manager event handler installed."

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcvk;->zzaS(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v3, "Tag Manager\'s event handler WILL NOT be installed (no container loaded)"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcvk;->zzaT(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_4
    :goto_3
    :try_start_8
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcwn;->zzuH:Z

    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    const/16 p1, 0x35

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Tag Manager initilization took "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcvk;->zzaS(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_9
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcwn;->zzuH:Z

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v0
.end method

.method final zzs(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwn;->zzbHL:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzcwy;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcwy;-><init>(Lcom/google/android/gms/internal/zzcwn;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
