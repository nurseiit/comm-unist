.class final Lcom/google/android/gms/internal/zzrz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzJN:Lcom/google/android/gms/internal/zzry;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzry;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrz;->zzJN:Lcom/google/android/gms/internal/zzry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbW()Lcom/google/android/gms/internal/zzsa;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrz;->zzJN:Lcom/google/android/gms/internal/zzry;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsa;->zzb(Lcom/google/android/gms/internal/zzry;)V

    return-void
.end method
