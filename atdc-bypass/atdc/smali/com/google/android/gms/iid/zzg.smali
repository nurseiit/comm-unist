.class final Lcom/google/android/gms/iid/zzg;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic zzbhn:Lcom/google/android/gms/iid/zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/iid/zze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/iid/zzg;->zzbhn:Lcom/google/android/gms/iid/zze;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "InstanceID/Rpc"

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "InstanceID/Rpc"

    const-string v0, "Received GSF callback via dynamic receiver"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/iid/zzg;->zzbhn:Lcom/google/android/gms/iid/zze;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/iid/zze;->zzi(Landroid/content/Intent;)V

    return-void
.end method
