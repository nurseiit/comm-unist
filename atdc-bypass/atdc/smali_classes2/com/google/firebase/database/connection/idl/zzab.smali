.class final Lcom/google/firebase/database/connection/idl/zzab;
.super Lcom/google/firebase/database/connection/idl/zzx;


# instance fields
.field private synthetic zzccg:Lcom/google/android/gms/internal/oo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/oo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/zzab;->zzccg:Lcom/google/android/gms/internal/oo;

    invoke-direct {p0}, Lcom/google/firebase/database/connection/idl/zzx;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzab;->zzccg:Lcom/google/android/gms/internal/oo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/oo;->onDisconnect()V

    return-void
.end method

.method public final zzGb()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzab;->zzccg:Lcom/google/android/gms/internal/oo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/oo;->zzGb()V

    return-void
.end method

.method public final zzN(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzab;->zzccg:Lcom/google/android/gms/internal/oo;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/oo;->zzB(Ljava/util/Map;)V

    return-void
.end method

.method public final zza(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;ZJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "ZJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzab;->zzccg:Lcom/google/android/gms/internal/oo;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p4, p5}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzar(J)Ljava/lang/Long;

    move-result-object p4

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/oo;->zza(Ljava/util/List;Ljava/lang/Object;ZLjava/lang/Long;)V

    return-void
.end method

.method public final zza(Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/connection/idl/zzak;",
            ">;",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "J)V"
        }
    .end annotation

    invoke-static {p3}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/connection/idl/zzak;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/database/connection/idl/zzak;->zza(Lcom/google/firebase/database/connection/idl/zzak;Ljava/lang/Object;)Lcom/google/android/gms/internal/pe;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/firebase/database/connection/idl/zzab;->zzccg:Lcom/google/android/gms/internal/oo;

    invoke-static {p4, p5}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->zzar(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p1, v0, p3}, Lcom/google/android/gms/internal/oo;->zza(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;)V

    return-void
.end method

.method public final zzaB(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzab;->zzccg:Lcom/google/android/gms/internal/oo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/oo;->zzaB(Z)V

    return-void
.end method
