.class public final Lcom/google/android/gms/internal/mc;
.super Lcom/google/android/gms/internal/mb;


# instance fields
.field private final zzayS:J

.field private final zzbYi:Ljava/lang/String;

.field private final zzbYj:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/crash/FirebaseCrash$zza;Ljava/lang/String;JLandroid/os/Bundle;)V
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
    .param p6    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mb;-><init>(Landroid/content/Context;Lcom/google/firebase/crash/FirebaseCrash$zza;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/mc;->zzbYi:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/mc;->zzayS:J

    iput-object p6, p0, Lcom/google/android/gms/internal/mc;->zzbYj:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected final getErrorMessage()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "Failed to log analytics event"

    return-object v0
.end method

.method public final bridge synthetic run()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/mb;->run()V

    return-void
.end method

.method protected final zzd(Lcom/google/android/gms/internal/mj;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/mj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mc;->zzbYi:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/gms/internal/mc;->zzayS:J

    iget-object v3, p0, Lcom/google/android/gms/internal/mc;->zzbYj:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/mj;->zza(Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method
