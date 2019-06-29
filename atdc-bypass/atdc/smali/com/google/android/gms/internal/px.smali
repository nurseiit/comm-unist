.class public final Lcom/google/android/gms/internal/px;
.super Lcom/google/android/gms/internal/qi;


# instance fields
.field private final zzbYY:Lcom/google/android/gms/internal/qu;

.field private final zzccC:Lcom/google/firebase/database/ChildEventListener;

.field private final zzccD:Lcom/google/android/gms/internal/vt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/qu;Lcom/google/firebase/database/ChildEventListener;Lcom/google/android/gms/internal/vt;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/qi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/px;->zzbYY:Lcom/google/android/gms/internal/qu;

    iput-object p2, p0, Lcom/google/android/gms/internal/px;->zzccC:Lcom/google/firebase/database/ChildEventListener;

    iput-object p3, p0, Lcom/google/android/gms/internal/px;->zzccD:Lcom/google/android/gms/internal/vt;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/px;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/px;

    iget-object v0, p1, Lcom/google/android/gms/internal/px;->zzccC:Lcom/google/firebase/database/ChildEventListener;

    iget-object v1, p0, Lcom/google/android/gms/internal/px;->zzccC:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/px;->zzbYY:Lcom/google/android/gms/internal/qu;

    iget-object v1, p0, Lcom/google/android/gms/internal/px;->zzbYY:Lcom/google/android/gms/internal/qu;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/px;->zzccD:Lcom/google/android/gms/internal/vt;

    iget-object v0, p0, Lcom/google/android/gms/internal/px;->zzccD:Lcom/google/android/gms/internal/vt;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vt;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/px;->zzccC:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/px;->zzbYY:Lcom/google/android/gms/internal/qu;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/px;->zzccD:Lcom/google/android/gms/internal/vt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vt;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ChildEventRegistration"

    return-object v0
.end method

.method public final zzGH()Lcom/google/android/gms/internal/vt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/px;->zzccD:Lcom/google/android/gms/internal/vt;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/qi;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/px;

    iget-object v1, p0, Lcom/google/android/gms/internal/px;->zzbYY:Lcom/google/android/gms/internal/qu;

    iget-object v2, p0, Lcom/google/android/gms/internal/px;->zzccC:Lcom/google/firebase/database/ChildEventListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/px;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/firebase/database/ChildEventListener;Lcom/google/android/gms/internal/vt;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/vi;Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/vj;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/px;->zzbYY:Lcom/google/android/gms/internal/qu;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vi;->zzHY()Lcom/google/android/gms/internal/wp;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/qr;->zza(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/qr;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vi;->zzHW()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/xf;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vi;->zzIa()Lcom/google/android/gms/internal/wp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vi;->zzIa()Lcom/google/android/gms/internal/wp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wp;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/vj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vi;->zzHZ()Lcom/google/android/gms/internal/vl;

    move-result-object p1

    invoke-direct {v1, p1, p0, p2, v0}, Lcom/google/android/gms/internal/vj;-><init>(Lcom/google/android/gms/internal/vl;Lcom/google/android/gms/internal/qi;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    return-object v1
.end method

.method public final zza(Lcom/google/android/gms/internal/vj;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/px;->zzGW()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/py;->zzccE:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vj;->zzHZ()Lcom/google/android/gms/internal/vl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vl;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/px;->zzccC:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vj;->zzIc()Lcom/google/firebase/database/DataSnapshot;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/firebase/database/ChildEventListener;->onChildRemoved(Lcom/google/firebase/database/DataSnapshot;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/px;->zzccC:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vj;->zzIc()Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vj;->zzId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/google/firebase/database/ChildEventListener;->onChildMoved(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/px;->zzccC:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vj;->zzIc()Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vj;->zzId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/google/firebase/database/ChildEventListener;->onChildChanged(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/px;->zzccC:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vj;->zzIc()Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vj;->zzId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/google/firebase/database/ChildEventListener;->onChildAdded(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Lcom/google/firebase/database/DatabaseError;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/px;->zzccC:Lcom/google/firebase/database/ChildEventListener;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/ChildEventListener;->onCancelled(Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/vl;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vl;->zzcgS:Lcom/google/android/gms/internal/vl;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/qi;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/px;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/px;

    iget-object p1, p1, Lcom/google/android/gms/internal/px;->zzccC:Lcom/google/firebase/database/ChildEventListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/px;->zzccC:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
