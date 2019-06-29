.class final Lcom/google/firebase/database/zzi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/google/firebase/database/MutableData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/firebase/database/MutableData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/firebase/database/MutableData;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/database/zzj;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/zzj;-><init>(Lcom/google/firebase/database/zzi;)V

    return-object v0
.end method
