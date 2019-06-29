.class public final Lcom/google/firebase/appindexing/builders/DigitalDocumentBuilder;
.super Lcom/google/firebase/appindexing/builders/IndexableBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/appindexing/builders/IndexableBuilder<",
        "Lcom/google/firebase/appindexing/builders/DigitalDocumentBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "DigitalDocument"

    invoke-direct {p0, v0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final varargs setAuthor([Lcom/google/firebase/appindexing/builders/PersonBuilder;)Lcom/google/firebase/appindexing/builders/DigitalDocumentBuilder;
    .locals 1
    .param p1    # [Lcom/google/firebase/appindexing/builders/PersonBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "author"

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/appindexing/builders/DigitalDocumentBuilder;->put(Ljava/lang/String;[Lcom/google/firebase/appindexing/builders/IndexableBuilder;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/appindexing/builders/DigitalDocumentBuilder;

    return-object p1
.end method

.method public final setDateCreated(Ljava/util/Date;)Lcom/google/firebase/appindexing/builders/DigitalDocumentBuilder;
    .locals 4
    .param p1    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "dateCreated"

    const/4 v1, 0x1

    new-array v1, v1, [J

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const/4 p1, 0x0

    aput-wide v2, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/appindexing/builders/DigitalDocumentBuilder;->put(Ljava/lang/String;[J)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/appindexing/builders/DigitalDocumentBuilder;

    return-object p1
.end method

.method public final setDateModified(Ljava/util/Date;)Lcom/google/firebase/appindexing/builders/DigitalDocumentBuilder;
    .locals 4
    .param p1    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "dateModified"

    const/4 v1, 0x1

    new-array v1, v1, [J

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const/4 p1, 0x0

    aput-wide v2, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/appindexing/builders/DigitalDocumentBuilder;->put(Ljava/lang/String;[J)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/appindexing/builders/DigitalDocumentBuilder;

    return-object p1
.end method

.method public final varargs setHasDigitalDocumentPermission([Lcom/google/firebase/appindexing/builders/DigitalDocumentPermissionBuilder;)Lcom/google/firebase/appindexing/builders/DigitalDocumentBuilder;
    .locals 1
    .param p1    # [Lcom/google/firebase/appindexing/builders/DigitalDocumentPermissionBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "hasDigitalDocumentPermission"

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/appindexing/builders/DigitalDocumentBuilder;->put(Ljava/lang/String;[Lcom/google/firebase/appindexing/builders/IndexableBuilder;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/appindexing/builders/DigitalDocumentBuilder;

    return-object p1
.end method

.method public final setText(Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/DigitalDocumentBuilder;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "text"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/appindexing/builders/DigitalDocumentBuilder;->put(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/appindexing/builders/DigitalDocumentBuilder;

    return-object p1
.end method
