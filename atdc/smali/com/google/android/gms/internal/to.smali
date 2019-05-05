.class public final Lcom/google/android/gms/internal/to;
.super Lcom/google/android/gms/internal/qi;


# instance fields
.field private final zzbYY:Lcom/google/android/gms/internal/qu;

.field private final zzccD:Lcom/google/android/gms/internal/vt;

.field private final zzcfr:Lcom/google/firebase/database/ValueEventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/qu;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/vt;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/qi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/to;->zzbYY:Lcom/google/android/gms/internal/qu;

    iput-object p2, p0, Lcom/google/android/gms/internal/to;->zzcfr:Lcom/google/firebase/database/ValueEventListener;

    iput-object p3, p0, Lcom/google/android/gms/internal/to;->zzccD:Lcom/google/android/gms/internal/vt;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/to;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/to;

    iget-object v0, p1, Lcom/google/android/gms/internal/to;->zzcfr:Lcom/google/firebase/database/ValueEventListener;

    iget-object v1, p0, Lcom/google/android/gms/internal/to;->zzcfr:Lcom/google/firebase/database/ValueEventListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/to;->zzbYY:Lcom/google/android/gms/internal/qu;

    iget-object v1, p0, Lcom/google/android/gms/internal/to;->zzbYY:Lcom/google/android/gms/internal/qu;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/to;->zzccD:Lcom/google/android/gms/internal/vt;

    iget-object v0, p0, Lcom/google/android/gms/internal/to;->zzccD:Lcom/google/android/gms/internal/vt;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/to;->zzcfr:Lcom/google/firebase/database/ValueEventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/to;->zzbYY:Lcom/google/android/gms/internal/qu;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/to;->zzccD:Lcom/google/android/gms/internal/vt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vt;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ValueEventRegistration"

    return-object v0
.end method

.method public final zzGH()Lcom/google/android/gms/internal/vt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/to;->zzccD:Lcom/google/android/gms/internal/vt;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/qi;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/to;

    iget-object v1, p0, Lcom/google/android/gms/internal/to;->zzbYY:Lcom/google/android/gms/internal/qu;

    iget-object v2, p0, Lcom/google/android/gms/internal/to;->zzcfr:Lcom/google/firebase/database/ValueEventListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/to;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/vt;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/vi;Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/vj;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/to;->zzbYY:Lcom/google/android/gms/internal/qu;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vi;->zzHW()Lcom/google/android/gms/internal/xf;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/xf;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/vj;

    sget-object v0, Lcom/google/android/gms/internal/vl;->zzcgS:Lcom/google/android/gms/internal/vl;

    const/4 v1, 0x0

    invoke-direct {p2, v0, p0, p1, v1}, Lcom/google/android/gms/internal/vj;-><init>(Lcom/google/android/gms/internal/vl;Lcom/google/android/gms/internal/qi;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    return-object p2
.end method

.method public final zza(Lcom/google/android/gms/internal/vj;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/to;->zzGW()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/to;->zzcfr:Lcom/google/firebase/database/ValueEventListener;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vj;->zzIc()Lcom/google/firebase/database/DataSnapshot;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/firebase/database/ValueEventListener;->onDataChange(Lcom/google/firebase/database/DataSnapshot;)V

    return-void
.end method

.method public final zza(Lcom/google/firebase/database/DatabaseError;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/to;->zzcfr:Lcom/google/firebase/database/ValueEventListener;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/ValueEventListener;->onCancelled(Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/vl;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vl;->zzcgS:Lcom/google/android/gms/internal/vl;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/qi;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/to;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/to;

    iget-object p1, p1, Lcom/google/android/gms/internal/to;->zzcfr:Lcom/google/firebase/database/ValueEventListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/to;->zzcfr:Lcom/google/firebase/database/ValueEventListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
