.class Lcom/lotecs/attendcheck/common/IntroActivity$1;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Lcom/lotecs/attendcheck/common/GCMManager$OnRegistrationIDCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lotecs/attendcheck/common/IntroActivity;->checkRegistrationGCM(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lotecs/attendcheck/common/IntroActivity;


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/common/IntroActivity;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/IntroActivity$1;->this$0:Lcom/lotecs/attendcheck/common/IntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registrationFailed(Ljava/lang/String;)V
    .locals 1

    .line 61
    sget-object v0, Lcom/lotecs/attendcheck/common/IntroActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/IntroActivity$1;->this$0:Lcom/lotecs/attendcheck/common/IntroActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/lotecs/attendcheck/common/IntroActivity;->access$100(Lcom/lotecs/attendcheck/common/IntroActivity;I)V

    return-void
.end method

.method public registrationSuccess(Ljava/lang/String;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/IntroActivity$1;->this$0:Lcom/lotecs/attendcheck/common/IntroActivity;

    invoke-static {v0, p1}, Lcom/lotecs/attendcheck/common/IntroActivity;->access$000(Lcom/lotecs/attendcheck/common/IntroActivity;Ljava/lang/String;)V

    return-void
.end method
