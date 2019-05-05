.class Lorg/altbeacon/bluetooth/BluetoothCrashResolver$DiscoveryCanceller;
.super Landroid/os/AsyncTask;
.source "BluetoothCrashResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/bluetooth/BluetoothCrashResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiscoveryCanceller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;


# direct methods
.method private constructor <init>(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$DiscoveryCanceller;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;Lorg/altbeacon/bluetooth/BluetoothCrashResolver$1;)V
    .locals 0

    .line 442
    invoke-direct {p0, p1}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$DiscoveryCanceller;-><init>(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 442
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$DiscoveryCanceller;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    const-wide/16 v0, 0x1388

    .line 446
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 447
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$DiscoveryCanceller;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-static {p1}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->access$400(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "BluetoothCrashResolver"

    const-string v0, "BluetoothAdapter.ACTION_DISCOVERY_STARTED never received.  Recovery may fail."

    .line 448
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 452
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$DiscoveryCanceller;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-static {v0}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->access$200(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BluetoothCrashResolver"

    const-string v1, "Cancelling discovery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    goto :goto_0

    .line 457
    :cond_2
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$DiscoveryCanceller;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-static {p1}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->access$200(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "BluetoothCrashResolver"

    const-string v0, "Discovery not running.  Won\'t cancel it"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    :catch_0
    iget-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$DiscoveryCanceller;->this$0:Lorg/altbeacon/bluetooth/BluetoothCrashResolver;

    invoke-static {p1}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver;->access$200(Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "BluetoothCrashResolver"

    const-string v0, "DiscoveryCanceller sleep interrupted."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 442
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$DiscoveryCanceller;->onPostExecute(Ljava/lang/Void;)V

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

    .line 442
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/altbeacon/bluetooth/BluetoothCrashResolver$DiscoveryCanceller;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
