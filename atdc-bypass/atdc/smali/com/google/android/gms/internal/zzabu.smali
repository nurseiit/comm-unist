.class public final Lcom/google/android/gms/internal/zzabu;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private zzQx:Ljava/lang/String;

.field private zzUL:Ljava/lang/String;

.field private zzUM:Lcom/google/android/gms/internal/zzajg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzajg<",
            "Lcom/google/android/gms/internal/zzaca;",
            ">;"
        }
    .end annotation
.end field

.field zzUN:Lcom/google/android/gms/ads/internal/js/zzy;

.field public final zzUO:Lcom/google/android/gms/internal/zzrd;

.field public final zzUP:Lcom/google/android/gms/internal/zzrd;

.field public final zzUQ:Lcom/google/android/gms/internal/zzrd;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabu;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzajg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzajg;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabu;->zzUM:Lcom/google/android/gms/internal/zzajg;

    new-instance v0, Lcom/google/android/gms/internal/zzabv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzabv;-><init>(Lcom/google/android/gms/internal/zzabu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabu;->zzUO:Lcom/google/android/gms/internal/zzrd;

    new-instance v0, Lcom/google/android/gms/internal/zzabw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzabw;-><init>(Lcom/google/android/gms/internal/zzabu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabu;->zzUP:Lcom/google/android/gms/internal/zzrd;

    new-instance v0, Lcom/google/android/gms/internal/zzabx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzabx;-><init>(Lcom/google/android/gms/internal/zzabu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabu;->zzUQ:Lcom/google/android/gms/internal/zzrd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzabu;->zzUL:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabu;->zzQx:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzabu;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzabu;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzabu;)Lcom/google/android/gms/internal/zzajg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzabu;->zzUM:Lcom/google/android/gms/internal/zzajg;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzabu;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzabu;->zzQx:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzabu;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzabu;->zzUL:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final fail()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzaca;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/zzaca;-><init>(ILjava/util/Map;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabu;->zzUM:Lcom/google/android/gms/internal/zzajg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzajg;->zzg(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzgG()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/android/gms/internal/zzaca;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabu;->zzUM:Lcom/google/android/gms/internal/zzajg;

    return-object v0
.end method
