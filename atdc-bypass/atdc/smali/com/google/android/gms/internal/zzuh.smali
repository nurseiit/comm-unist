.class public final Lcom/google/android/gms/internal/zzuh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field public final zzMF:I

.field public final zzMG:Lcom/google/android/gms/internal/zzua;

.field public final zzMH:Lcom/google/android/gms/internal/zzut;

.field public final zzMI:Ljava/lang/String;

.field public final zzMJ:Lcom/google/android/gms/internal/zzud;

.field public final zzMK:Lcom/google/android/gms/internal/zzuz;

.field public final zzML:J


# direct methods
.method public constructor <init>(I)V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzuh;-><init>(Lcom/google/android/gms/internal/zzua;Lcom/google/android/gms/internal/zzut;Ljava/lang/String;Lcom/google/android/gms/internal/zzud;ILcom/google/android/gms/internal/zzuz;J)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzua;Lcom/google/android/gms/internal/zzut;Ljava/lang/String;Lcom/google/android/gms/internal/zzud;ILcom/google/android/gms/internal/zzuz;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzuh;->zzMG:Lcom/google/android/gms/internal/zzua;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzuh;->zzMH:Lcom/google/android/gms/internal/zzut;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzuh;->zzMI:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzuh;->zzMJ:Lcom/google/android/gms/internal/zzud;

    iput p5, p0, Lcom/google/android/gms/internal/zzuh;->zzMF:I

    iput-object p6, p0, Lcom/google/android/gms/internal/zzuh;->zzMK:Lcom/google/android/gms/internal/zzuz;

    iput-wide p7, p0, Lcom/google/android/gms/internal/zzuh;->zzML:J

    return-void
.end method
