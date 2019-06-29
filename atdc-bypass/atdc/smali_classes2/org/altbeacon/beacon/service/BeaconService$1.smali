.class Lorg/altbeacon/beacon/service/BeaconService$1;
.super Ljava/lang/Object;
.source "BeaconService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/altbeacon/beacon/service/BeaconService;->scanLeDevice(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/beacon/service/BeaconService;


# direct methods
.method constructor <init>(Lorg/altbeacon/beacon/service/BeaconService;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService$1;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 385
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService$1;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/altbeacon/beacon/service/BeaconService;->access$000(Lorg/altbeacon/beacon/service/BeaconService;Ljava/lang/Boolean;)V

    return-void
.end method
