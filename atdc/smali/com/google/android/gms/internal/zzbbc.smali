.class final Lcom/google/android/gms/internal/zzbbc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzaBR:Lcom/google/android/gms/internal/zzbbb;

.field final synthetic zzaBS:Lcom/google/android/gms/internal/zzbba;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbba;Lcom/google/android/gms/internal/zzbbb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbc;->zzaBS:Lcom/google/android/gms/internal/zzbba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbbc;->zzaBR:Lcom/google/android/gms/internal/zzbbb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbc;->zzaBS:Lcom/google/android/gms/internal/zzbba;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzbba;->mStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbc;->zzaBR:Lcom/google/android/gms/internal/zzbbb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbbb;->zzpz()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbbc;->zzaBS:Lcom/google/android/gms/internal/zzbba;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzbba;->zzaEG:Lcom/google/android/gms/internal/zzbdt;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbbc;->zzaBS:Lcom/google/android/gms/internal/zzbba;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbba;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbbc;->zzaBR:Lcom/google/android/gms/internal/zzbbb;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbbb;->zzpy()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gms/common/api/GoogleApiActivity;->zza(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzbdt;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbbc;->zzaBS:Lcom/google/android/gms/internal/zzbba;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzbba;->zzaBd:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbbc;->zzaBS:Lcom/google/android/gms/internal/zzbba;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzbba;->zzaBd:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbbc;->zzaBS:Lcom/google/android/gms/internal/zzbba;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbba;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbbc;->zzaBS:Lcom/google/android/gms/internal/zzbba;

    iget-object v4, v1, Lcom/google/android/gms/internal/zzbba;->zzaEG:Lcom/google/android/gms/internal/zzbdt;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v5

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/google/android/gms/internal/zzbbc;->zzaBS:Lcom/google/android/gms/internal/zzbba;

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/common/GoogleApiAvailability;->zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzbdt;IILandroid/content/DialogInterface$OnCancelListener;)Z

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbc;->zzaBS:Lcom/google/android/gms/internal/zzbba;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbba;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbbc;->zzaBS:Lcom/google/android/gms/internal/zzbba;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->zza(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbbc;->zzaBS:Lcom/google/android/gms/internal/zzbba;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbba;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzbbd;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzbbd;-><init>(Lcom/google/android/gms/internal/zzbbc;Landroid/app/Dialog;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzbdl;)Lcom/google/android/gms/internal/zzbdk;

    return-void

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbbc;->zzaBS:Lcom/google/android/gms/internal/zzbba;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbbc;->zzaBR:Lcom/google/android/gms/internal/zzbbb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbbb;->zzpy()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzbba;->zza(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method
