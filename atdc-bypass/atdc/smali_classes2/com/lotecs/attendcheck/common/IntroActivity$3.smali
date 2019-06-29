.class Lcom/lotecs/attendcheck/common/IntroActivity$3;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Lcom/androidnetworking/interfaces/JSONObjectRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lotecs/attendcheck/common/IntroActivity;->regPush(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lotecs/attendcheck/common/IntroActivity;

.field final synthetic val$regId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/common/IntroActivity;Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/IntroActivity$3;->this$0:Lcom/lotecs/attendcheck/common/IntroActivity;

    iput-object p2, p0, Lcom/lotecs/attendcheck/common/IntroActivity$3;->val$regId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/androidnetworking/error/ANError;)V
    .locals 1

    .line 136
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/IntroActivity$3;->this$0:Lcom/lotecs/attendcheck/common/IntroActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/lotecs/attendcheck/common/IntroActivity;->access$100(Lcom/lotecs/attendcheck/common/IntroActivity;I)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 3

    const/16 v0, 0x1f4

    :try_start_0
    const-string v1, "state"

    .line 113
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "T"

    .line 114
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/IntroActivity$3;->this$0:Lcom/lotecs/attendcheck/common/IntroActivity;

    .line 116
    invoke-virtual {p1}, Lcom/lotecs/attendcheck/common/IntroActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "registration_id"

    iget-object v2, p0, Lcom/lotecs/attendcheck/common/IntroActivity$3;->val$regId:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/lotecs/util/AndroidUtil;->saveStringApiVaule(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/IntroActivity$3;->this$0:Lcom/lotecs/attendcheck/common/IntroActivity;

    invoke-virtual {p1}, Lcom/lotecs/attendcheck/common/IntroActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "regStatus"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/lotecs/util/AndroidUtil;->saveBooleanApiValue(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/IntroActivity$3;->this$0:Lcom/lotecs/attendcheck/common/IntroActivity;

    .line 120
    invoke-virtual {p1}, Lcom/lotecs/attendcheck/common/IntroActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "regStatus"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/lotecs/util/AndroidUtil;->saveBooleanApiValue(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 125
    :try_start_1
    sget-object v1, Lcom/lotecs/attendcheck/common/IntroActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :goto_0
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/IntroActivity$3;->this$0:Lcom/lotecs/attendcheck/common/IntroActivity;

    invoke-static {p1, v0}, Lcom/lotecs/attendcheck/common/IntroActivity;->access$100(Lcom/lotecs/attendcheck/common/IntroActivity;I)V

    return-void

    :goto_1
    iget-object v1, p0, Lcom/lotecs/attendcheck/common/IntroActivity$3;->this$0:Lcom/lotecs/attendcheck/common/IntroActivity;

    invoke-static {v1, v0}, Lcom/lotecs/attendcheck/common/IntroActivity;->access$100(Lcom/lotecs/attendcheck/common/IntroActivity;I)V

    throw p1
.end method
