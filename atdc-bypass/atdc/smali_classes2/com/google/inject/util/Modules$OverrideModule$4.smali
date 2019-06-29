.class Lcom/google/inject/util/Modules$OverrideModule$4;
.super Lcom/google/inject/spi/DefaultBindingScopingVisitor;
.source "Modules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/inject/util/Modules$OverrideModule;->getScopeInstanceOrNull(Lcom/google/inject/Binding;)Lcom/google/inject/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/spi/DefaultBindingScopingVisitor<",
        "Lcom/google/inject/Scope;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/util/Modules$OverrideModule;


# direct methods
.method constructor <init>(Lcom/google/inject/util/Modules$OverrideModule;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/google/inject/util/Modules$OverrideModule$4;->this$0:Lcom/google/inject/util/Modules$OverrideModule;

    invoke-direct {p0}, Lcom/google/inject/spi/DefaultBindingScopingVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitScope(Lcom/google/inject/Scope;)Lcom/google/inject/Scope;
    .locals 0

    return-object p1
.end method

.method public bridge synthetic visitScope(Lcom/google/inject/Scope;)Ljava/lang/Object;
    .locals 0

    .line 308
    invoke-virtual {p0, p1}, Lcom/google/inject/util/Modules$OverrideModule$4;->visitScope(Lcom/google/inject/Scope;)Lcom/google/inject/Scope;

    move-result-object p1

    return-object p1
.end method
