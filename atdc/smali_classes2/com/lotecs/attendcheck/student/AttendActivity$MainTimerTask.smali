.class Lcom/lotecs/attendcheck/student/AttendActivity$MainTimerTask;
.super Ljava/util/TimerTask;
.source "AttendActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lotecs/attendcheck/student/AttendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainTimerTask"
.end annotation


# instance fields
.field private cases:I

.field final synthetic this$0:Lcom/lotecs/attendcheck/student/AttendActivity;


# direct methods
.method public constructor <init>(Lcom/lotecs/attendcheck/student/AttendActivity;I)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$MainTimerTask;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 226
    iput p2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$MainTimerTask;->cases:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 231
    iget v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$MainTimerTask;->cases:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$MainTimerTask;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$700(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$MainTimerTask;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$800(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$MainTimerTask;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$700(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$MainTimerTask;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v1}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$600(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
