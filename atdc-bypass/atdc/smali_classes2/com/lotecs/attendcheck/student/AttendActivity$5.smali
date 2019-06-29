.class Lcom/lotecs/attendcheck/student/AttendActivity$5;
.super Ljava/lang/Object;
.source "AttendActivity.java"

# interfaces
.implements Lcom/androidnetworking/interfaces/JSONObjectRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lotecs/attendcheck/student/AttendActivity;->getAtdcInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lotecs/attendcheck/student/AttendActivity;


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/student/AttendActivity;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$5;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/androidnetworking/error/ANError;)V
    .locals 3

    .line 458
    sget-object v0, Lcom/lotecs/attendcheck/student/AttendActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " anError.getErrorCode() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/androidnetworking/error/ANError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$5;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$5;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    .line 462
    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$5;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    const v2, 0x7f0e00f1

    invoke-virtual {v1, v2}, Lcom/lotecs/attendcheck/student/AttendActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x756fd25

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 461
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 6

    .line 375
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$5;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    const-string v1, "info"

    invoke-static {v0, v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$1002(Lcom/lotecs/attendcheck/student/AttendActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 379
    sget-object v0, Lcom/lotecs/attendcheck/student/AttendActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "state"

    .line 382
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "data"

    .line 384
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "11111 data  : "

    .line 387
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "authKey"

    .line 391
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkr/or/kisa/seed/ProcData;->simpleDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "22222 authkey  : "

    .line 393
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "UNIST"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "33333 firstEncode  : "

    .line 398
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$5;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v1}, Lkr/or/kisa/seed/ProcData;->simpleEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$1102(Lcom/lotecs/attendcheck/student/AttendActivity;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "44444 secondEncode  : "

    .line 403
    iget-object v2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$5;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v2}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$1100(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "cnt"

    .line 406
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "key"

    .line 407
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$5;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    const-string v2, "cnt"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$1202(Lcom/lotecs/attendcheck/student/AttendActivity;I)I

    .line 409
    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$5;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    const-string v2, "time"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$1302(Lcom/lotecs/attendcheck/student/AttendActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 410
    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$5;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    const-string v2, "type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$1402(Lcom/lotecs/attendcheck/student/AttendActivity;I)I

    .line 411
    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$5;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    const-string v2, "key"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$1502(Lcom/lotecs/attendcheck/student/AttendActivity;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const-string v1, "ssid"

    .line 413
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 414
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 415
    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$5;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v3}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$902(Lcom/lotecs/attendcheck/student/AttendActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 418
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 419
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 420
    new-instance v4, Lcom/lotecs/attendcheck/domain/AttendInfo;

    invoke-direct {v4}, Lcom/lotecs/attendcheck/domain/AttendInfo;-><init>()V

    .line 421
    iget-object v5, p0, Lcom/lotecs/attendcheck/student/AttendActivity$5;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v5}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$1600(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lotecs/attendcheck/domain/AttendInfo;->setIdno(Ljava/lang/String;)V

    const-string v5, "SSID"

    .line 422
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lotecs/attendcheck/domain/AttendInfo;->setSsid(Ljava/lang/String;)V

    const-string v5, "MSC"

    .line 423
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/lotecs/attendcheck/domain/AttendInfo;->setMac(Ljava/lang/String;)V

    const-string v3, "psco"

    .line 424
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/lotecs/attendcheck/domain/AttendInfo;->setPsco(Ljava/lang/String;)V

    const-string v3, "sjco"

    .line 425
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/lotecs/attendcheck/domain/AttendInfo;->setSjco(Ljava/lang/String;)V

    .line 426
    iget-object v3, p0, Lcom/lotecs/attendcheck/student/AttendActivity$5;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v3}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$900(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    :cond_1
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$5;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$1702(Lcom/lotecs/attendcheck/student/AttendActivity;Z)Z

    .line 431
    :cond_2
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$5;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$5;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v1

    const v3, 0x756fd24

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p1, "path"

    .line 433
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 435
    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$5;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    const-string v2, "sjnm"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "date"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "prnm"

    .line 436
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "rmnm"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    invoke-static {v1, v2, v3, v4, v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$1800(Lcom/lotecs/attendcheck/student/AttendActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$5;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 438
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    const v0, 0x7f0701e1

    .line 439
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    .line 440
    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$5;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$1900(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    .line 442
    :cond_3
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$5;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$2000(Lcom/lotecs/attendcheck/student/AttendActivity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 446
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$5;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$5;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    .line 447
    invoke-static {v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$400(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0x756fd25

    iget-object v3, p0, Lcom/lotecs/attendcheck/student/AttendActivity$5;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    const v4, 0x7f0e00f1

    invoke-virtual {v3, v4}, Lcom/lotecs/attendcheck/student/AttendActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 446
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 448
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method
