.class final Lcom/google/android/gms/internal/rt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/pf;


# instance fields
.field private synthetic zzccH:Lcom/google/android/gms/internal/qr;

.field private synthetic zzcdA:Lcom/google/android/gms/internal/qu;

.field private synthetic zzcdD:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

.field private synthetic zzcdX:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;JLcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rt;->zzcdA:Lcom/google/android/gms/internal/qu;

    iput-object p2, p0, Lcom/google/android/gms/internal/rt;->zzccH:Lcom/google/android/gms/internal/qr;

    iput-wide p3, p0, Lcom/google/android/gms/internal/rt;->zzcdX:J

    iput-object p5, p0, Lcom/google/android/gms/internal/rt;->zzcdD:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaa(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/qu;->zzac(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/rt;->zzcdA:Lcom/google/android/gms/internal/qu;

    const-string v0, "updateChildren"

    iget-object v1, p0, Lcom/google/android/gms/internal/rt;->zzccH:Lcom/google/android/gms/internal/qr;

    invoke-static {p2, v0, v1, p1}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/android/gms/internal/qu;Ljava/lang/String;Lcom/google/android/gms/internal/qr;Lcom/google/firebase/database/DatabaseError;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/rt;->zzcdA:Lcom/google/android/gms/internal/qu;

    iget-wide v0, p0, Lcom/google/android/gms/internal/rt;->zzcdX:J

    iget-object v2, p0, Lcom/google/android/gms/internal/rt;->zzccH:Lcom/google/android/gms/internal/qr;

    invoke-static {p2, v0, v1, v2, p1}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/android/gms/internal/qu;JLcom/google/android/gms/internal/qr;Lcom/google/firebase/database/DatabaseError;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/rt;->zzcdA:Lcom/google/android/gms/internal/qu;

    iget-object v0, p0, Lcom/google/android/gms/internal/rt;->zzcdD:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iget-object v1, p0, Lcom/google/android/gms/internal/rt;->zzccH:Lcom/google/android/gms/internal/qr;

    invoke-virtual {p2, v0, p1, v1}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/qr;)V

    return-void
.end method
