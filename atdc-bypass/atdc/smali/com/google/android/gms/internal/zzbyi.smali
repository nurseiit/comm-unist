.class final Lcom/google/android/gms/internal/zzbyi;
.super Lcom/google/android/gms/internal/zzbvt;


# instance fields
.field private synthetic zzaVP:Lcom/google/android/gms/internal/zzbyh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbyh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbyi;->zzaVP:Lcom/google/android/gms/internal/zzbyh;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbvt;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/fitness/result/DailyTotalResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyi;->zzaVP:Lcom/google/android/gms/internal/zzbyh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbyh;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
