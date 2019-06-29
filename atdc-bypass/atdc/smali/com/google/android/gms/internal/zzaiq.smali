.class public final Lcom/google/android/gms/internal/zzaiq;
.super Lcom/google/android/gms/internal/zzafp;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final zzD:Ljava/lang/String;

.field private final zzaat:Lcom/google/android/gms/internal/zzajd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzagz;->zzs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/google/android/gms/internal/zzaiq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzafp;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzajd;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzajd;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaiq;->zzaat:Lcom/google/android/gms/internal/zzajd;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaiq;->zzD:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onStop()V
    .locals 0

    return-void
.end method

.method public final zzbd()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaiq;->zzaat:Lcom/google/android/gms/internal/zzajd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaiq;->zzD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzajd;->zzaN(Ljava/lang/String;)V

    return-void
.end method
