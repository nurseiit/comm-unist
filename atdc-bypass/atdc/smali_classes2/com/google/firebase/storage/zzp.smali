.class final Lcom/google/firebase/storage/zzp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "TTContinuationResult;>;"
    }
.end annotation


# instance fields
.field private synthetic zzcpb:Lcom/google/firebase/storage/zzo;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/zzo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/zzp;->zzcpb:Lcom/google/firebase/storage/zzo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContinuationResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/storage/zzp;->zzcpb:Lcom/google/firebase/storage/zzo;

    iget-object v0, v0, Lcom/google/firebase/storage/zzo;->zzaIk:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
