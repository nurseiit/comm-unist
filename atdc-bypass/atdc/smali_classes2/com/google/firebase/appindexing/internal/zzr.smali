.class final Lcom/google/firebase/appindexing/internal/zzr;
.super Lcom/google/firebase/appindexing/internal/zzt;


# instance fields
.field private synthetic zzbVW:[Lcom/google/firebase/appindexing/internal/zza;


# direct methods
.method constructor <init>(Lcom/google/firebase/appindexing/internal/zzq;[Lcom/google/firebase/appindexing/internal/zza;)V
    .locals 0

    iput-object p2, p0, Lcom/google/firebase/appindexing/internal/zzr;->zzbVW:[Lcom/google/firebase/appindexing/internal/zza;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/firebase/appindexing/internal/zzt;-><init>(Lcom/google/firebase/appindexing/internal/zzr;)V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/zzapp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzapw$zzd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzapw$zzd;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    iget-object v1, p0, Lcom/google/firebase/appindexing/internal/zzr;->zzbVW:[Lcom/google/firebase/appindexing/internal/zza;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzapp;->zza(Lcom/google/android/gms/internal/zzapr;[Lcom/google/firebase/appindexing/internal/zza;)V

    return-void
.end method
