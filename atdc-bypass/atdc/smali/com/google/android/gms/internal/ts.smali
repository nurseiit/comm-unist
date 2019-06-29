.class public final Lcom/google/android/gms/internal/ts;
.super Ljava/lang/Object;


# instance fields
.field private final zzcfA:Lcom/google/android/gms/internal/tp;

.field private final zzcfz:Lcom/google/android/gms/internal/qr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/tp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ts;->zzcfz:Lcom/google/android/gms/internal/qr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ts;->zzcfA:Lcom/google/android/gms/internal/tp;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xl;ZLcom/google/android/gms/internal/xe;)Lcom/google/android/gms/internal/xl;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ts;->zzcfA:Lcom/google/android/gms/internal/tp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ts;->zzcfz:Lcom/google/android/gms/internal/qr;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/tp;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xl;ZLcom/google/android/gms/internal/xe;)Lcom/google/android/gms/internal/xl;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ts;->zzcfA:Lcom/google/android/gms/internal/tp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ts;->zzcfz:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/tp;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/vg;)Lcom/google/android/gms/internal/xm;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ts;->zzcfA:Lcom/google/android/gms/internal/tp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ts;->zzcfz:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/tp;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/vg;)Lcom/google/android/gms/internal/xm;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/ts;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ts;

    iget-object v1, p0, Lcom/google/android/gms/internal/ts;->zzcfz:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/qr;->zza(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/qr;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ts;->zzcfA:Lcom/google/android/gms/internal/tp;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ts;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/tp;)V

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;
    .locals 4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ts;->zzcfA:Lcom/google/android/gms/internal/tp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ts;->zzcfz:Lcom/google/android/gms/internal/qr;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/google/android/gms/internal/tp;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;Ljava/util/List;Z)Lcom/google/android/gms/internal/xm;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ts;->zzcfA:Lcom/google/android/gms/internal/tp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ts;->zzcfz:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/tp;->zzj(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object p1

    return-object p1
.end method

.method public final zzu(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/xm;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ts;->zzcfA:Lcom/google/android/gms/internal/tp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ts;->zzcfz:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/qr;->zzh(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/tp;->zzu(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/xm;

    move-result-object p1

    return-object p1
.end method
