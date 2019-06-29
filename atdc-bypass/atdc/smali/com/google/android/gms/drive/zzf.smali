.class final Lcom/google/android/gms/drive/zzf;
.super Lcom/google/android/gms/drive/Drive$zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/Drive$zza<",
        "Lcom/google/android/gms/drive/Drive$zzb;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/drive/Drive$zza;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$ApiOptions;)Landroid/os/Bundle;
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/Drive$zzb;

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/drive/Drive$zzb;->zzsL()Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
