.class final Lcom/google/android/gms/internal/zzbmt;
.super Lcom/google/android/gms/internal/zzblx;


# instance fields
.field private synthetic zzaNL:I

.field private synthetic zzaOm:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

.field private synthetic zzaOn:Lcom/google/android/gms/internal/zzbms;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbms;Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbmt;->zzaOn:Lcom/google/android/gms/internal/zzbms;

    iput p3, p0, Lcom/google/android/gms/internal/zzbmt;->zzaNL:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbmt;->zzaOm:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzblx;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbmh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmh;->zzrf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbom;

    new-instance v0, Lcom/google/android/gms/internal/zzbqb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbmt;->zzaOn:Lcom/google/android/gms/internal/zzbms;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbms;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/zzbmt;->zzaNL:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzbqb;-><init>(Lcom/google/android/gms/drive/DriveId;II)V

    new-instance v1, Lcom/google/android/gms/internal/zzbqd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbmt;->zzaOm:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/zzbqd;-><init>(Lcom/google/android/gms/internal/zzbaz;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbom;->zza(Lcom/google/android/gms/internal/zzbqb;Lcom/google/android/gms/internal/zzboo;)Lcom/google/android/gms/internal/zzboa;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzboa;->zzaOG:Landroid/os/IBinder;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzap;->zzH(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzao;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbmt;->zza(Lcom/google/android/gms/common/internal/zzao;)V

    return-void
.end method
