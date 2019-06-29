.class Lroboguice/activity/RoboSplashActivity$1;
.super Ljava/lang/Object;
.source "RoboSplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lroboguice/activity/RoboSplashActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lroboguice/activity/RoboSplashActivity;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lroboguice/activity/RoboSplashActivity;J)V
    .locals 0

    .line 32
    iput-object p1, p0, Lroboguice/activity/RoboSplashActivity$1;->this$0:Lroboguice/activity/RoboSplashActivity;

    iput-wide p2, p0, Lroboguice/activity/RoboSplashActivity$1;->val$start:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 37
    iget-object v0, p0, Lroboguice/activity/RoboSplashActivity$1;->this$0:Lroboguice/activity/RoboSplashActivity;

    invoke-virtual {v0}, Lroboguice/activity/RoboSplashActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lroboguice/activity/RoboSplashActivity$1;->this$0:Lroboguice/activity/RoboSplashActivity;

    invoke-virtual {v1}, Lroboguice/activity/RoboSplashActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lroboguice/RoboGuice;->getOrCreateBaseApplicationInjector(Landroid/app/Application;)Lcom/google/inject/Injector;

    .line 41
    iget-object v1, p0, Lroboguice/activity/RoboSplashActivity$1;->this$0:Lroboguice/activity/RoboSplashActivity;

    invoke-virtual {v1, v0}, Lroboguice/activity/RoboSplashActivity;->doStuffInBackground(Landroid/app/Application;)V

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lroboguice/activity/RoboSplashActivity$1;->val$start:J

    sub-long v4, v0, v2

    .line 45
    iget-object v0, p0, Lroboguice/activity/RoboSplashActivity$1;->this$0:Lroboguice/activity/RoboSplashActivity;

    iget v0, v0, Lroboguice/activity/RoboSplashActivity;->minDisplayMs:I

    int-to-long v0, v0

    cmp-long v2, v4, v0

    if-gez v2, :cond_0

    .line 47
    :try_start_0
    iget-object v0, p0, Lroboguice/activity/RoboSplashActivity$1;->this$0:Lroboguice/activity/RoboSplashActivity;

    iget v0, v0, Lroboguice/activity/RoboSplashActivity;->minDisplayMs:I

    int-to-long v0, v0

    sub-long v2, v0, v4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 53
    :cond_0
    :goto_0
    iget-object v0, p0, Lroboguice/activity/RoboSplashActivity$1;->this$0:Lroboguice/activity/RoboSplashActivity;

    invoke-virtual {v0}, Lroboguice/activity/RoboSplashActivity;->startNextActivity()V

    .line 54
    iget-object v0, p0, Lroboguice/activity/RoboSplashActivity$1;->this$0:Lroboguice/activity/RoboSplashActivity;

    invoke-virtual {v0}, Lroboguice/activity/RoboSplashActivity;->andFinishThisOne()V

    return-void
.end method
