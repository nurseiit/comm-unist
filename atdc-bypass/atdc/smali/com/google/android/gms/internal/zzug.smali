.class final Lcom/google/android/gms/internal/zzug;
.super Lcom/google/android/gms/internal/zzva;


# instance fields
.field private synthetic zzME:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzug;->zzME:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzva;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzfo()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzug;->zzME:I

    return v0
.end method
