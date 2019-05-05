.class abstract enum Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;
.super Ljava/lang/Enum;
.source "Maps.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "EntryFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;",
        ">;",
        "Lorg/roboguice/shaded/goole/common/base/Function<",
        "Ljava/util/Map$Entry<",
        "**>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;

.field public static final enum KEY:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;

.field public static final enum VALUE:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 86
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction$1;

    const-string v1, "KEY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;->KEY:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;

    .line 93
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction$2;

    const-string v1, "VALUE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;->VALUE:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;

    const/4 v0, 0x2

    .line 85
    new-array v0, v0, [Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;->KEY:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;

    aput-object v1, v0, v2

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;->VALUE:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;

    aput-object v1, v0, v3

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;->$VALUES:[Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/roboguice/shaded/goole/common/collect/Maps$1;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;
    .locals 1

    .line 85
    const-class v0, Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;

    return-object p0
.end method

.method public static values()[Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;
    .locals 1

    .line 85
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;->$VALUES:[Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;

    invoke-virtual {v0}, [Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;

    return-object v0
.end method
