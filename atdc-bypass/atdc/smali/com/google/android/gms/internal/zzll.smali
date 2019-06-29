.class final Lcom/google/android/gms/internal/zzll;
.super Lcom/google/android/gms/internal/zzjs;


# instance fields
.field final synthetic zzBr:Lcom/google/android/gms/internal/zzlj;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzlj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzll;->zzBr:Lcom/google/android/gms/internal/zzlj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjs;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzlj;Lcom/google/android/gms/internal/zzlk;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzll;-><init>(Lcom/google/android/gms/internal/zzlj;)V

    return-void
.end method


# virtual methods
.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isLoading()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final zzaI()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzir;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzajc;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/zzaiy;->zzaaH:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzlm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzlm;-><init>(Lcom/google/android/gms/internal/zzll;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
