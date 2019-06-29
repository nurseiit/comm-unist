.class final Lcom/google/android/gms/internal/zzxu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzQW:Lcom/google/android/gms/internal/zzxt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzxt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxu;->zzQW:Lcom/google/android/gms/internal/zzxt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxu;->zzQW:Lcom/google/android/gms/internal/zzxt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzxt;->onStop()V

    return-void
.end method
