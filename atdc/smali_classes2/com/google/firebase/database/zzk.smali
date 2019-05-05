.class final Lcom/google/firebase/database/zzk;
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


# instance fields
.field final synthetic zzbYF:Ljava/util/Iterator;

.field final synthetic zzbZd:Lcom/google/firebase/database/MutableData;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/MutableData;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/zzk;->zzbZd:Lcom/google/firebase/database/MutableData;

    iput-object p2, p0, Lcom/google/firebase/database/zzk;->zzbYF:Ljava/util/Iterator;

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

    new-instance v0, Lcom/google/firebase/database/zzl;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/zzl;-><init>(Lcom/google/firebase/database/zzk;)V

    return-object v0
.end method
