.class final Lcom/google/firebase/storage/zzq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private synthetic zzcpb:Lcom/google/firebase/storage/zzo;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/zzo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/zzq;->zzcpb:Lcom/google/firebase/storage/zzo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/firebase/storage/zzq;->zzcpb:Lcom/google/firebase/storage/zzo;

    iget-object v0, v0, Lcom/google/firebase/storage/zzo;->zzaIk:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method
