.class final Lcom/google/android/gms/internal/zzyq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzRF:Lcom/google/android/gms/internal/zzyn;

.field private synthetic zzRH:Lcom/google/android/gms/internal/zzajg;

.field private synthetic zzRI:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyn;Lcom/google/android/gms/internal/zzajg;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyq;->zzRF:Lcom/google/android/gms/internal/zzyn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyq;->zzRH:Lcom/google/android/gms/internal/zzajg;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzyq;->zzRI:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyq;->zzRH:Lcom/google/android/gms/internal/zzajg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyq;->zzRF:Lcom/google/android/gms/internal/zzyn;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzyn;->zzb(Lcom/google/android/gms/internal/zzyn;)Lcom/google/android/gms/ads/internal/zzbb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzbb;->zzbl()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyq;->zzRI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzpw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzajg;->zzg(Ljava/lang/Object;)V

    return-void
.end method
