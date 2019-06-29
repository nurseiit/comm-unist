.class public final Lcom/google/android/gms/internal/zzacd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private zzWe:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzacf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzacd;->zzWe:Ljava/util/WeakHashMap;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzacd;)Ljava/util/WeakHashMap;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzacd;->zzWe:Ljava/util/WeakHashMap;

    return-object p0
.end method


# virtual methods
.method public final zzn(Landroid/content/Context;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/android/gms/internal/zzacb;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzace;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzace;-><init>(Lcom/google/android/gms/internal/zzacd;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagt;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zzajm;

    move-result-object p1

    return-object p1
.end method
