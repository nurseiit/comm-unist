.class Lcom/lotecs/attendcheck/student/AttendActivity$1;
.super Ljava/lang/Object;
.source "AttendActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lotecs/attendcheck/student/AttendActivity;
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

    .line 174
    iput-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$1;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/lotecs/attendcheck/student/AttendActivity$1;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$000(Lcom/lotecs/attendcheck/student/AttendActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "HH:mm:ss"

    invoke-static {v1}, Lcom/lotecs/util/DateUtil;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
