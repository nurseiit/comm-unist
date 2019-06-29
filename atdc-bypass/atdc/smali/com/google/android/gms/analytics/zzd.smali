.class final Lcom/google/android/gms/analytics/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzadv:Lcom/google/android/gms/internal/zzaoc;

.field private synthetic zzadw:I

.field private synthetic zzadx:Lcom/google/android/gms/analytics/CampaignTrackingService;

.field private synthetic zzs:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/CampaignTrackingService;Lcom/google/android/gms/internal/zzaoc;Landroid/os/Handler;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzd;->zzadx:Lcom/google/android/gms/analytics/CampaignTrackingService;

    iput-object p2, p0, Lcom/google/android/gms/analytics/zzd;->zzadv:Lcom/google/android/gms/internal/zzaoc;

    iput-object p3, p0, Lcom/google/android/gms/analytics/zzd;->zzs:Landroid/os/Handler;

    iput p4, p0, Lcom/google/android/gms/analytics/zzd;->zzadw:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzd;->zzadx:Lcom/google/android/gms/analytics/CampaignTrackingService;

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzd;->zzadv:Lcom/google/android/gms/internal/zzaoc;

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzd;->zzs:Landroid/os/Handler;

    iget v3, p0, Lcom/google/android/gms/analytics/zzd;->zzadw:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/analytics/CampaignTrackingService;->zza(Lcom/google/android/gms/internal/zzaoc;Landroid/os/Handler;I)V

    return-void
.end method
