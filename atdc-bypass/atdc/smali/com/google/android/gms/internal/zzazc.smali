.class public final Lcom/google/android/gms/internal/zzazc;
.super Lcom/google/android/gms/internal/zzaza;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private final zzaza:Lcom/google/android/gms/internal/zzazf;

.field private synthetic zzazb:Lcom/google/android/gms/internal/zzazb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzazb;Lcom/google/android/gms/internal/zzazf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzazc;->zzazb:Lcom/google/android/gms/internal/zzazb;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzazb;->zzayZ:Lcom/google/android/gms/internal/zzayw;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaza;-><init>(Lcom/google/android/gms/internal/zzayw;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzazc;->zzaza:Lcom/google/android/gms/internal/zzazf;

    return-void
.end method


# virtual methods
.method public final onError(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzayw;->zzoQ()Lcom/google/android/gms/internal/zzayo;

    move-result-object v0

    const-string v1, "onError: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzayo;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzazc;->zzazb:Lcom/google/android/gms/internal/zzazb;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzazb;->zzayZ:Lcom/google/android/gms/internal/zzayw;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzayw;->zza(Lcom/google/android/gms/internal/zzayw;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzazc;->zzazb:Lcom/google/android/gms/internal/zzazb;

    new-instance v0, Lcom/google/android/gms/internal/zzaze;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzaBo:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaze;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzazb;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public final zza(IILandroid/view/Surface;)V
    .locals 10

    invoke-static {}, Lcom/google/android/gms/internal/zzayw;->zzoQ()Lcom/google/android/gms/internal/zzayo;

    move-result-object v0

    const-string v1, "onConnected"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zzayo;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazc;->zzaza:Lcom/google/android/gms/internal/zzazf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzazf;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/hardware/display/DisplayManager;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzayw;->zzoQ()Lcom/google/android/gms/internal/zzayo;

    move-result-object p1

    const-string p2, "Unable to get the display manager"

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzayo;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzazc;->zzazb:Lcom/google/android/gms/internal/zzazb;

    new-instance p2, Lcom/google/android/gms/internal/zzaze;

    sget-object p3, Lcom/google/android/gms/common/api/Status;->zzaBo:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/zzaze;-><init>(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzazb;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzazc;->zzazb:Lcom/google/android/gms/internal/zzazb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzazb;->zzayZ:Lcom/google/android/gms/internal/zzayw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayw;->zza(Lcom/google/android/gms/internal/zzayw;)V

    if-ge p1, p2, :cond_1

    move v0, p1

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    mul-int/lit16 v0, v0, 0x140

    div-int/lit16 v7, v0, 0x438

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazc;->zzazb:Lcom/google/android/gms/internal/zzazb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzazb;->zzayZ:Lcom/google/android/gms/internal/zzayw;

    const-string v4, "private_display"

    const/4 v9, 0x2

    move v5, p1

    move v6, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v9}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzayw;->zza(Lcom/google/android/gms/internal/zzayw;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzazc;->zzazb:Lcom/google/android/gms/internal/zzazb;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzazb;->zzayZ:Lcom/google/android/gms/internal/zzayw;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzayw;->zzd(Lcom/google/android/gms/internal/zzayw;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/zzayw;->zzoQ()Lcom/google/android/gms/internal/zzayo;

    move-result-object p1

    const-string p2, "Unable to create virtual display"

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzayo;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzazc;->zzazb:Lcom/google/android/gms/internal/zzazb;

    new-instance p2, Lcom/google/android/gms/internal/zzaze;

    sget-object p3, Lcom/google/android/gms/common/api/Status;->zzaBo:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/zzaze;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzazc;->zzazb:Lcom/google/android/gms/internal/zzazb;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzazb;->zzayZ:Lcom/google/android/gms/internal/zzayw;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzayw;->zzd(Lcom/google/android/gms/internal/zzayw;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/zzayw;->zzoQ()Lcom/google/android/gms/internal/zzayo;

    move-result-object p1

    const-string p2, "Virtual display does not have a display"

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzayo;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzazc;->zzazb:Lcom/google/android/gms/internal/zzazb;

    new-instance p2, Lcom/google/android/gms/internal/zzaze;

    sget-object p3, Lcom/google/android/gms/common/api/Status;->zzaBo:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/zzaze;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzazc;->zzaza:Lcom/google/android/gms/internal/zzazf;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzazc;->zzazb:Lcom/google/android/gms/internal/zzazb;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzazb;->zzayZ:Lcom/google/android/gms/internal/zzayw;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzayw;->zzd(Lcom/google/android/gms/internal/zzayw;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzazf;->zzrf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzazj;

    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/internal/zzazj;->zza(Lcom/google/android/gms/internal/zzazh;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/zzayw;->zzoQ()Lcom/google/android/gms/internal/zzayo;

    move-result-object p1

    const-string p2, "Unable to provision the route\'s new virtual Display"

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzayo;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzazc;->zzazb:Lcom/google/android/gms/internal/zzazb;

    new-instance p2, Lcom/google/android/gms/internal/zzaze;

    sget-object p3, Lcom/google/android/gms/common/api/Status;->zzaBo:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/zzaze;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_0
.end method

.method public final zzoR()V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/zzayw;->zzoQ()Lcom/google/android/gms/internal/zzayo;

    move-result-object v0

    const-string v1, "onConnectedWithDisplay"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zzayo;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazc;->zzazb:Lcom/google/android/gms/internal/zzazb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzazb;->zzayZ:Lcom/google/android/gms/internal/zzayw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayw;->zzd(Lcom/google/android/gms/internal/zzayw;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzayw;->zzoQ()Lcom/google/android/gms/internal/zzayo;

    move-result-object v0

    const-string v1, "There is no virtual display"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzayo;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazc;->zzazb:Lcom/google/android/gms/internal/zzazb;

    new-instance v1, Lcom/google/android/gms/internal/zzaze;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzaBo:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzaze;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzazb;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzazc;->zzazb:Lcom/google/android/gms/internal/zzazb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzazb;->zzayZ:Lcom/google/android/gms/internal/zzayw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayw;->zzd(Lcom/google/android/gms/internal/zzayw;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzazc;->zzazb:Lcom/google/android/gms/internal/zzazb;

    new-instance v2, Lcom/google/android/gms/internal/zzaze;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzaze;-><init>(Landroid/view/Display;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzazb;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzayw;->zzoQ()Lcom/google/android/gms/internal/zzayo;

    move-result-object v0

    const-string v1, "Virtual display no longer has a display"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzayo;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazc;->zzazb:Lcom/google/android/gms/internal/zzazb;

    new-instance v1, Lcom/google/android/gms/internal/zzaze;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzaBo:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzaze;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzazb;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
