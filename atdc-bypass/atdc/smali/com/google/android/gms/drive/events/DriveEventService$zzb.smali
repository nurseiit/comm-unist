.class final Lcom/google/android/gms/drive/events/DriveEventService$zzb;
.super Lcom/google/android/gms/internal/zzbor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/events/DriveEventService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zzb"
.end annotation


# instance fields
.field private synthetic zzaNi:Lcom/google/android/gms/drive/events/DriveEventService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/events/DriveEventService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/events/DriveEventService$zzb;->zzaNi:Lcom/google/android/gms/drive/events/DriveEventService;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbor;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/zzbph;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/drive/events/DriveEventService$zzb;->zzaNi:Lcom/google/android/gms/drive/events/DriveEventService;

    monitor-enter v0

    :try_start_0
    const-string v1, "DriveEventService"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onEvent: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbng;->zzx(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/drive/events/DriveEventService$zzb;->zzaNi:Lcom/google/android/gms/drive/events/DriveEventService;

    invoke-static {v1}, Lcom/google/android/gms/drive/events/DriveEventService;->zza(Lcom/google/android/gms/drive/events/DriveEventService;)V

    iget-object v1, p0, Lcom/google/android/gms/drive/events/DriveEventService$zzb;->zzaNi:Lcom/google/android/gms/drive/events/DriveEventService;

    iget-object v1, v1, Lcom/google/android/gms/drive/events/DriveEventService;->zzaNf:Lcom/google/android/gms/drive/events/DriveEventService$zza;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/drive/events/DriveEventService$zzb;->zzaNi:Lcom/google/android/gms/drive/events/DriveEventService;

    iget-object v1, v1, Lcom/google/android/gms/drive/events/DriveEventService;->zzaNf:Lcom/google/android/gms/drive/events/DriveEventService$zza;

    invoke-static {v1, p1}, Lcom/google/android/gms/drive/events/DriveEventService$zza;->zza(Lcom/google/android/gms/drive/events/DriveEventService$zza;Lcom/google/android/gms/internal/zzbph;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/drive/events/DriveEventService$zzb;->zzaNi:Lcom/google/android/gms/drive/events/DriveEventService;

    iget-object v1, v1, Lcom/google/android/gms/drive/events/DriveEventService;->zzaNf:Lcom/google/android/gms/drive/events/DriveEventService$zza;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/drive/events/DriveEventService$zza;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string p1, "DriveEventService"

    const-string v1, "Receiving event before initialize is completed."

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzbng;->zzz(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
