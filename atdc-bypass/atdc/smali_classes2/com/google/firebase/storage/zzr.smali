.class final Lcom/google/firebase/storage/zzr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzcoZ:Lcom/google/firebase/storage/StorageTask;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StorageTask;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/zzr;->zzcoZ:Lcom/google/firebase/storage/StorageTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/storage/zzr;->zzcoZ:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageTask;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/firebase/storage/zzr;->zzcoZ:Lcom/google/firebase/storage/StorageTask;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageTask;->zza(Lcom/google/firebase/storage/StorageTask;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/storage/zzr;->zzcoZ:Lcom/google/firebase/storage/StorageTask;

    invoke-static {v1}, Lcom/google/firebase/storage/StorageTask;->zza(Lcom/google/firebase/storage/StorageTask;)V

    throw v0
.end method
