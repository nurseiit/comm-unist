.class Lcom/google/inject/spi/InjectionPoint$Signature;
.super Ljava/lang/Object;
.source "InjectionPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/spi/InjectionPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Signature"
.end annotation


# instance fields
.field final hash:I

.field final name:Ljava/lang/String;

.field final parameterTypes:[Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 4

    .line 875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 876
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/spi/InjectionPoint$Signature;->name:Ljava/lang/String;

    .line 877
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/spi/InjectionPoint$Signature;->parameterTypes:[Ljava/lang/Class;

    .line 879
    iget-object p1, p0, Lcom/google/inject/spi/InjectionPoint$Signature;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    mul-int/lit8 p1, p1, 0x1f

    .line 880
    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint$Signature;->parameterTypes:[Ljava/lang/Class;

    array-length v0, v0

    add-int/2addr p1, v0

    .line 881
    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint$Signature;->parameterTypes:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    mul-int/lit8 p1, p1, 0x1f

    .line 882
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 884
    :cond_0
    iput p1, p0, Lcom/google/inject/spi/InjectionPoint$Signature;->hash:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 892
    instance-of v0, p1, Lcom/google/inject/spi/InjectionPoint$Signature;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 896
    :cond_0
    check-cast p1, Lcom/google/inject/spi/InjectionPoint$Signature;

    .line 897
    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint$Signature;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/inject/spi/InjectionPoint$Signature;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 901
    :cond_1
    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint$Signature;->parameterTypes:[Ljava/lang/Class;

    array-length v0, v0

    iget-object v2, p1, Lcom/google/inject/spi/InjectionPoint$Signature;->parameterTypes:[Ljava/lang/Class;

    array-length v2, v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    .line 905
    :goto_0
    iget-object v2, p0, Lcom/google/inject/spi/InjectionPoint$Signature;->parameterTypes:[Ljava/lang/Class;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 906
    iget-object v2, p0, Lcom/google/inject/spi/InjectionPoint$Signature;->parameterTypes:[Ljava/lang/Class;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/google/inject/spi/InjectionPoint$Signature;->parameterTypes:[Ljava/lang/Class;

    aget-object v3, v3, v0

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 888
    iget v0, p0, Lcom/google/inject/spi/InjectionPoint$Signature;->hash:I

    return v0
.end method
