.class final Lcom/google/android/gms/ads/internal/zzm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzte:Lcom/google/android/gms/ads/internal/zzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzm;->zzte:Lcom/google/android/gms/ads/internal/zzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzm;->zzte:Lcom/google/android/gms/ads/internal/zzl;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzl;->zztb:Lcom/google/android/gms/ads/internal/zzi;

    new-instance v10, Lcom/google/android/gms/internal/zzaff;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzm;->zzte:Lcom/google/android/gms/ads/internal/zzl;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzl;->zzsW:Lcom/google/android/gms/internal/zzafg;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzaff;-><init>(Lcom/google/android/gms/internal/zzafg;Lcom/google/android/gms/internal/zzaka;Lcom/google/android/gms/internal/zzua;Lcom/google/android/gms/internal/zzut;Ljava/lang/String;Lcom/google/android/gms/internal/zzud;Lcom/google/android/gms/internal/zzoa;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/google/android/gms/ads/internal/zzi;->zzb(Lcom/google/android/gms/internal/zzaff;)V

    return-void
.end method
