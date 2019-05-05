.class final Lcom/google/android/gms/internal/zzzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzrd;


# instance fields
.field private synthetic zzSb:Lcom/google/android/gms/internal/zzyx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzb;->zzSb:Lcom/google/android/gms/internal/zzyx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzaka;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaka;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzb;->zzSb:Lcom/google/android/gms/internal/zzyx;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzyx;->zza(Lcom/google/android/gms/internal/zzyx;)Lcom/google/android/gms/ads/internal/zzbb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbb;->zzbj()V

    return-void
.end method
