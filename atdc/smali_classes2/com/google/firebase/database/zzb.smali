.class final Lcom/google/firebase/database/zzb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/firebase/database/DataSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbYH:Lcom/google/firebase/database/zza;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/zzb;->zzbYH:Lcom/google/firebase/database/zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/zzb;->zzbYH:Lcom/google/firebase/database/zza;

    iget-object v0, v0, Lcom/google/firebase/database/zza;->zzbYF:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/zzb;->zzbYH:Lcom/google/firebase/database/zza;

    iget-object v0, v0, Lcom/google/firebase/database/zza;->zzbYF:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xl;

    new-instance v1, Lcom/google/firebase/database/DataSnapshot;

    iget-object v2, p0, Lcom/google/firebase/database/zzb;->zzbYH:Lcom/google/firebase/database/zza;

    iget-object v2, v2, Lcom/google/firebase/database/zza;->zzbYG:Lcom/google/firebase/database/DataSnapshot;

    invoke-static {v2}, Lcom/google/firebase/database/DataSnapshot;->zza(Lcom/google/firebase/database/DataSnapshot;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/wp;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xl;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/xf;->zzj(Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/DataSnapshot;-><init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/xf;)V

    return-object v1
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove called on immutable collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
