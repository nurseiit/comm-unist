.class final enum Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunctionImpl;
.super Ljava/lang/Enum;
.source "Suppliers.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/base/Suppliers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SupplierFunctionImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunctionImpl;",
        ">;",
        "Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunctionImpl;

.field public static final enum INSTANCE:Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunctionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 298
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunctionImpl;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunctionImpl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunctionImpl;->INSTANCE:Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunctionImpl;

    const/4 v0, 0x1

    .line 297
    new-array v0, v0, [Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunctionImpl;

    sget-object v1, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunctionImpl;->INSTANCE:Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunctionImpl;

    aput-object v1, v0, v2

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunctionImpl;->$VALUES:[Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunctionImpl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 297
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunctionImpl;
    .locals 1

    .line 297
    const-class v0, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunctionImpl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunctionImpl;

    return-object p0
.end method

.method public static values()[Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunctionImpl;
    .locals 1

    .line 297
    sget-object v0, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunctionImpl;->$VALUES:[Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunctionImpl;

    invoke-virtual {v0}, [Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunctionImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunctionImpl;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 297
    check-cast p1, Lorg/roboguice/shaded/goole/common/base/Supplier;

    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunctionImpl;->apply(Lorg/roboguice/shaded/goole/common/base/Supplier;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/roboguice/shaded/goole/common/base/Supplier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Supplier<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 302
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Suppliers.supplierFunction()"

    return-object v0
.end method
