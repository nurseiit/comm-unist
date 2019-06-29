.class Lcom/lotecs/attendcheck/ReCheckService$3;
.super Landroid/os/Handler;
.source "ReCheckService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lotecs/attendcheck/ReCheckService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lotecs/attendcheck/ReCheckService;


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/ReCheckService;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/lotecs/attendcheck/ReCheckService$3;->this$0:Lcom/lotecs/attendcheck/ReCheckService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 257
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 258
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x4d2

    if-eq v0, v1, :cond_1

    const/16 p1, 0x929

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 275
    :cond_0
    iget-object p1, p0, Lcom/lotecs/attendcheck/ReCheckService$3;->this$0:Lcom/lotecs/attendcheck/ReCheckService;

    const-string v0, "notification"

    .line 276
    invoke-virtual {p1, v0}, Lcom/lotecs/attendcheck/ReCheckService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 278
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/lotecs/attendcheck/ReCheckService$3;->this$0:Lcom/lotecs/attendcheck/ReCheckService;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0700f3

    .line 280
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const-string v2, "\uc804\uc790\ucd9c\uacb0 \uc2dc\uc2a4\ud15c"

    .line 281
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const-string v2, "\ucd9c\uacb0\uc774 \ud655\uc778 \ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    .line 282
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 283
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    .line 284
    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 290
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lotecs/attendcheck/ReCheckService$3;->this$0:Lcom/lotecs/attendcheck/ReCheckService;

    invoke-virtual {v3}, Lcom/lotecs/attendcheck/ReCheckService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/lotecs/attendcheck/common/IntroActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    iget-object v3, p0, Lcom/lotecs/attendcheck/ReCheckService$3;->this$0:Lcom/lotecs/attendcheck/ReCheckService;

    invoke-virtual {v3}, Lcom/lotecs/attendcheck/ReCheckService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 295
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 296
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 261
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 262
    iget-object v0, p0, Lcom/lotecs/attendcheck/ReCheckService$3;->this$0:Lcom/lotecs/attendcheck/ReCheckService;

    invoke-static {v0}, Lcom/lotecs/attendcheck/ReCheckService;->access$200(Lcom/lotecs/attendcheck/ReCheckService;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lotecs/attendcheck/ReCheckService$3;->this$0:Lcom/lotecs/attendcheck/ReCheckService;

    invoke-static {v0}, Lcom/lotecs/attendcheck/ReCheckService;->access$200(Lcom/lotecs/attendcheck/ReCheckService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 263
    iget-object v0, p0, Lcom/lotecs/attendcheck/ReCheckService$3;->this$0:Lcom/lotecs/attendcheck/ReCheckService;

    invoke-static {v0, p1}, Lcom/lotecs/attendcheck/ReCheckService;->access$300(Lcom/lotecs/attendcheck/ReCheckService;Ljava/util/List;)Lcom/lotecs/attendcheck/domain/AttendInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 265
    iget-object p1, p0, Lcom/lotecs/attendcheck/ReCheckService$3;->this$0:Lcom/lotecs/attendcheck/ReCheckService;

    const-string v1, "O"

    invoke-static {p1, v0, v1}, Lcom/lotecs/attendcheck/ReCheckService;->access$400(Lcom/lotecs/attendcheck/ReCheckService;Lcom/lotecs/attendcheck/domain/AttendInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/lotecs/attendcheck/ReCheckService$3;->this$0:Lcom/lotecs/attendcheck/ReCheckService;

    invoke-static {v0, p1}, Lcom/lotecs/attendcheck/ReCheckService;->access$500(Lcom/lotecs/attendcheck/ReCheckService;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/lotecs/attendcheck/ReCheckService$3;->this$0:Lcom/lotecs/attendcheck/ReCheckService;

    invoke-static {v0, p1}, Lcom/lotecs/attendcheck/ReCheckService;->access$500(Lcom/lotecs/attendcheck/ReCheckService;Ljava/util/ArrayList;)V

    :goto_0
    return-void

    :array_0
    .array-data 8
        0x3e8
        0x7d0
    .end array-data
.end method
