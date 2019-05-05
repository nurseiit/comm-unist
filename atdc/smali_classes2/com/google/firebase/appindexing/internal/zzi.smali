.class final Lcom/google/firebase/appindexing/internal/zzi;
.super Lcom/google/firebase/appindexing/internal/zzk;


# direct methods
.method constructor <init>(Lcom/google/firebase/appindexing/internal/zzf;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/firebase/appindexing/internal/zzk;-><init>(Lcom/google/firebase/appindexing/internal/zzg;)V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/firebase/appindexing/internal/zzu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/appindexing/internal/zzi;->zzEC()Lcom/google/android/gms/internal/zzbdn;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/firebase/appindexing/internal/zzu;->zza(Lcom/google/android/gms/internal/zzbdn;)V

    return-void
.end method
