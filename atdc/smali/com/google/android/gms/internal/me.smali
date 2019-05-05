.class public final Lcom/google/android/gms/internal/me;
.super Lcom/google/android/gms/internal/mb;


# instance fields
.field private final zzbYi:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/crash/FirebaseCrash$zza;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/crash/FirebaseCrash$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mb;-><init>(Landroid/content/Context;Lcom/google/firebase/crash/FirebaseCrash$zza;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/me;->zzbYi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final getErrorMessage()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "Failed to log message"

    return-object v0
.end method

.method public final bridge synthetic run()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/mb;->run()V

    return-void
.end method

.method protected final zzd(Lcom/google/android/gms/internal/mj;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/mj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/me;->zzbYi:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/mj;->log(Ljava/lang/String;)V

    return-void
.end method
