.class final Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;
.super Landroid/support/v7/media/MediaRouteProvider$RouteController;
.source "RegisteredMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/RegisteredMediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Controller"
.end annotation


# instance fields
.field private mConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

.field private mControllerId:I

.field private mPendingSetVolume:I

.field private mPendingUpdateVolumeDelta:I

.field private final mRouteGroupId:Ljava/lang/String;

.field private final mRouteId:Ljava/lang/String;

.field private mSelected:Z

.field final synthetic this$0:Landroid/support/v7/media/RegisteredMediaRouteProvider;


# direct methods
.method public constructor <init>(Landroid/support/v7/media/RegisteredMediaRouteProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 352
    iput-object p1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->this$0:Landroid/support/v7/media/RegisteredMediaRouteProvider;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;-><init>()V

    const/4 p1, -0x1

    .line 346
    iput p1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mPendingSetVolume:I

    .line 353
    iput-object p2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mRouteId:Ljava/lang/String;

    .line 354
    iput-object p3, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mRouteGroupId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public attachConnection(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V
    .locals 2

    .line 358
    iput-object p1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    .line 359
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mRouteId:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mRouteGroupId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->createRouteController(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mControllerId:I

    .line 360
    iget-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mSelected:Z

    if-eqz v0, :cond_1

    .line 361
    iget v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mControllerId:I

    invoke-virtual {p1, v0}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->selectRoute(I)V

    .line 362
    iget v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mPendingSetVolume:I

    if-ltz v0, :cond_0

    .line 363
    iget v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mControllerId:I

    iget v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mPendingSetVolume:I

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->setVolume(II)V

    const/4 v0, -0x1

    .line 364
    iput v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mPendingSetVolume:I

    .line 366
    :cond_0
    iget v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mPendingUpdateVolumeDelta:I

    if-eqz v0, :cond_1

    .line 367
    iget v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mControllerId:I

    iget v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mPendingUpdateVolumeDelta:I

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->updateVolume(II)V

    const/4 p1, 0x0

    .line 368
    iput p1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mPendingUpdateVolumeDelta:I

    :cond_1
    return-void
.end method

.method public detachConnection()V
    .locals 2

    .line 374
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    iget v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mControllerId:I

    invoke-virtual {v0, v1}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->releaseRouteController(I)V

    const/4 v0, 0x0

    .line 376
    iput-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    const/4 v0, 0x0

    .line 377
    iput v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mControllerId:I

    :cond_0
    return-void
.end method

.method public onControlRequest(Landroid/content/Intent;Landroid/support/v7/media/MediaRouter$ControlRequestCallback;)Z
    .locals 2

    .line 428
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    iget v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mControllerId:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->sendControlRequest(ILandroid/content/Intent;Landroid/support/v7/media/MediaRouter$ControlRequestCallback;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onRelease()V
    .locals 1

    .line 383
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->this$0:Landroid/support/v7/media/RegisteredMediaRouteProvider;

    invoke-virtual {v0, p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->onControllerReleased(Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;)V

    return-void
.end method

.method public onSelect()V
    .locals 2

    const/4 v0, 0x1

    .line 388
    iput-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mSelected:Z

    .line 389
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    iget v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mControllerId:I

    invoke-virtual {v0, v1}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->selectRoute(I)V

    :cond_0
    return-void
.end method

.method public onSetVolume(I)V
    .locals 2

    .line 409
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    iget v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mControllerId:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->setVolume(II)V

    goto :goto_0

    .line 412
    :cond_0
    iput p1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mPendingSetVolume:I

    const/4 p1, 0x0

    .line 413
    iput p1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mPendingUpdateVolumeDelta:I

    :goto_0
    return-void
.end method

.method public onUnselect()V
    .locals 1

    const/4 v0, 0x0

    .line 396
    invoke-virtual {p0, v0}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->onUnselect(I)V

    return-void
.end method

.method public onUnselect(I)V
    .locals 2

    const/4 v0, 0x0

    .line 401
    iput-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mSelected:Z

    .line 402
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    iget v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mControllerId:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->unselectRoute(II)V

    :cond_0
    return-void
.end method

.method public onUpdateVolume(I)V
    .locals 2

    .line 419
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    iget v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mControllerId:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->updateVolume(II)V

    goto :goto_0

    .line 422
    :cond_0
    iget v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mPendingUpdateVolumeDelta:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->mPendingUpdateVolumeDelta:I

    :goto_0
    return-void
.end method
