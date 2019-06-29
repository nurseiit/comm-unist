.class Lcom/google/inject/internal/ProvisionListenerCallbackStore$KeyBinding;
.super Ljava/lang/Object;
.source "ProvisionListenerCallbackStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/ProvisionListenerCallbackStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyBinding"
.end annotation


# instance fields
.field final binding:Lcom/google/inject/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Binding<",
            "*>;"
        }
    .end annotation
.end field

.field final key:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/inject/Key;Lcom/google/inject/Binding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "*>;",
            "Lcom/google/inject/Binding<",
            "*>;)V"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/google/inject/internal/ProvisionListenerCallbackStore$KeyBinding;->key:Lcom/google/inject/Key;

    .line 116
    iput-object p2, p0, Lcom/google/inject/internal/ProvisionListenerCallbackStore$KeyBinding;->binding:Lcom/google/inject/Binding;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 121
    instance-of v0, p1, Lcom/google/inject/internal/ProvisionListenerCallbackStore$KeyBinding;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/internal/ProvisionListenerCallbackStore$KeyBinding;->key:Lcom/google/inject/Key;

    check-cast p1, Lcom/google/inject/internal/ProvisionListenerCallbackStore$KeyBinding;

    iget-object p1, p1, Lcom/google/inject/internal/ProvisionListenerCallbackStore$KeyBinding;->key:Lcom/google/inject/Key;

    invoke-virtual {v0, p1}, Lcom/google/inject/Key;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/inject/internal/ProvisionListenerCallbackStore$KeyBinding;->key:Lcom/google/inject/Key;

    invoke-virtual {v0}, Lcom/google/inject/Key;->hashCode()I

    move-result v0

    return v0
.end method
