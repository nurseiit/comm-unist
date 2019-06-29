.class Lorg/altbeacon/beacon/service/BeaconService$2;
.super Ljava/lang/Object;
.source "BeaconService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/altbeacon/beacon/service/BeaconService;->scheduleScanStop()V
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

    .line 450
    iput-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService$2;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 453
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService$2;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-static {v0}, Lorg/altbeacon/beacon/service/BeaconService;->access$100(Lorg/altbeacon/beacon/service/BeaconService;)V

    return-void
.end method
