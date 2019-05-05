.class public Lorg/altbeacon/beacon/service/Callback;
.super Ljava/lang/Object;
.source "Callback.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private intent:Landroid/content/Intent;

.field private messenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Callback"

    .line 34
    iput-object v0, p0, Lorg/altbeacon/beacon/service/Callback;->TAG:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 39
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/Callback;->intent:Landroid/content/Intent;

    .line 40
    iget-object v0, p0, Lorg/altbeacon/beacon/service/Callback;->intent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "org.altbeacon.beacon.BeaconIntentProcessor"

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    return-void
.end method


# virtual methods
.method public call(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;)Z
    .locals 3

    .line 58
    iget-object v0, p0, Lorg/altbeacon/beacon/service/Callback;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lorg/altbeacon/beacon/service/Callback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempting callback via intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/altbeacon/beacon/service/Callback;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lorg/altbeacon/beacon/service/Callback;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 61
    iget-object p2, p0, Lorg/altbeacon/beacon/service/Callback;->intent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/altbeacon/beacon/service/Callback;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/altbeacon/beacon/service/Callback;->intent:Landroid/content/Intent;

    return-void
.end method
