.class final Lcom/google/firebase/storage/zzk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/storage/zzaa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/storage/zzaa<",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "TTResult;>;TTResult;>;"
    }
.end annotation


# instance fields
.field private synthetic zzcoZ:Lcom/google/firebase/storage/StorageTask;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StorageTask;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/zzk;->zzcoZ:Lcom/google/firebase/storage/StorageTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzi(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/android/gms/tasks/OnCompleteListener;

    invoke-static {}, Lcom/google/firebase/storage/zzs;->zzKV()Lcom/google/firebase/storage/zzs;

    move-result-object p2

    iget-object v0, p0, Lcom/google/firebase/storage/zzk;->zzcoZ:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {p2, v0}, Lcom/google/firebase/storage/zzs;->zzc(Lcom/google/firebase/storage/StorageTask;)V

    iget-object p2, p0, Lcom/google/firebase/storage/zzk;->zzcoZ:Lcom/google/firebase/storage/StorageTask;

    invoke-interface {p1, p2}, Lcom/google/android/gms/tasks/OnCompleteListener;->onComplete(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
