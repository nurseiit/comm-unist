.class public Lcom/google/android/gms/tagmanager/TagManagerService;
.super Landroid/app/Service;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzbf;->zzbo(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzbf;->zzbn(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method
