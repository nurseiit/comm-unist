.class final Lcom/google/inject/internal/ProviderMethodsModule$Signature;
.super Ljava/lang/Object;
.source "ProviderMethodsModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/ProviderMethodsModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Signature"
.end annotation


# instance fields
.field final hashCode:I

.field final name:Ljava/lang/String;

.field final parameters:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/inject/internal/ProviderMethodsModule;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/ProviderMethodsModule;Ljava/lang/reflect/Method;)V
    .locals 2

    .line 165
    iput-object p1, p0, Lcom/google/inject/internal/ProviderMethodsModule$Signature;->this$0:Lcom/google/inject/internal/ProviderMethodsModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/ProviderMethodsModule$Signature;->name:Ljava/lang/String;

    .line 172
    invoke-static {p1}, Lcom/google/inject/internal/ProviderMethodsModule;->access$000(Lcom/google/inject/internal/ProviderMethodsModule;)Lcom/google/inject/TypeLiteral;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/inject/TypeLiteral;->getParameterTypes(Ljava/lang/reflect/Member;)Ljava/util/List;

    move-result-object p1

    .line 173
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/inject/internal/ProviderMethodsModule$Signature;->parameters:[Ljava/lang/Class;

    .line 175
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/inject/TypeLiteral;

    .line 176
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethodsModule$Signature;->parameters:[Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    goto :goto_0

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/google/inject/internal/ProviderMethodsModule$Signature;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iget-object p2, p0, Lcom/google/inject/internal/ProviderMethodsModule$Signature;->parameters:[Ljava/lang/Class;

    invoke-static {p2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p2

    mul-int/lit8 p2, p2, 0x1f

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/inject/internal/ProviderMethodsModule$Signature;->hashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 182
    instance-of v0, p1, Lcom/google/inject/internal/ProviderMethodsModule$Signature;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 183
    check-cast p1, Lcom/google/inject/internal/ProviderMethodsModule$Signature;

    .line 184
    iget-object v0, p1, Lcom/google/inject/internal/ProviderMethodsModule$Signature;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/inject/internal/ProviderMethodsModule$Signature;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethodsModule$Signature;->parameters:[Ljava/lang/Class;

    iget-object p1, p1, Lcom/google/inject/internal/ProviderMethodsModule$Signature;->parameters:[Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 190
    iget v0, p0, Lcom/google/inject/internal/ProviderMethodsModule$Signature;->hashCode:I

    return v0
.end method
