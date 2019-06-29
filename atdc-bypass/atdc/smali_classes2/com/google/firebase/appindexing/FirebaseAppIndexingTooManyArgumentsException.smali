.class public Lcom/google/firebase/appindexing/FirebaseAppIndexingTooManyArgumentsException;
.super Lcom/google/firebase/appindexing/FirebaseAppIndexingException;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Too many Indexables provided. Try splitting them in batches."

    invoke-direct {p0, v0}, Lcom/google/firebase/appindexing/FirebaseAppIndexingException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/google/firebase/appindexing/FirebaseAppIndexingException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/appindexing/FirebaseAppIndexingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
