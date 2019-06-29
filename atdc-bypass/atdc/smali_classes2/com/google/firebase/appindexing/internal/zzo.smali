.class final Lcom/google/firebase/appindexing/internal/zzo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbVU:Lcom/google/firebase/appindexing/internal/zzn;


# direct methods
.method constructor <init>(Lcom/google/firebase/appindexing/internal/zzn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/appindexing/internal/zzo;->zzbVU:Lcom/google/firebase/appindexing/internal/zzn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/appindexing/internal/zzo;->zzbVU:Lcom/google/firebase/appindexing/internal/zzn;

    iget-object v0, v0, Lcom/google/firebase/appindexing/internal/zzn;->zzbVT:Lcom/google/firebase/appindexing/internal/zzm;

    iget-object v1, p0, Lcom/google/firebase/appindexing/internal/zzo;->zzbVU:Lcom/google/firebase/appindexing/internal/zzn;

    iget-object v1, v1, Lcom/google/firebase/appindexing/internal/zzn;->zzbVS:Lcom/google/firebase/appindexing/internal/zzk;

    iget-object v2, p0, Lcom/google/firebase/appindexing/internal/zzo;->zzbVU:Lcom/google/firebase/appindexing/internal/zzn;

    iget-object v2, v2, Lcom/google/firebase/appindexing/internal/zzn;->zzaCV:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v3, p0, Lcom/google/firebase/appindexing/internal/zzo;->zzbVU:Lcom/google/firebase/appindexing/internal/zzn;

    iget v3, v3, Lcom/google/firebase/appindexing/internal/zzn;->zzqX:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/firebase/appindexing/internal/zzm;->zza(Lcom/google/firebase/appindexing/internal/zzm;Lcom/google/firebase/appindexing/internal/zzk;Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    return-void
.end method
