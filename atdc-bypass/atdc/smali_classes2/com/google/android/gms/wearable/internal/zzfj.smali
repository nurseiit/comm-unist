.class final Lcom/google/android/gms/wearable/internal/zzfj;
.super Lcom/google/android/gms/wearable/internal/zzfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzfc<",
        "Lcom/google/android/gms/wearable/Channel$GetOutputStreamResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbTf:Lcom/google/android/gms/wearable/internal/zzbd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbaz;Lcom/google/android/gms/wearable/internal/zzbd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbaz<",
            "Lcom/google/android/gms/wearable/Channel$GetOutputStreamResult;",
            ">;",
            "Lcom/google/android/gms/wearable/internal/zzbd;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/internal/zzfc;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzbd;

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzfj;->zzbTf:Lcom/google/android/gms/wearable/internal/zzbd;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/wearable/internal/zzcm;)V
    .locals 3

    iget-object v0, p1, Lcom/google/android/gms/wearable/internal/zzcm;->zzbSI:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzax;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v2, p1, Lcom/google/android/gms/wearable/internal/zzcm;->zzbSI:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/wearable/internal/zzax;-><init>(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzfj;->zzbTf:Lcom/google/android/gms/wearable/internal/zzbd;

    new-instance v2, Lcom/google/android/gms/wearable/internal/zzay;

    invoke-direct {v2, v0}, Lcom/google/android/gms/wearable/internal/zzay;-><init>(Lcom/google/android/gms/wearable/internal/zzax;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wearable/internal/zzbd;->zza(Lcom/google/android/gms/wearable/internal/zzbe;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/google/android/gms/wearable/internal/zzat;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    iget p1, p1, Lcom/google/android/gms/wearable/internal/zzcm;->statusCode:I

    invoke-direct {v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/wearable/internal/zzat;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/wearable/internal/zzfj;->zzR(Ljava/lang/Object;)V

    return-void
.end method
