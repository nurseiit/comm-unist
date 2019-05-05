.class final Lcom/google/android/gms/internal/tf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/om;
.implements Lcom/google/android/gms/internal/td;


# instance fields
.field private synthetic zzceR:Lcom/google/android/gms/internal/so;

.field private final zzcfe:Lcom/google/android/gms/internal/vu;

.field private final zzcff:Lcom/google/android/gms/internal/th;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/vu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/tf;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/tf;->zzcfe:Lcom/google/android/gms/internal/vu;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vu;->zzIv()Lcom/google/android/gms/internal/vt;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/th;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/tf;->zzcff:Lcom/google/android/gms/internal/th;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/tf;)Lcom/google/android/gms/internal/th;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/tf;->zzcff:Lcom/google/android/gms/internal/th;

    return-object p0
.end method


# virtual methods
.method public final zzFY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/tf;->zzcfe:Lcom/google/android/gms/internal/vu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vu;->zzIw()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->zzIP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzFZ()Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/tf;->zzcfe:Lcom/google/android/gms/internal/vu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vu;->zzIw()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/yy;->zzn(Lcom/google/android/gms/internal/xm;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzGa()Lcom/google/android/gms/internal/oc;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/tf;->zzcfe:Lcom/google/android/gms/internal/vu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vu;->zzIw()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ww;->zzh(Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/ww;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ww;->zzFR()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/qr;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/qr;->zzHb()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/oc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ww;->zzFS()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/oc;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public final zzb(Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/DatabaseError;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/vk;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/tf;->zzcfe:Lcom/google/android/gms/internal/vu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vu;->zzIv()Lcom/google/android/gms/internal/vt;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/tf;->zzcff:Lcom/google/android/gms/internal/th;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/tf;->zzceR:Lcom/google/android/gms/internal/so;

    iget-object v0, p0, Lcom/google/android/gms/internal/tf;->zzcff:Lcom/google/android/gms/internal/th;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/th;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/tf;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/so;->zzs(Lcom/google/android/gms/internal/qr;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/tf;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v0}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/wl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/tf;->zzcfe:Lcom/google/android/gms/internal/vu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vu;->zzIv()Lcom/google/android/gms/internal/vt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Listen at "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/wl;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/tf;->zzceR:Lcom/google/android/gms/internal/so;

    iget-object v1, p0, Lcom/google/android/gms/internal/tf;->zzcfe:Lcom/google/android/gms/internal/vu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vu;->zzIv()Lcom/google/android/gms/internal/vt;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/vt;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
