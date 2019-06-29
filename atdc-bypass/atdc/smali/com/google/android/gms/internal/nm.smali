.class public final Lcom/google/android/gms/internal/nm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzbZV:Lcom/google/android/gms/internal/nh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nh<",
            "TT;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/nh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/nh<",
            "TT;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nm;->zzbZV:Lcom/google/android/gms/internal/nh;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ni;->zzFA()Lcom/google/android/gms/internal/nk;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ni;->zzb(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/nk;Ljava/util/Comparator;)Lcom/google/android/gms/internal/nh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/nm;->zzbZV:Lcom/google/android/gms/internal/nh;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/nm;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/nm;

    iget-object v0, p0, Lcom/google/android/gms/internal/nm;->zzbZV:Lcom/google/android/gms/internal/nh;

    iget-object p1, p1, Lcom/google/android/gms/internal/nm;->zzbZV:Lcom/google/android/gms/internal/nh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/nh;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nm;->zzbZV:Lcom/google/android/gms/internal/nh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nh;->hashCode()I

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/nn;

    iget-object v1, p0, Lcom/google/android/gms/internal/nm;->zzbZV:Lcom/google/android/gms/internal/nh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nh;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nn;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final zzFB()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nm;->zzbZV:Lcom/google/android/gms/internal/nh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nh;->zzFx()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzFC()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nm;->zzbZV:Lcom/google/android/gms/internal/nh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nh;->zzFy()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzFz()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/nn;

    iget-object v1, p0, Lcom/google/android/gms/internal/nm;->zzbZV:Lcom/google/android/gms/internal/nh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nh;->zzFz()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nn;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final zzac(Ljava/lang/Object;)Lcom/google/android/gms/internal/nm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/android/gms/internal/nm<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nm;->zzbZV:Lcom/google/android/gms/internal/nh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/nh;->zzX(Ljava/lang/Object;)Lcom/google/android/gms/internal/nh;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/nm;->zzbZV:Lcom/google/android/gms/internal/nh;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/nm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/nm;-><init>(Lcom/google/android/gms/internal/nh;)V

    return-object v0
.end method

.method public final zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/nm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/android/gms/internal/nm<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/nm;

    iget-object v1, p0, Lcom/google/android/gms/internal/nm;->zzbZV:Lcom/google/android/gms/internal/nh;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/nh;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/nh;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/nm;-><init>(Lcom/google/android/gms/internal/nh;)V

    return-object v0
.end method

.method public final zzae(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nm;->zzbZV:Lcom/google/android/gms/internal/nh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/nh;->zzY(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
