.class final Lcom/google/android/gms/location/places/zzi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/gms/location/places/internal/zzag;",
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

    check-cast p1, Lcom/google/android/gms/location/places/internal/zzag;

    check-cast p2, Lcom/google/android/gms/location/places/internal/zzag;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/zzag;->getLikelihood()F

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/gms/location/places/internal/zzag;->getLikelihood()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    neg-int p1, p1

    return p1
.end method
