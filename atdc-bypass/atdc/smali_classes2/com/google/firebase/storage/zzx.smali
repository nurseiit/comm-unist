.class final Lcom/google/firebase/storage/zzx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzcpF:Ljava/lang/Object;

.field private synthetic zzcpG:Lcom/google/firebase/storage/zzw;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/zzw;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/zzx;->zzcpG:Lcom/google/firebase/storage/zzw;

    iput-object p2, p0, Lcom/google/firebase/storage/zzx;->zzcpF:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/storage/zzx;->zzcpG:Lcom/google/firebase/storage/zzw;

    iget-object v1, p0, Lcom/google/firebase/storage/zzx;->zzcpF:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/zzw;->zzat(Ljava/lang/Object;)V

    return-void
.end method
