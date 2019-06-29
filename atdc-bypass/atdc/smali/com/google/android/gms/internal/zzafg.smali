.class public final Lcom/google/android/gms/internal/zzafg;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field public final errorCode:I

.field public final zzUj:Lcom/google/android/gms/internal/zzaae;

.field public final zzXL:Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final zzXN:Lcom/google/android/gms/internal/zzub;

.field public final zzXR:J

.field public final zzXS:J

.field public final zzXX:Lcom/google/android/gms/internal/zzig;

.field public final zzXY:Lcom/google/android/gms/internal/zzaai;

.field public final zzvX:Lcom/google/android/gms/internal/zziv;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaae;Lcom/google/android/gms/internal/zzaai;Lcom/google/android/gms/internal/zzub;Lcom/google/android/gms/internal/zziv;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/zzig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzafg;->zzUj:Lcom/google/android/gms/internal/zzaae;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzafg;->zzXN:Lcom/google/android/gms/internal/zzub;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzafg;->zzvX:Lcom/google/android/gms/internal/zziv;

    iput p5, p0, Lcom/google/android/gms/internal/zzafg;->errorCode:I

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzafg;->zzXR:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/zzafg;->zzXS:J

    iput-object p10, p0, Lcom/google/android/gms/internal/zzafg;->zzXL:Lorg/json/JSONObject;

    iput-object p11, p0, Lcom/google/android/gms/internal/zzafg;->zzXX:Lcom/google/android/gms/internal/zzig;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzaae;Lcom/google/android/gms/internal/zzaai;Lcom/google/android/gms/internal/zzub;Lcom/google/android/gms/internal/zziv;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/zzij;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzafg;->zzUj:Lcom/google/android/gms/internal/zzaae;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzafg;->zzXN:Lcom/google/android/gms/internal/zzub;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzafg;->zzvX:Lcom/google/android/gms/internal/zziv;

    iput p5, p0, Lcom/google/android/gms/internal/zzafg;->errorCode:I

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzafg;->zzXR:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/zzafg;->zzXS:J

    iput-object p10, p0, Lcom/google/android/gms/internal/zzafg;->zzXL:Lorg/json/JSONObject;

    new-instance p1, Lcom/google/android/gms/internal/zzig;

    sget-object p2, Lcom/google/android/gms/internal/zzmo;->zzGC:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p1, p11, p2}, Lcom/google/android/gms/internal/zzig;-><init>(Lcom/google/android/gms/internal/zzij;Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzafg;->zzXX:Lcom/google/android/gms/internal/zzig;

    return-void
.end method
