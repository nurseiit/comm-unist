.class final Lcom/google/android/gms/internal/zzfv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzajs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzajs<",
        "Lcom/google/android/gms/ads/internal/js/zzai;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzxw:Lcom/google/android/gms/internal/zzfu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfv;->zzxw:Lcom/google/android/gms/internal/zzfu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzc(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/ads/internal/js/zzai;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfv;->zzxw:Lcom/google/android/gms/internal/zzfu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzfu;->zza(Lcom/google/android/gms/internal/zzfu;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfv;->zzxw:Lcom/google/android/gms/internal/zzfu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfu;->zzb(Lcom/google/android/gms/ads/internal/js/zzai;)V

    return-void
.end method
