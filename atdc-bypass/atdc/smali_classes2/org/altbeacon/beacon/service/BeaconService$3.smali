.class Lorg/altbeacon/beacon/service/BeaconService$3;
.super Ljava/lang/Object;
.source "BeaconService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/altbeacon/beacon/service/BeaconService;->getLeScanCallback()Ljava/lang/Object;
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

    .line 540
    iput-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService$3;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 4

    const-string v0, "BeaconService"

    const-string v1, "got record"

    .line 545
    invoke-static {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    new-instance v0, Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;

    iget-object v1, p0, Lorg/altbeacon/beacon/service/BeaconService$3;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;-><init>(Lorg/altbeacon/beacon/service/BeaconService;Lorg/altbeacon/beacon/service/BeaconService$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/altbeacon/beacon/service/BeaconService$ScanData;

    new-instance v2, Lorg/altbeacon/beacon/service/BeaconService$ScanData;

    iget-object v3, p0, Lorg/altbeacon/beacon/service/BeaconService$3;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-direct {v2, v3, p1, p2, p3}, Lorg/altbeacon/beacon/service/BeaconService$ScanData;-><init>(Lorg/altbeacon/beacon/service/BeaconService;Landroid/bluetooth/BluetoothDevice;I[B)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
