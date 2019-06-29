.class public final Lcom/google/android/gms/drive/zzm;
.super Lcom/google/android/gms/drive/ExecutionOptions;


# instance fields
.field private zzaMu:Ljava/lang/String;

.field private zzaMv:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p5}, Lcom/google/android/gms/drive/ExecutionOptions;-><init>(Ljava/lang/String;ZI)V

    iput-object p3, p0, Lcom/google/android/gms/drive/zzm;->zzaMu:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/drive/zzm;->zzaMv:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILcom/google/android/gms/drive/zzn;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/drive/zzm;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final zzsT()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/zzm;->zzaMu:Ljava/lang/String;

    return-object v0
.end method

.method public final zzsU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/zzm;->zzaMv:Ljava/lang/String;

    return-object v0
.end method
