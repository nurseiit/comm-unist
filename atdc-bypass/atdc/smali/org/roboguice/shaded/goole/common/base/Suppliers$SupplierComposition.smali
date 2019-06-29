.class Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierComposition;
.super Ljava/lang/Object;
.source "Suppliers.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/base/Supplier;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/base/Suppliers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SupplierComposition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/roboguice/shaded/goole/common/base/Supplier<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final function:Lorg/roboguice/shaded/goole/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TF;TT;>;"
        }
    .end annotation
.end field

.field final supplier:Lorg/roboguice/shaded/goole/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Supplier<",
            "TF;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/base/Function;Lorg/roboguice/shaded/goole/common/base/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TF;TT;>;",
            "Lorg/roboguice/shaded/goole/common/base/Supplier<",
            "TF;>;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierComposition;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    .line 63
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierComposition;->supplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 71
    instance-of v0, p1, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierComposition;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 72
    check-cast p1, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierComposition;

    .line 73
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierComposition;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    iget-object v2, p1, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierComposition;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-interface {v0, v2}, Lorg/roboguice/shaded/goole/common/base/Function;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierComposition;->supplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    iget-object p1, p1, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierComposition;->supplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierComposition;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierComposition;->supplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 79
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierComposition;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierComposition;->supplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suppliers.compose("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierComposition;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierComposition;->supplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
