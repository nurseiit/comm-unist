.class Lcom/google/inject/util/Providers$GuicifiedProvider;
.super Ljava/lang/Object;
.source "Providers.java"

# interfaces
.implements Lcom/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/util/Providers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GuicifiedProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/Provider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final delegate:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "TT;>;)V"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/google/inject/util/Providers$GuicifiedProvider;->delegate:Ljavax/inject/Provider;

    return-void
.end method

.method synthetic constructor <init>(Ljavax/inject/Provider;Lcom/google/inject/util/Providers$1;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/google/inject/util/Providers$GuicifiedProvider;-><init>(Ljavax/inject/Provider;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 127
    instance-of v0, p1, Lcom/google/inject/util/Providers$GuicifiedProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/util/Providers$GuicifiedProvider;->delegate:Ljavax/inject/Provider;

    check-cast p1, Lcom/google/inject/util/Providers$GuicifiedProvider;

    iget-object p1, p1, Lcom/google/inject/util/Providers$GuicifiedProvider;->delegate:Ljavax/inject/Provider;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/google/inject/util/Providers$GuicifiedProvider;->delegate:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    .line 132
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/inject/util/Providers$GuicifiedProvider;->delegate:Ljavax/inject/Provider;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "guicified("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/inject/util/Providers$GuicifiedProvider;->delegate:Ljavax/inject/Provider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
