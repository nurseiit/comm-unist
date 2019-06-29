.class public final Lcom/google/android/gms/internal/no;
.super Lcom/google/android/gms/internal/nu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/nu<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/android/gms/internal/nq<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/nq<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/nu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)V

    return-void
.end method


# virtual methods
.method protected final zzFD()I
    .locals 1

    sget v0, Lcom/google/android/gms/internal/nr;->zzbZZ:I

    return v0
.end method

.method public final zzFE()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)Lcom/google/android/gms/internal/nu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/android/gms/internal/nq<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/nq<",
            "TK;TV;>;)",
            "Lcom/google/android/gms/internal/nu<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/no;->getKey()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/no;->getValue()Ljava/lang/Object;

    move-result-object p2

    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/no;->zzFG()Lcom/google/android/gms/internal/nq;

    move-result-object p3

    :cond_2
    if-nez p4, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/no;->zzFH()Lcom/google/android/gms/internal/nq;

    move-result-object p4

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/no;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)V

    return-object v0
.end method
