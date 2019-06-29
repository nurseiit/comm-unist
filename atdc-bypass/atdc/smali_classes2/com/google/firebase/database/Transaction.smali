.class public Lcom/google/firebase/database/Transaction;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/Transaction$Handler;,
        Lcom/google/firebase/database/Transaction$Result;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abort()Lcom/google/firebase/database/Transaction$Result;
    .locals 3

    new-instance v0, Lcom/google/firebase/database/Transaction$Result;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1}, Lcom/google/firebase/database/Transaction$Result;-><init>(ZLcom/google/android/gms/internal/xm;Lcom/google/firebase/database/zzt;)V

    return-object v0
.end method

.method public static success(Lcom/google/firebase/database/MutableData;)Lcom/google/firebase/database/Transaction$Result;
    .locals 3

    new-instance v0, Lcom/google/firebase/database/Transaction$Result;

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/firebase/database/Transaction$Result;-><init>(ZLcom/google/android/gms/internal/xm;Lcom/google/firebase/database/zzt;)V

    return-object v0
.end method
