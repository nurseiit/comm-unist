.class final Lcom/google/android/gms/internal/zzaem;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field private synthetic zzXk:Lcom/google/android/gms/internal/zzajg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzael;Lcom/google/android/gms/internal/zzajg;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaem;->zzXk:Lcom/google/android/gms/internal/zzajg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "Failed to connect to SafetyNet API"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaes;->zzaC(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaem;->zzXk:Lcom/google/android/gms/internal/zzajg;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzajg;->zzg(Ljava/lang/Object;)V

    return-void
.end method
