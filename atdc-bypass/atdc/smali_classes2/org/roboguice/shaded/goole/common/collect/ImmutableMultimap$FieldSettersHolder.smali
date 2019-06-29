.class Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$FieldSettersHolder;
.super Ljava/lang/Object;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FieldSettersHolder"
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
    value = "java serialization is not supported"
.end annotation


# static fields
.field static final EMPTY_SET_FIELD_SETTER:Lorg/roboguice/shaded/goole/common/collect/Serialization$FieldSetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/Serialization$FieldSetter<",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;",
            ">;"
        }
    .end annotation
.end field

.field static final MAP_FIELD_SETTER:Lorg/roboguice/shaded/goole/common/collect/Serialization$FieldSetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/Serialization$FieldSetter<",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;",
            ">;"
        }
    .end annotation
.end field

.field static final SIZE_FIELD_SETTER:Lorg/roboguice/shaded/goole/common/collect/Serialization$FieldSetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/Serialization$FieldSetter<",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 310
    const-class v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;

    const-string v1, "map"

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Serialization;->getFieldSetter(Ljava/lang/Class;Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/collect/Serialization$FieldSetter;

    move-result-object v0

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$FieldSettersHolder;->MAP_FIELD_SETTER:Lorg/roboguice/shaded/goole/common/collect/Serialization$FieldSetter;

    .line 313
    const-class v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;

    const-string v1, "size"

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Serialization;->getFieldSetter(Ljava/lang/Class;Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/collect/Serialization$FieldSetter;

    move-result-object v0

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$FieldSettersHolder;->SIZE_FIELD_SETTER:Lorg/roboguice/shaded/goole/common/collect/Serialization$FieldSetter;

    .line 316
    const-class v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;

    const-string v1, "emptySet"

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Serialization;->getFieldSetter(Ljava/lang/Class;Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/collect/Serialization$FieldSetter;

    move-result-object v0

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$FieldSettersHolder;->EMPTY_SET_FIELD_SETTER:Lorg/roboguice/shaded/goole/common/collect/Serialization$FieldSetter;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
