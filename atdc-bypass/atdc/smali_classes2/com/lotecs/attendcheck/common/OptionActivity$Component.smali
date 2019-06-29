.class Lcom/lotecs/attendcheck/common/OptionActivity$Component;
.super Ljava/lang/Object;
.source "OptionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lotecs/attendcheck/common/OptionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Component"
.end annotation


# instance fields
.field private caption:Ljava/lang/String;

.field private state:Z

.field final synthetic this$0:Lcom/lotecs/attendcheck/common/OptionActivity;

.field private title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/common/OptionActivity;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/OptionActivity$Component;->this$0:Lcom/lotecs/attendcheck/common/OptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaption()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/OptionActivity$Component;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/OptionActivity$Component;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isState()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/lotecs/attendcheck/common/OptionActivity$Component;->state:Z

    return v0
.end method

.method public setCaption(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/OptionActivity$Component;->caption:Ljava/lang/String;

    return-void
.end method

.method public setState(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lcom/lotecs/attendcheck/common/OptionActivity$Component;->state:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/OptionActivity$Component;->title:Ljava/lang/String;

    return-void
.end method
