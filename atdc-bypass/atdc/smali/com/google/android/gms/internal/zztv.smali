.class final Lcom/google/android/gms/internal/zztv;
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


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzc(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/ads/internal/js/zza;

    const-string v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/zzqn;->zzJb:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zza;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/result"

    sget-object v1, Lcom/google/android/gms/internal/zzqn;->zzJl:Lcom/google/android/gms/internal/zzrs;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zza;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    return-void
.end method
