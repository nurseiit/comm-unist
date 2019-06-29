.class public Lorg/altbeacon/beacon/service/BeaconService$BeaconBinder;
.super Landroid/os/Binder;
.source "BeaconService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/service/BeaconService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BeaconBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/beacon/service/BeaconService;


# direct methods
.method public constructor <init>(Lorg/altbeacon/beacon/service/BeaconService;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService$BeaconBinder;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lorg/altbeacon/beacon/service/BeaconService;
    .locals 2

    const-string v0, "BeaconService"

    const-string v1, "getService of BeaconBinder called"

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService$BeaconBinder;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    return-object v0
.end method
