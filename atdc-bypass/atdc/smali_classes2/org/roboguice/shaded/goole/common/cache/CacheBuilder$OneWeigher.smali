.class final enum Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;
.super Ljava/lang/Enum;
.source "CacheBuilder.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/cache/Weigher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "OneWeigher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;",
        ">;",
        "Lorg/roboguice/shaded/goole/common/cache/Weigher<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;

.field public static final enum INSTANCE:Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 199
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;->INSTANCE:Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;

    const/4 v0, 0x1

    .line 198
    new-array v0, v0, [Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;->INSTANCE:Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;

    aput-object v1, v0, v2

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;->$VALUES:[Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 198
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;
    .locals 1

    .line 198
    const-class v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;

    return-object p0
.end method

.method public static values()[Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;
    .locals 1

    .line 198
    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;->$VALUES:[Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;

    invoke-virtual {v0}, [Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;

    return-object v0
.end method


# virtual methods
.method public weigh(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
