.class final Lcom/google/android/gms/plus/internal/zzj;
.super Lcom/google/android/gms/plus/internal/zza;


# instance fields
.field private final zzbiT:Lcom/google/android/gms/internal/zzbaz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbaz<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbaz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbaz<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/plus/internal/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/internal/zzj;->zzbiT:Lcom/google/android/gms/internal/zzbaz;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->zzqN()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->zzqN()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "pendingIntent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v3

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_1
    move-object p1, v1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zzj;->zzbiT:Lcom/google/android/gms/internal/zzbaz;

    new-instance v1, Lcom/google/android/gms/plus/internal/zzi;

    invoke-direct {v1, v2, p1, p2}, Lcom/google/android/gms/plus/internal/zzi;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbaz;->setResult(Ljava/lang/Object;)V

    return-void
.end method
