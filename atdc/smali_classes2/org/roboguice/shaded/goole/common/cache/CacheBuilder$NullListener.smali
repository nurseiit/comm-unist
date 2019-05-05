.class final enum Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;
.super Ljava/lang/Enum;
.source "CacheBuilder.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/cache/RemovalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NullListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;",
        ">;",
        "Lorg/roboguice/shaded/goole/common/cache/RemovalListener<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;

.field public static final enum INSTANCE:Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 192
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;->INSTANCE:Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;

    const/4 v0, 0x1

    .line 191
    new-array v0, v0, [Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;->INSTANCE:Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;

    aput-object v1, v0, v2

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;->$VALUES:[Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 191
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;
    .locals 1

    .line 191
    const-class v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;

    return-object p0
.end method

.method public static values()[Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;
    .locals 1

    .line 191
    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;->$VALUES:[Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;

    invoke-virtual {v0}, [Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;

    return-object v0
.end method


# virtual methods
.method public onRemoval(Lorg/roboguice/shaded/goole/common/cache/RemovalNotification;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/RemovalNotification<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
