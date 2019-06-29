.class final Lcom/google/firebase/storage/zzz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzcpG:Lcom/google/firebase/storage/zzw;

.field private synthetic zzcpH:Lcom/google/firebase/storage/StorageTask$ProvideError;

.field private synthetic zzcpI:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/zzw;Ljava/lang/Object;Lcom/google/firebase/storage/StorageTask$ProvideError;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/zzz;->zzcpG:Lcom/google/firebase/storage/zzw;

    iput-object p2, p0, Lcom/google/firebase/storage/zzz;->zzcpI:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/storage/zzz;->zzcpH:Lcom/google/firebase/storage/StorageTask$ProvideError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/storage/zzz;->zzcpG:Lcom/google/firebase/storage/zzw;

    invoke-static {v0}, Lcom/google/firebase/storage/zzw;->zza(Lcom/google/firebase/storage/zzw;)Lcom/google/firebase/storage/zzaa;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/storage/zzz;->zzcpI:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/firebase/storage/zzz;->zzcpH:Lcom/google/firebase/storage/StorageTask$ProvideError;

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/storage/zzaa;->zzi(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
