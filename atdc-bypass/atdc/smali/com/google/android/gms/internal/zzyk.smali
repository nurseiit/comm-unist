.class final Lcom/google/android/gms/internal/zzyk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzahz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzahz<",
        "Lcom/google/android/gms/ads/internal/js/zza;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzRt:Lcom/google/android/gms/internal/zzyh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyk;->zzRt:Lcom/google/android/gms/internal/zzyh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzc(Ljava/lang/Object;)V
    .locals 9

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/ads/internal/js/zza;

    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyk;->zzRt:Lcom/google/android/gms/internal/zzyh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzyh;->zza(Lcom/google/android/gms/internal/zzyh;)Lcom/google/android/gms/ads/internal/zzbb;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/ads/internal/zzbb;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v4

    move-object v2, v4

    move-object v3, v4

    invoke-interface/range {v0 .. v8}, Lcom/google/android/gms/ads/internal/js/zza;->zza(Lcom/google/android/gms/internal/zzim;Lcom/google/android/gms/ads/internal/overlay/zzw;Lcom/google/android/gms/internal/zzqk;Lcom/google/android/gms/ads/internal/overlay/zzag;ZLcom/google/android/gms/internal/zzrm;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzwv;)V

    return-void
.end method
