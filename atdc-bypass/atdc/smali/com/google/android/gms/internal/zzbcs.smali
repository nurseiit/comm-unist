.class final Lcom/google/android/gms/internal/zzbcs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field private synthetic zzaDP:Lcom/google/android/gms/internal/zzben;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbcp;Lcom/google/android/gms/internal/zzben;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbcs;->zzaDP:Lcom/google/android/gms/internal/zzben;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbcs;->zzaDP:Lcom/google/android/gms/internal/zzben;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzben;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
