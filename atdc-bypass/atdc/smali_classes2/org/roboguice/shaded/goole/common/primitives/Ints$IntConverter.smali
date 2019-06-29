.class final Lorg/roboguice/shaded/goole/common/primitives/Ints$IntConverter;
.super Lorg/roboguice/shaded/goole/common/base/Converter;
.source "Ints.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/primitives/Ints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/base/Converter<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lorg/roboguice/shaded/goole/common/primitives/Ints$IntConverter;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 341
    new-instance v0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntConverter;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntConverter;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntConverter;->INSTANCE:Lorg/roboguice/shaded/goole/common/primitives/Ints$IntConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 339
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/base/Converter;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 359
    sget-object v0, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntConverter;->INSTANCE:Lorg/roboguice/shaded/goole/common/primitives/Ints$IntConverter;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 339
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntConverter;->doBackward(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected doBackward(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 350
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected doForward(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 345
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 339
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/primitives/Ints$IntConverter;->doForward(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Ints.stringConverter()"

    return-object v0
.end method
