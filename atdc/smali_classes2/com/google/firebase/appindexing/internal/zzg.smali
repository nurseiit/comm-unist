.class final Lcom/google/firebase/appindexing/internal/zzg;
.super Lcom/google/firebase/appindexing/internal/zzk;


# instance fields
.field private synthetic zzbVL:[Lcom/google/firebase/appindexing/internal/Thing;


# direct methods
.method constructor <init>(Lcom/google/firebase/appindexing/internal/zzf;[Lcom/google/firebase/appindexing/internal/Thing;)V
    .locals 0

    iput-object p2, p0, Lcom/google/firebase/appindexing/internal/zzg;->zzbVL:[Lcom/google/firebase/appindexing/internal/Thing;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/firebase/appindexing/internal/zzk;-><init>(Lcom/google/firebase/appindexing/internal/zzg;)V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/firebase/appindexing/internal/zzu;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/appindexing/internal/zzg;->zzEC()Lcom/google/android/gms/internal/zzbdn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/appindexing/internal/zzg;->zzbVL:[Lcom/google/firebase/appindexing/internal/Thing;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/appindexing/internal/zzu;->zza(Lcom/google/android/gms/internal/zzbdn;[Lcom/google/firebase/appindexing/internal/Thing;)V

    return-void
.end method
