.class final Lcom/google/inject/internal/ProvisionListenerStackCallback;
.super Ljava/lang/Object;
.source "ProvisionListenerStackCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;,
        Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EMPTY_CALLBACK:Lcom/google/inject/internal/ProvisionListenerStackCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ProvisionListenerStackCallback<",
            "*>;"
        }
    .end annotation
.end field

.field private static final EMPTY_LISTENER:[Lcom/google/inject/spi/ProvisionListener;


# instance fields
.field private final binding:Lcom/google/inject/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Binding<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final listeners:[Lcom/google/inject/spi/ProvisionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    .line 36
    new-array v0, v0, [Lcom/google/inject/spi/ProvisionListener;

    sput-object v0, Lcom/google/inject/internal/ProvisionListenerStackCallback;->EMPTY_LISTENER:[Lcom/google/inject/spi/ProvisionListener;

    .line 38
    new-instance v0, Lcom/google/inject/internal/ProvisionListenerStackCallback;

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/inject/internal/ProvisionListenerStackCallback;-><init>(Lcom/google/inject/Binding;Ljava/util/List;)V

    sput-object v0, Lcom/google/inject/internal/ProvisionListenerStackCallback;->EMPTY_CALLBACK:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    return-void
.end method

.method public constructor <init>(Lcom/google/inject/Binding;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binding<",
            "TT;>;",
            "Ljava/util/List<",
            "Lcom/google/inject/spi/ProvisionListener;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback;->binding:Lcom/google/inject/Binding;

    .line 51
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    sget-object p1, Lcom/google/inject/internal/ProvisionListenerStackCallback;->EMPTY_LISTENER:[Lcom/google/inject/spi/ProvisionListener;

    iput-object p1, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback;->listeners:[Lcom/google/inject/spi/ProvisionListener;

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/collect/Sets;->newLinkedHashSet(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object p1

    .line 55
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p2

    new-array p2, p2, [Lcom/google/inject/spi/ProvisionListener;

    invoke-interface {p1, p2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/inject/spi/ProvisionListener;

    iput-object p1, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback;->listeners:[Lcom/google/inject/spi/ProvisionListener;

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/google/inject/internal/ProvisionListenerStackCallback;)[Lcom/google/inject/spi/ProvisionListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback;->listeners:[Lcom/google/inject/spi/ProvisionListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/inject/internal/ProvisionListenerStackCallback;)Lcom/google/inject/Binding;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback;->binding:Lcom/google/inject/Binding;

    return-object p0
.end method

.method public static emptyListener()Lcom/google/inject/internal/ProvisionListenerStackCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/inject/internal/ProvisionListenerStackCallback<",
            "TT;>;"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/google/inject/internal/ProvisionListenerStackCallback;->EMPTY_CALLBACK:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    return-object v0
.end method


# virtual methods
.method public hasListeners()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback;->listeners:[Lcom/google/inject/spi/ProvisionListener;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public provision(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;-><init>(Lcom/google/inject/internal/ProvisionListenerStackCallback;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback;)V

    .line 68
    :try_start_0
    invoke-virtual {v0}, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->provision()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 73
    :goto_0
    iget-object p3, v0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->exceptionDuringProvision:Lcom/google/inject/internal/ErrorsException;

    if-eqz p3, :cond_0

    .line 74
    iget-object p1, v0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->exceptionDuringProvision:Lcom/google/inject/internal/ErrorsException;

    throw p1

    :cond_0
    if-eqz p2, :cond_2

    .line 76
    iget-object p3, v0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->erredListener:Lcom/google/inject/spi/ProvisionListener;

    if-eqz p3, :cond_1

    iget-object p3, v0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->erredListener:Lcom/google/inject/spi/ProvisionListener;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    goto :goto_1

    :cond_1
    const-string p3, "(unknown)"

    :goto_1
    const-string v0, "Error notifying ProvisionListener %s of %s.%n Reason: %s"

    const/4 v1, 0x3

    .line 78
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 p3, 0x1

    iget-object v2, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback;->binding:Lcom/google/inject/Binding;

    invoke-interface {v2}, Lcom/google/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    aput-object v2, v1, p3

    const/4 p3, 0x2

    aput-object p2, v1, p3

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/inject/internal/Errors;->errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1

    .line 83
    :cond_2
    iget-object p1, v0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->result:Ljava/lang/Object;

    return-object p1
.end method
