.class final enum Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;
.super Ljava/lang/Enum;
.source "AbstractIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/base/AbstractIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;

.field public static final enum DONE:Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;

.field public static final enum FAILED:Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;

.field public static final enum NOT_READY:Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;

.field public static final enum READY:Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 37
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;->READY:Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;

    new-instance v0, Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;

    const-string v1, "NOT_READY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;->NOT_READY:Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;

    new-instance v0, Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;

    const-string v1, "DONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;->DONE:Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;

    new-instance v0, Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;

    const-string v1, "FAILED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;->FAILED:Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;

    const/4 v0, 0x4

    .line 36
    new-array v0, v0, [Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;

    sget-object v1, Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;->READY:Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;->NOT_READY:Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;->DONE:Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;->FAILED:Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;

    aput-object v1, v0, v5

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;->$VALUES:[Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;
    .locals 1

    .line 36
    const-class v0, Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;

    return-object p0
.end method

.method public static values()[Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;
    .locals 1

    .line 36
    sget-object v0, Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;->$VALUES:[Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;

    invoke-virtual {v0}, [Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/roboguice/shaded/goole/common/base/AbstractIterator$State;

    return-object v0
.end method
