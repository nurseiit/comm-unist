.class Lcom/lotecs/attendcheck/common/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/androidnetworking/interfaces/JSONObjectRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lotecs/attendcheck/common/MainActivity;->getTrackList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lotecs/attendcheck/common/MainActivity;


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/common/MainActivity;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/MainActivity$4;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/androidnetworking/error/ANError;)V
    .locals 0

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 6

    :try_start_0
    const-string v0, "state"

    .line 373
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/MainActivity$4;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    new-instance v1, Lcom/lotecs/attendcheck/domain/ProCheckInfo;

    invoke-direct {v1}, Lcom/lotecs/attendcheck/domain/ProCheckInfo;-><init>()V

    iput-object v1, v0, Lcom/lotecs/attendcheck/common/MainActivity;->pro:Lcom/lotecs/attendcheck/domain/ProCheckInfo;

    const-string v0, "data"

    .line 375
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 377
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 379
    iget-object v2, p0, Lcom/lotecs/attendcheck/common/MainActivity$4;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    iget-object v2, v2, Lcom/lotecs/attendcheck/common/MainActivity;->pro:Lcom/lotecs/attendcheck/domain/ProCheckInfo;

    const-string v3, "\uac1c\uc124\ud559\uacfc\ucf54\ub4dc"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->setPsco(Ljava/lang/String;)V

    .line 380
    iget-object v2, p0, Lcom/lotecs/attendcheck/common/MainActivity$4;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    iget-object v2, v2, Lcom/lotecs/attendcheck/common/MainActivity;->pro:Lcom/lotecs/attendcheck/domain/ProCheckInfo;

    const-string v3, "\uc218\uc5c5\ucf54\ub4dc"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->setSjco(Ljava/lang/String;)V

    .line 381
    iget-object v2, p0, Lcom/lotecs/attendcheck/common/MainActivity$4;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    iget-object v2, v2, Lcom/lotecs/attendcheck/common/MainActivity;->pro:Lcom/lotecs/attendcheck/domain/ProCheckInfo;

    const-string v3, "\uad50\uc218\uba85"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->setProname(Ljava/lang/String;)V

    .line 382
    iget-object v2, p0, Lcom/lotecs/attendcheck/common/MainActivity$4;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    iget-object v2, v2, Lcom/lotecs/attendcheck/common/MainActivity;->pro:Lcom/lotecs/attendcheck/domain/ProCheckInfo;

    const-string v3, "\uc8fc\ucc28"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->setWeek(Ljava/lang/String;)V

    .line 383
    iget-object v2, p0, Lcom/lotecs/attendcheck/common/MainActivity$4;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    iget-object v2, v2, Lcom/lotecs/attendcheck/common/MainActivity;->pro:Lcom/lotecs/attendcheck/domain/ProCheckInfo;

    const-string v3, "\uc21c\uc11c"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->setOrder(Ljava/lang/String;)V

    .line 384
    iget-object v2, p0, Lcom/lotecs/attendcheck/common/MainActivity$4;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    iget-object v2, v2, Lcom/lotecs/attendcheck/common/MainActivity;->pro:Lcom/lotecs/attendcheck/domain/ProCheckInfo;

    const-string v3, "\ub144\ub3c4\ud559\uae30"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lotecs/attendcheck/domain/ProCheckInfo;->setDate(Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/lotecs/attendcheck/common/MainActivity$4;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    new-instance v3, Lcom/lotecs/attendcheck/domain/AttendInfo;

    invoke-direct {v3}, Lcom/lotecs/attendcheck/domain/AttendInfo;-><init>()V

    invoke-static {v2, v3}, Lcom/lotecs/attendcheck/common/MainActivity;->access$102(Lcom/lotecs/attendcheck/common/MainActivity;Lcom/lotecs/attendcheck/domain/AttendInfo;)Lcom/lotecs/attendcheck/domain/AttendInfo;

    .line 387
    iget-object v2, p0, Lcom/lotecs/attendcheck/common/MainActivity$4;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-static {v2}, Lcom/lotecs/attendcheck/common/MainActivity;->access$100(Lcom/lotecs/attendcheck/common/MainActivity;)Lcom/lotecs/attendcheck/domain/AttendInfo;

    move-result-object v2

    const-string v3, "\uac1c\uc124\ud559\uacfc\ucf54\ub4dc"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lotecs/attendcheck/domain/AttendInfo;->setPsco(Ljava/lang/String;)V

    .line 388
    iget-object v2, p0, Lcom/lotecs/attendcheck/common/MainActivity$4;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-static {v2}, Lcom/lotecs/attendcheck/common/MainActivity;->access$100(Lcom/lotecs/attendcheck/common/MainActivity;)Lcom/lotecs/attendcheck/domain/AttendInfo;

    move-result-object v2

    const-string v3, "\uc218\uc5c5\ucf54\ub4dc"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lotecs/attendcheck/domain/AttendInfo;->setSjco(Ljava/lang/String;)V

    .line 389
    iget-object v2, p0, Lcom/lotecs/attendcheck/common/MainActivity$4;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-static {v2}, Lcom/lotecs/attendcheck/common/MainActivity;->access$100(Lcom/lotecs/attendcheck/common/MainActivity;)Lcom/lotecs/attendcheck/domain/AttendInfo;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\uc2dc\uc791\uc2dc\uac04"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-static {v4, v5}, Lcom/lotecs/util/DateUtil;->getDefaultTime(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "~"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\uc885\ub8cc\uc2dc\uac04"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-static {v4, v5}, Lcom/lotecs/util/DateUtil;->getDefaultTime(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lotecs/attendcheck/domain/AttendInfo;->setYyse(Ljava/lang/String;)V

    .line 390
    iget-object v2, p0, Lcom/lotecs/attendcheck/common/MainActivity$4;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-static {v2}, Lcom/lotecs/attendcheck/common/MainActivity;->access$100(Lcom/lotecs/attendcheck/common/MainActivity;)Lcom/lotecs/attendcheck/domain/AttendInfo;

    move-result-object v2

    const-string v3, "\uc218\uc5c5\uc77c\uc790"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lotecs/attendcheck/domain/AttendInfo;->setDays(Ljava/lang/String;)V

    .line 391
    iget-object v2, p0, Lcom/lotecs/attendcheck/common/MainActivity$4;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-static {v2}, Lcom/lotecs/attendcheck/common/MainActivity;->access$100(Lcom/lotecs/attendcheck/common/MainActivity;)Lcom/lotecs/attendcheck/domain/AttendInfo;

    move-result-object v2

    const-string v3, "\uad50\uc2dc"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lotecs/attendcheck/domain/AttendInfo;->setTime(Ljava/lang/String;)V

    .line 392
    iget-object v2, p0, Lcom/lotecs/attendcheck/common/MainActivity$4;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-static {v2}, Lcom/lotecs/attendcheck/common/MainActivity;->access$100(Lcom/lotecs/attendcheck/common/MainActivity;)Lcom/lotecs/attendcheck/domain/AttendInfo;

    move-result-object v2

    const-string v3, "\uad50\uc218\uba85"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lotecs/attendcheck/domain/AttendInfo;->setName(Ljava/lang/String;)V

    .line 393
    iget-object v2, p0, Lcom/lotecs/attendcheck/common/MainActivity$4;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-static {v2}, Lcom/lotecs/attendcheck/common/MainActivity;->access$100(Lcom/lotecs/attendcheck/common/MainActivity;)Lcom/lotecs/attendcheck/domain/AttendInfo;

    move-result-object v2

    const-string v3, "\uc218\uac15\uc778\uc6d0"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lotecs/attendcheck/domain/AttendInfo;->setCnt(Ljava/lang/String;)V

    const-string v2, "ssid"

    .line 397
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 398
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 399
    iget-object v2, p0, Lcom/lotecs/attendcheck/common/MainActivity$4;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/lotecs/attendcheck/common/MainActivity;->access$202(Lcom/lotecs/attendcheck/common/MainActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 402
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 403
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 404
    new-instance v3, Lcom/lotecs/attendcheck/domain/AttendInfo;

    invoke-direct {v3}, Lcom/lotecs/attendcheck/domain/AttendInfo;-><init>()V

    .line 405
    iget-object v4, p0, Lcom/lotecs/attendcheck/common/MainActivity$4;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-static {v4}, Lcom/lotecs/attendcheck/common/MainActivity;->access$300(Lcom/lotecs/attendcheck/common/MainActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lotecs/attendcheck/domain/AttendInfo;->setIdno(Ljava/lang/String;)V

    const-string v4, "SSID"

    .line 406
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lotecs/attendcheck/domain/AttendInfo;->setSsid(Ljava/lang/String;)V

    const-string v4, "MSC"

    .line 407
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/lotecs/attendcheck/domain/AttendInfo;->setMac(Ljava/lang/String;)V

    const-string v2, "\uac1c\uc124\ud559\uacfc\ucf54\ub4dc"

    .line 408
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/lotecs/attendcheck/domain/AttendInfo;->setPsco(Ljava/lang/String;)V

    const-string v2, "\uc218\uc5c5\ucf54\ub4dc"

    .line 409
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/lotecs/attendcheck/domain/AttendInfo;->setSjco(Ljava/lang/String;)V

    .line 410
    iget-object v2, p0, Lcom/lotecs/attendcheck/common/MainActivity$4;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-static {v2}, Lcom/lotecs/attendcheck/common/MainActivity;->access$200(Lcom/lotecs/attendcheck/common/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 417
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method
