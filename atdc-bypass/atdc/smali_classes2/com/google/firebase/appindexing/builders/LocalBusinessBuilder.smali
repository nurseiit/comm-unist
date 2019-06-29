.class public final Lcom/google/firebase/appindexing/builders/LocalBusinessBuilder;
.super Lcom/google/firebase/appindexing/builders/IndexableBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/appindexing/builders/IndexableBuilder<",
        "Lcom/google/firebase/appindexing/builders/LocalBusinessBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "LocalBusiness"

    invoke-direct {p0, v0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final setAddress(Lcom/google/firebase/appindexing/builders/PostalAddressBuilder;)Lcom/google/firebase/appindexing/builders/LocalBusinessBuilder;
    .locals 3
    .param p1    # Lcom/google/firebase/appindexing/builders/PostalAddressBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "address"

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/firebase/appindexing/builders/PostalAddressBuilder;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/appindexing/builders/LocalBusinessBuilder;->put(Ljava/lang/String;[Lcom/google/firebase/appindexing/builders/IndexableBuilder;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/appindexing/builders/LocalBusinessBuilder;

    return-object p1
.end method

.method public final setAggregateRating(Lcom/google/firebase/appindexing/builders/AggregateRatingBuilder;)Lcom/google/firebase/appindexing/builders/LocalBusinessBuilder;
    .locals 3
    .param p1    # Lcom/google/firebase/appindexing/builders/AggregateRatingBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "aggregateRating"

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/firebase/appindexing/builders/AggregateRatingBuilder;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/appindexing/builders/LocalBusinessBuilder;->put(Ljava/lang/String;[Lcom/google/firebase/appindexing/builders/IndexableBuilder;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/appindexing/builders/LocalBusinessBuilder;

    return-object p1
.end method

.method public final setGeo(Lcom/google/firebase/appindexing/builders/GeoShapeBuilder;)Lcom/google/firebase/appindexing/builders/LocalBusinessBuilder;
    .locals 3
    .param p1    # Lcom/google/firebase/appindexing/builders/GeoShapeBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "geo"

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/firebase/appindexing/builders/GeoShapeBuilder;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/appindexing/builders/LocalBusinessBuilder;->put(Ljava/lang/String;[Lcom/google/firebase/appindexing/builders/IndexableBuilder;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/appindexing/builders/LocalBusinessBuilder;

    return-object p1
.end method

.method public final setPriceRange(Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/LocalBusinessBuilder;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "priceRange"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/appindexing/builders/LocalBusinessBuilder;->put(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/appindexing/builders/LocalBusinessBuilder;

    return-object p1
.end method

.method public final setTelephone(Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/LocalBusinessBuilder;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "telephone"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/appindexing/builders/LocalBusinessBuilder;->put(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/appindexing/builders/LocalBusinessBuilder;

    return-object p1
.end method
