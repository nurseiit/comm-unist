.class final Lcom/google/android/gms/internal/zzcsa$zzh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/safetynet/SafetyNetApi$RecaptchaTokenResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzcsa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzh"
.end annotation


# instance fields
.field private final mStatus:Lcom/google/android/gms/common/api/Status;

.field private final zzbCd:Lcom/google/android/gms/safetynet/zzf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zzf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcsa$zzh;->mStatus:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcsa$zzh;->zzbCd:Lcom/google/android/gms/safetynet/zzf;

    return-void
.end method


# virtual methods
.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcsa$zzh;->mStatus:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final getTokenResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcsa$zzh;->zzbCd:Lcom/google/android/gms/safetynet/zzf;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcsa$zzh;->zzbCd:Lcom/google/android/gms/safetynet/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/safetynet/zzf;->getTokenResult()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
