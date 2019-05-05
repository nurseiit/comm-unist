.class Lcom/lotecs/attendcheck/student/AttendActivity$3;
.super Ljava/lang/Object;
.source "AttendActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lotecs/attendcheck/student/AttendActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/student/AttendActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$3;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    iput-object p2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$3;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 291
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$3;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 293
    iget-object p2, p0, Lcom/lotecs/attendcheck/student/AttendActivity$3;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-static {p2}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$900(Lcom/lotecs/attendcheck/student/AttendActivity;)Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lotecs/attendcheck/domain/AttendInfo;

    .line 294
    invoke-virtual {p2, p1}, Lcom/lotecs/attendcheck/domain/AttendInfo;->setMac(Ljava/lang/String;)V

    .line 296
    iget-object p1, p0, Lcom/lotecs/attendcheck/student/AttendActivity$3;->this$0:Lcom/lotecs/attendcheck/student/AttendActivity;

    const-string v0, "3"

    invoke-static {p1, p2, v0}, Lcom/lotecs/attendcheck/student/AttendActivity;->access$500(Lcom/lotecs/attendcheck/student/AttendActivity;Lcom/lotecs/attendcheck/domain/AttendInfo;Ljava/lang/String;)V

    return-void
.end method
