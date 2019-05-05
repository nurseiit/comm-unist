.class final Lcom/google/android/gms/internal/rc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/pf;


# instance fields
.field private synthetic zzccH:Lcom/google/android/gms/internal/qr;

.field private synthetic zzcdA:Lcom/google/android/gms/internal/qu;

.field private synthetic zzcdH:Ljava/util/List;

.field private synthetic zzcdI:Lcom/google/android/gms/internal/qu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;Ljava/util/List;Lcom/google/android/gms/internal/qu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rc;->zzcdA:Lcom/google/android/gms/internal/qu;

    iput-object p2, p0, Lcom/google/android/gms/internal/rc;->zzccH:Lcom/google/android/gms/internal/qr;

    iput-object p3, p0, Lcom/google/android/gms/internal/rc;->zzcdH:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/rc;->zzcdI:Lcom/google/android/gms/internal/qu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaa(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/qu;->zzac(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/rc;->zzcdA:Lcom/google/android/gms/internal/qu;

    const-string v0, "Transaction"

    iget-object v1, p0, Lcom/google/android/gms/internal/rc;->zzccH:Lcom/google/android/gms/internal/qr;

    invoke-static {p2, v0, v1, p1}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/android/gms/internal/qu;Ljava/lang/String;Lcom/google/android/gms/internal/qr;Lcom/google/firebase/database/DatabaseError;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/rc;->zzcdH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/rv;

    sget v2, Lcom/google/android/gms/internal/rw;->zzcem:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/rv;->zza(Lcom/google/android/gms/internal/rv;I)I

    iget-object v2, p0, Lcom/google/android/gms/internal/rc;->zzcdA:Lcom/google/android/gms/internal/qu;

    invoke-static {v2}, Lcom/google/android/gms/internal/qu;->zzg(Lcom/google/android/gms/internal/qu;)Lcom/google/android/gms/internal/so;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/internal/rv;->zzb(Lcom/google/android/gms/internal/rv;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/rc;->zzcdA:Lcom/google/android/gms/internal/qu;

    invoke-static {v2}, Lcom/google/android/gms/internal/qu;->zzh(Lcom/google/android/gms/internal/qu;)Lcom/google/android/gms/internal/yz;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/so;->zza(JZZLcom/google/android/gms/internal/ys;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/google/android/gms/internal/rv;->zzg(Lcom/google/android/gms/internal/rv;)Lcom/google/android/gms/internal/xm;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/rc;->zzcdI:Lcom/google/android/gms/internal/qu;

    invoke-static {v1}, Lcom/google/android/gms/internal/rv;->zze(Lcom/google/android/gms/internal/rv;)Lcom/google/android/gms/internal/qr;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/gms/internal/xf;->zzj(Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/xf;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/rd;

    invoke-direct {v3, p0, v1, v2}, Lcom/google/android/gms/internal/rd;-><init>(Lcom/google/android/gms/internal/rc;Lcom/google/android/gms/internal/rv;Lcom/google/firebase/database/DataSnapshot;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/gms/internal/rc;->zzcdA:Lcom/google/android/gms/internal/qu;

    new-instance v3, Lcom/google/android/gms/internal/to;

    iget-object v4, p0, Lcom/google/android/gms/internal/rc;->zzcdA:Lcom/google/android/gms/internal/qu;

    invoke-static {v1}, Lcom/google/android/gms/internal/rv;->zzi(Lcom/google/android/gms/internal/rv;)Lcom/google/firebase/database/ValueEventListener;

    move-result-object v5

    invoke-static {v1}, Lcom/google/android/gms/internal/rv;->zze(Lcom/google/android/gms/internal/rv;)Lcom/google/android/gms/internal/qr;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/vt;->zzM(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/vt;

    move-result-object v1

    invoke-direct {v3, v4, v5, v1}, Lcom/google/android/gms/internal/to;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/vt;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/qu;->zze(Lcom/google/android/gms/internal/qi;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/rc;->zzcdA:Lcom/google/android/gms/internal/qu;

    iget-object v1, p0, Lcom/google/android/gms/internal/rc;->zzcdA:Lcom/google/android/gms/internal/qu;

    invoke-static {v1}, Lcom/google/android/gms/internal/qu;->zzi(Lcom/google/android/gms/internal/qu;)Lcom/google/android/gms/internal/vb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/rc;->zzccH:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/vb;->zzK(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/vb;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/qu;->zzb(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/vb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/rc;->zzcdA:Lcom/google/android/gms/internal/qu;

    invoke-static {v0}, Lcom/google/android/gms/internal/qu;->zzj(Lcom/google/android/gms/internal/qu;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/rc;->zzcdI:Lcom/google/android/gms/internal/qu;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/android/gms/internal/qu;Ljava/util/List;)V

    const/4 p2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/rc;->zzcdA:Lcom/google/android/gms/internal/qu;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qu;->zzo(Ljava/lang/Runnable;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/rc;->zzcdH:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/rv;

    invoke-static {p2}, Lcom/google/android/gms/internal/rv;->zzc(Lcom/google/android/gms/internal/rv;)I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/rw;->zzcen:I

    if-ne v0, v1, :cond_3

    sget v0, Lcom/google/android/gms/internal/rw;->zzceo:I

    :goto_3
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/rv;->zza(Lcom/google/android/gms/internal/rv;I)I

    goto :goto_2

    :cond_3
    sget v0, Lcom/google/android/gms/internal/rw;->zzcek:I

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/internal/rc;->zzcdH:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/rv;

    sget v1, Lcom/google/android/gms/internal/rw;->zzceo:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/rv;->zza(Lcom/google/android/gms/internal/rv;I)I

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/rv;->zza(Lcom/google/android/gms/internal/rv;Lcom/google/firebase/database/DatabaseError;)Lcom/google/firebase/database/DatabaseError;

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/rc;->zzcdA:Lcom/google/android/gms/internal/qu;

    iget-object p2, p0, Lcom/google/android/gms/internal/rc;->zzccH:Lcom/google/android/gms/internal/qr;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/qu;->zzb(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;

    return-void
.end method
