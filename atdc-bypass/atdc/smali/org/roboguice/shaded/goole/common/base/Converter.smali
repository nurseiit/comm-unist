.class public abstract Lorg/roboguice/shaded/goole/common/base/Converter;
.super Ljava/lang/Object;
.source "Converter.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter;,
        Lorg/roboguice/shaded/goole/common/base/Converter$ConverterComposition;,
        Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/roboguice/shaded/goole/common/base/Function<",
        "TA;TB;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
.end annotation


# instance fields
.field private final handleNullAutomatically:Z

.field private transient reverse:Lorg/roboguice/shaded/goole/common/base/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Converter<",
            "TB;TA;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 103
    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/base/Converter;-><init>(Z)V

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-boolean p1, p0, Lorg/roboguice/shaded/goole/common/base/Converter;->handleNullAutomatically:Z

    return-void
.end method

.method public static identity()Lorg/roboguice/shaded/goole/common/base/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/base/Converter<",
            "TT;TT;>;"
        }
    .end annotation

    .line 386
    sget-object v0, Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter;->INSTANCE:Lorg/roboguice/shaded/goole/common/base/Converter$IdentityConverter;

    return-object v0
.end method


# virtual methods
.method public andThen(Lorg/roboguice/shaded/goole/common/base/Converter;)Lorg/roboguice/shaded/goole/common/base/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Converter<",
            "TB;TC;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Converter<",
            "TA;TC;>;"
        }
    .end annotation

    .line 288
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Converter$ConverterComposition;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/base/Converter;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/base/Converter$ConverterComposition;-><init>(Lorg/roboguice/shaded/goole/common/base/Converter;Lorg/roboguice/shaded/goole/common/base/Converter;)V

    return-object v0
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 360
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/base/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 147
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/base/Converter;->correctedDoForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convertAll(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TA;>;)",
            "Ljava/lang/Iterable<",
            "TB;>;"
        }
    .end annotation

    const-string v0, "fromIterable"

    .line 179
    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Converter$1;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/base/Converter$1;-><init>(Lorg/roboguice/shaded/goole/common/base/Converter;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method correctedDoBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 162
    iget-boolean v0, p0, Lorg/roboguice/shaded/goole/common/base/Converter;->handleNullAutomatically:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/base/Converter;->doBackward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    .line 166
    :cond_1
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/base/Converter;->doBackward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method correctedDoForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 152
    iget-boolean v0, p0, Lorg/roboguice/shaded/goole/common/base/Converter;->handleNullAutomatically:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/base/Converter;->doForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    .line 156
    :cond_1
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/base/Converter;->doForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation
.end method

.method protected abstract doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 376
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public reverse()Lorg/roboguice/shaded/goole/common/base/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/base/Converter<",
            "TB;TA;>;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Converter;->reverse:Lorg/roboguice/shaded/goole/common/base/Converter;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/base/Converter$ReverseConverter;-><init>(Lorg/roboguice/shaded/goole/common/base/Converter;)V

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Converter;->reverse:Lorg/roboguice/shaded/goole/common/base/Converter;

    :cond_0
    return-object v0
.end method
