.class public Lcom/lotecs/attendcheck/ReCheckService;
.super Lroboguice/service/RoboService;
.source "ReCheckService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReCheckService"


# instance fields
.field private cnt:I

.field private goplusBeacons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;"
        }
    .end annotation
.end field

.field isWifiState:Z

.field private serviceHandler:Landroid/os/Handler;

.field wfm:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lroboguice/service/RoboService;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/lotecs/attendcheck/ReCheckService;->wfm:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/lotecs/attendcheck/ReCheckService;->isWifiState:Z

    .line 46
    iput v0, p0, Lcom/lotecs/attendcheck/ReCheckService;->cnt:I

    .line 254
    new-instance v0, Lcom/lotecs/attendcheck/ReCheckService$3;

    invoke-direct {v0, p0}, Lcom/lotecs/attendcheck/ReCheckService$3;-><init>(Lcom/lotecs/attendcheck/ReCheckService;)V

    iput-object v0, p0, Lcom/lotecs/attendcheck/ReCheckService;->serviceHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lotecs/attendcheck/ReCheckService;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/lotecs/attendcheck/ReCheckService;->serviceHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/lotecs/attendcheck/ReCheckService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lotecs/attendcheck/ReCheckService;)Ljava/util/ArrayList;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/lotecs/attendcheck/ReCheckService;->goplusBeacons:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/lotecs/attendcheck/ReCheckService;Ljava/util/List;)Lcom/lotecs/attendcheck/domain/AttendInfo;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/lotecs/attendcheck/ReCheckService;->getBeaconAuth(Ljava/util/List;)Lcom/lotecs/attendcheck/domain/AttendInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/lotecs/attendcheck/ReCheckService;Lcom/lotecs/attendcheck/domain/AttendInfo;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/lotecs/attendcheck/ReCheckService;->atdcCheckBack(Lcom/lotecs/attendcheck/domain/AttendInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/lotecs/attendcheck/ReCheckService;Ljava/util/ArrayList;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/lotecs/attendcheck/ReCheckService;->baseAccessPointMac(Ljava/util/ArrayList;)V

    return-void
.end method

.method private atdcCheckBack(Lcom/lotecs/attendcheck/domain/AttendInfo;Ljava/lang/String;)V
    .locals 5

    .line 205
    invoke-virtual {p1}, Lcom/lotecs/attendcheck/domain/AttendInfo;->getType()I

    const v0, 0x7f0e002a

    .line 208
    invoke-virtual {p0, v0}, Lcom/lotecs/attendcheck/ReCheckService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "idno"

    .line 211
    invoke-virtual {p1}, Lcom/lotecs/attendcheck/domain/AttendInfo;->getIdno()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "psco"

    .line 212
    invoke-virtual {p1}, Lcom/lotecs/attendcheck/domain/AttendInfo;->getPsco()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sjco"

    .line 213
    invoke-virtual {p1}, Lcom/lotecs/attendcheck/domain/AttendInfo;->getSjco()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mac"

    .line 214
    invoke-virtual {p1}, Lcom/lotecs/attendcheck/domain/AttendInfo;->getMac()Ljava/lang/String;

    move-result-object p1

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "date"

    const-string v2, "yyyyMMddHHmmss"

    .line 215
    invoke-static {v2}, Lcom/lotecs/util/DateUtil;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "uuid"

    .line 216
    invoke-static {p0}, Lcom/lotecs/util/AndroidUtil;->device_id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "check"

    const-string v2, "1"

    .line 217
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "in_out"

    .line 218
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object p1, Lcom/lotecs/attendcheck/ReCheckService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-static {v0}, Lcom/androidnetworking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    .line 224
    invoke-virtual {p1, v1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->addUrlEncodeFormBodyParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    sget-object p2, Lcom/androidnetworking/common/Priority;->MEDIUM:Lcom/androidnetworking/common/Priority;

    .line 228
    invoke-virtual {p1, p2}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->setPriority(Lcom/androidnetworking/common/Priority;)Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;->build()Lcom/androidnetworking/common/ANRequest;

    move-result-object p1

    new-instance p2, Lcom/lotecs/attendcheck/ReCheckService$2;

    invoke-direct {p2, p0}, Lcom/lotecs/attendcheck/ReCheckService$2;-><init>(Lcom/lotecs/attendcheck/ReCheckService;)V

    .line 229
    invoke-virtual {p1, p2}, Lcom/androidnetworking/common/ANRequest;->getAsJSONObject(Lcom/androidnetworking/interfaces/JSONObjectRequestListener;)V

    return-void
.end method

.method private baseAccessPointMac(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/lotecs/attendcheck/domain/AttendInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "wifi"

    .line 148
    invoke-virtual {p0, v0}, Lcom/lotecs/attendcheck/ReCheckService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lotecs/attendcheck/ReCheckService;->wfm:Landroid/net/wifi/WifiManager;

    .line 149
    iget-object v0, p0, Lcom/lotecs/attendcheck/ReCheckService;->wfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/lotecs/attendcheck/ReCheckService;->wfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 151
    iput-boolean v1, p0, Lcom/lotecs/attendcheck/ReCheckService;->isWifiState:Z

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/lotecs/attendcheck/ReCheckService;->wfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 155
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x78

    if-ge v3, v4, :cond_1

    .line 156
    iget-object v0, p0, Lcom/lotecs/attendcheck/ReCheckService;->wfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    const-wide/16 v4, 0x1f4

    .line 158
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    .line 161
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 166
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    const-string v6, "BSSID : "

    .line 169
    iget-object v7, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lotecs/attendcheck/domain/AttendInfo;

    .line 174
    invoke-virtual {v7}, Lcom/lotecs/attendcheck/domain/AttendInfo;->getSsid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 176
    invoke-virtual {v7}, Lcom/lotecs/attendcheck/domain/AttendInfo;->getMac()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ":"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v4, v7

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_6

    .line 182
    iget-boolean p1, p0, Lcom/lotecs/attendcheck/ReCheckService;->isWifiState:Z

    if-eqz p1, :cond_5

    .line 183
    iget-object p1, p0, Lcom/lotecs/attendcheck/ReCheckService;->wfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_5
    const-string p1, "O"

    .line 185
    invoke-direct {p0, v4, p1}, Lcom/lotecs/attendcheck/ReCheckService;->atdcCheckBack(Lcom/lotecs/attendcheck/domain/AttendInfo;Ljava/lang/String;)V

    goto :goto_2

    .line 187
    :cond_6
    iget p1, p0, Lcom/lotecs/attendcheck/ReCheckService;->cnt:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/lotecs/attendcheck/ReCheckService;->cnt:I

    .line 188
    iget p1, p0, Lcom/lotecs/attendcheck/ReCheckService;->cnt:I

    if-nez p1, :cond_8

    .line 189
    invoke-virtual {p0}, Lcom/lotecs/attendcheck/ReCheckService;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/lotecs/attendcheck/GoPlusBeaconApp;

    invoke-virtual {p1, v3, v2}, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->setRangingService(Lcom/lotecs/attendcheck/ReCheckService;Z)V

    const-string p1, "isBeacon"

    .line 190
    invoke-static {p0, p1, v2}, Lcom/lotecs/util/AndroidUtil;->getBooleanApiValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_8

    .line 192
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 193
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_7

    .line 194
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_8

    .line 195
    :cond_7
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :cond_8
    :goto_2
    return-void
.end method

.method private filterBeacons(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;"
        }
    .end annotation

    .line 110
    sget-object v0, Lcom/lotecs/attendcheck/ReCheckService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\uac1c filterBeacons"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/Beacon;

    .line 114
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :cond_0
    new-instance p1, Lcom/lotecs/attendcheck/ReCheckService$1;

    invoke-direct {p1, p0}, Lcom/lotecs/attendcheck/ReCheckService$1;-><init>(Lcom/lotecs/attendcheck/ReCheckService;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private getBeaconAuth(Ljava/util/List;)Lcom/lotecs/attendcheck/domain/AttendInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lotecs/attendcheck/domain/AttendInfo;",
            ">;)",
            "Lcom/lotecs/attendcheck/domain/AttendInfo;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/lotecs/attendcheck/ReCheckService;->goplusBeacons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/Beacon;

    .line 129
    sget-object v2, Lcom/lotecs/attendcheck/ReCheckService;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/Beacon;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lotecs/attendcheck/domain/AttendInfo;

    .line 132
    invoke-virtual {v3}, Lcom/lotecs/attendcheck/domain/AttendInfo;->getSsid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/altbeacon/beacon/Beacon;->getId1()Lorg/altbeacon/beacon/Identifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/altbeacon/beacon/Identifier;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    invoke-virtual {v3}, Lcom/lotecs/attendcheck/domain/AttendInfo;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/altbeacon/beacon/Beacon;->getId3()Lorg/altbeacon/beacon/Identifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/Beacon;->getId2()Lorg/altbeacon/beacon/Identifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private initBluetooth()V
    .locals 3

    .line 84
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 87
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_1
    return-void
.end method


# virtual methods
.method public didRangeBeaconsInRegion(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;)V"
        }
    .end annotation

    .line 99
    sget-object v0, Lcom/lotecs/attendcheck/ReCheckService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\uac1c didRangeBeaconsInRegion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 103
    invoke-direct {p0, p1}, Lcom/lotecs/attendcheck/ReCheckService;->filterBeacons(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 104
    iget-object v0, p0, Lcom/lotecs/attendcheck/ReCheckService;->goplusBeacons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 50
    invoke-super {p0}, Lroboguice/service/RoboService;->onCreate()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lotecs/attendcheck/ReCheckService;->goplusBeacons:Ljava/util/ArrayList;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 93
    invoke-super {p0}, Lroboguice/service/RoboService;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .line 62
    sget-object v0, Lcom/lotecs/attendcheck/ReCheckService;->TAG:Ljava/lang/String;

    const-string v1, "ReCheckService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "atte"

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "cnt"

    const/4 v2, 0x0

    .line 67
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lotecs/attendcheck/ReCheckService;->cnt:I

    .line 69
    invoke-direct {p0}, Lcom/lotecs/attendcheck/ReCheckService;->initBluetooth()V

    .line 71
    invoke-virtual {p0}, Lcom/lotecs/attendcheck/ReCheckService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/lotecs/attendcheck/GoPlusBeaconApp;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->setRangingService(Lcom/lotecs/attendcheck/ReCheckService;Z)V

    .line 72
    iget-object v1, p0, Lcom/lotecs/attendcheck/ReCheckService;->serviceHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lotecs/attendcheck/ReCheckService;->serviceHandler:Landroid/os/Handler;

    const/16 v3, 0x4d2

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    sget-object v1, Lcom/lotecs/attendcheck/ReCheckService;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lroboguice/service/RoboService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
