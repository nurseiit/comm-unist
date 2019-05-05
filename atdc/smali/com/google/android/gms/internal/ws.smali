.class final Lcom/google/android/gms/internal/ws;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/gms/internal/wp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/wp;

    check-cast p2, Lcom/google/android/gms/internal/wp;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/wp;->zzi(Lcom/google/android/gms/internal/wp;)I

    move-result p1

    return p1
.end method
