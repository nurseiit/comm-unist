.class Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;
.super Landroid/os/AsyncTask;
.source "BeaconService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/service/BeaconService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lorg/altbeacon/beacon/service/BeaconService$ScanData;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/beacon/service/BeaconService;


# direct methods
.method private constructor <init>(Lorg/altbeacon/beacon/service/BeaconService;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/altbeacon/beacon/service/BeaconService;Lorg/altbeacon/beacon/service/BeaconService$1;)V
    .locals 0

    .line 635
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;-><init>(Lorg/altbeacon/beacon/service/BeaconService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 635
    check-cast p1, [Lorg/altbeacon/beacon/service/BeaconService$ScanData;

    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;->doInBackground([Lorg/altbeacon/beacon/service/BeaconService$ScanData;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lorg/altbeacon/beacon/service/BeaconService$ScanData;)Ljava/lang/Void;
    .locals 6

    const/4 v0, 0x0

    .line 639
    aget-object p1, p1, v0

    .line 642
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-static {v0}, Lorg/altbeacon/beacon/service/BeaconService;->access$300(Lorg/altbeacon/beacon/service/BeaconService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/BeaconParser;

    .line 643
    iget-object v3, p1, Lorg/altbeacon/beacon/service/BeaconService$ScanData;->scanRecord:[B

    iget v4, p1, Lorg/altbeacon/beacon/service/BeaconService$ScanData;->rssi:I

    iget-object v5, p1, Lorg/altbeacon/beacon/service/BeaconService$ScanData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3, v4, v5}, Lorg/altbeacon/beacon/BeaconParser;->fromScanData([BILandroid/bluetooth/BluetoothDevice;)Lorg/altbeacon/beacon/Beacon;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_1
    if-eqz v2, :cond_2

    .line 650
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-static {v0, v2}, Lorg/altbeacon/beacon/service/BeaconService;->access$400(Lorg/altbeacon/beacon/service/BeaconService;Lorg/altbeacon/beacon/Beacon;)V

    .line 652
    :cond_2
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-static {v0}, Lorg/altbeacon/beacon/service/BeaconService;->access$600(Lorg/altbeacon/beacon/service/BeaconService;)Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    move-result-object v0

    iget-object p1, p1, Lorg/altbeacon/beacon/service/BeaconService$ScanData;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;->this$0:Lorg/altbeacon/beacon/service/BeaconService;

    invoke-static {v2}, Lorg/altbeacon/beacon/service/BeaconService;->access$500(Lorg/altbeacon/beacon/service/BeaconService;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, p1, v2}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->notifyScannedDevice(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 635
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 635
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/service/BeaconService$ScanProcessor;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
