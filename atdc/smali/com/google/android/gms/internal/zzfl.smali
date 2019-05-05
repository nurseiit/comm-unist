.class final Lcom/google/android/gms/internal/zzfl;
.super Landroid/database/ContentObserver;


# instance fields
.field private synthetic zzxh:Lcom/google/android/gms/internal/zzfi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzfi;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfl;->zzxh:Lcom/google/android/gms/internal/zzfi;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzfl;->zzxh:Lcom/google/android/gms/internal/zzfi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfi;->zzcp()V

    return-void
.end method
