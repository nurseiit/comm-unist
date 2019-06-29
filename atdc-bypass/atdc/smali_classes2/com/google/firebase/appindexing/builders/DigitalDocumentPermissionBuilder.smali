.class public final Lcom/google/firebase/appindexing/builders/DigitalDocumentPermissionBuilder;
.super Lcom/google/firebase/appindexing/builders/IndexableBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/appindexing/builders/IndexableBuilder<",
        "Lcom/google/firebase/appindexing/builders/DigitalDocumentPermissionBuilder;",
        ">;"
    }
.end annotation


# static fields
.field public static final COMMENT_PERMISSION:Ljava/lang/String; = "CommentPermission"

.field public static final READ_PERMISSION:Ljava/lang/String; = "ReadPermission"

.field public static final WRITE_PERMISSION:Ljava/lang/String; = "WritePermission"


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "DigitalDocumentPermission"

    invoke-direct {p0, v0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final varargs setGrantee([Lcom/google/firebase/appindexing/builders/PersonBuilder;)Lcom/google/firebase/appindexing/builders/DigitalDocumentPermissionBuilder;
    .locals 1
    .param p1    # [Lcom/google/firebase/appindexing/builders/PersonBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "grantee"

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/appindexing/builders/DigitalDocumentPermissionBuilder;->put(Ljava/lang/String;[Lcom/google/firebase/appindexing/builders/IndexableBuilder;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/appindexing/builders/DigitalDocumentPermissionBuilder;

    return-object p1
.end method

.method public final setPermissionType(Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/DigitalDocumentPermissionBuilder;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "permissionType"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/appindexing/builders/DigitalDocumentPermissionBuilder;->put(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/appindexing/builders/DigitalDocumentPermissionBuilder;

    return-object p1
.end method
