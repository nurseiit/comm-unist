.class final Lcom/google/firebase/database/zzg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbYZ:Lcom/google/firebase/database/FirebaseDatabase;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/FirebaseDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/zzg;->zzbYZ:Lcom/google/firebase/database/FirebaseDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/zzg;->zzbYZ:Lcom/google/firebase/database/FirebaseDatabase;

    invoke-static {v0}, Lcom/google/firebase/database/FirebaseDatabase;->zza(Lcom/google/firebase/database/FirebaseDatabase;)Lcom/google/android/gms/internal/qu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qu;->purgeOutstandingWrites()V

    return-void
.end method
