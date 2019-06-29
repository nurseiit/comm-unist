.class public final Lcom/google/android/gms/internal/zzafc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzafe;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/zzaae;)Lcom/google/android/gms/internal/zzajm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaae;",
            ")",
            "Lcom/google/android/gms/internal/zzajm<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzajh;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaae;->zzSB:Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzajh;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final zzz(Landroid/content/Context;)Lcom/google/android/gms/internal/zzajm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/android/gms/internal/zzajm<",
            "Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzajg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzajg;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzds()Lcom/google/android/gms/internal/zzaiy;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaiy;->zzY(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzafd;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/zzafd;-><init>(Lcom/google/android/gms/internal/zzafc;Landroid/content/Context;Lcom/google/android/gms/internal/zzajg;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagt;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzajm;

    :cond_0
    return-object v0
.end method
