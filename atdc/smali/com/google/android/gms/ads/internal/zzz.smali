.class final Lcom/google/android/gms/ads/internal/zzz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzakj;


# instance fields
.field private synthetic zztu:Lcom/google/android/gms/internal/zzaff;

.field private synthetic zztv:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzx;Lcom/google/android/gms/internal/zzaff;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzz;->zztu:Lcom/google/android/gms/internal/zzaff;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzz;->zztv:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaS()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzz;->zztu:Lcom/google/android/gms/internal/zzaff;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaff;->zzXM:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzz;->zztv:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagz;->zzb(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
