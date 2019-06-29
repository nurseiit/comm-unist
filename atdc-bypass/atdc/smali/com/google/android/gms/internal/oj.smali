.class public final Lcom/google/android/gms/internal/oj;
.super Ljava/lang/Object;


# instance fields
.field private final zzbZs:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzcaC:Lcom/google/android/gms/internal/oh;

.field private final zzcaD:Lcom/google/android/gms/internal/wm;

.field private final zzcaE:Z

.field private final zzcaF:Ljava/lang/String;

.field private final zzcaG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/wm;Lcom/google/android/gms/internal/oh;Ljava/util/concurrent/ScheduledExecutorService;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/oj;->zzcaD:Lcom/google/android/gms/internal/wm;

    iput-object p2, p0, Lcom/google/android/gms/internal/oj;->zzcaC:Lcom/google/android/gms/internal/oh;

    iput-object p3, p0, Lcom/google/android/gms/internal/oj;->zzbZs:Ljava/util/concurrent/ScheduledExecutorService;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/oj;->zzcaE:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/oj;->zzcaF:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/oj;->zzcaG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzFT()Lcom/google/android/gms/internal/wm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oj;->zzcaD:Lcom/google/android/gms/internal/wm;

    return-object v0
.end method

.method public final zzFU()Lcom/google/android/gms/internal/oh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oj;->zzcaC:Lcom/google/android/gms/internal/oh;

    return-object v0
.end method

.method public final zzFV()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oj;->zzbZs:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public final zzFW()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/oj;->zzcaE:Z

    return v0
.end method

.method public final zzFX()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oj;->zzcaF:Ljava/lang/String;

    return-object v0
.end method

.method public final zzht()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oj;->zzcaG:Ljava/lang/String;

    return-object v0
.end method
