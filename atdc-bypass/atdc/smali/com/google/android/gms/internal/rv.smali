.class final Lcom/google/android/gms/internal/rv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/internal/rv;",
        ">;"
    }
.end annotation


# instance fields
.field private retryCount:I

.field private zzbZf:Lcom/google/android/gms/internal/qr;

.field private zzcdZ:Lcom/google/firebase/database/Transaction$Handler;

.field private zzcea:Lcom/google/firebase/database/ValueEventListener;

.field private zzceb:I

.field private zzcec:J

.field private zzced:Z

.field private zzcee:Lcom/google/firebase/database/DatabaseError;

.field private zzcef:J

.field private zzceg:Lcom/google/android/gms/internal/xm;

.field private zzceh:Lcom/google/android/gms/internal/xm;

.field private zzcei:Lcom/google/android/gms/internal/xm;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/qr;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/ValueEventListener;IZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/rv;->zzbZf:Lcom/google/android/gms/internal/qr;

    iput-object p2, p0, Lcom/google/android/gms/internal/rv;->zzcdZ:Lcom/google/firebase/database/Transaction$Handler;

    iput-object p3, p0, Lcom/google/android/gms/internal/rv;->zzcea:Lcom/google/firebase/database/ValueEventListener;

    iput p4, p0, Lcom/google/android/gms/internal/rv;->zzceb:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/rv;->retryCount:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/rv;->zzced:Z

    iput-wide p6, p0, Lcom/google/android/gms/internal/rv;->zzcec:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/rv;->zzcee:Lcom/google/firebase/database/DatabaseError;

    iput-object p1, p0, Lcom/google/android/gms/internal/rv;->zzceg:Lcom/google/android/gms/internal/xm;

    iput-object p1, p0, Lcom/google/android/gms/internal/rv;->zzceh:Lcom/google/android/gms/internal/xm;

    iput-object p1, p0, Lcom/google/android/gms/internal/rv;->zzcei:Lcom/google/android/gms/internal/xm;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/qr;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/ValueEventListener;IZJLcom/google/android/gms/internal/qv;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/internal/rv;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/ValueEventListener;IZJ)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/rv;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/rv;->zzceb:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/rv;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/rv;->zzcef:J

    return-wide p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/rv;)Lcom/google/android/gms/internal/xm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/rv;->zzceg:Lcom/google/android/gms/internal/xm;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/rv;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rv;->zzceg:Lcom/google/android/gms/internal/xm;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/rv;Lcom/google/firebase/database/DatabaseError;)Lcom/google/firebase/database/DatabaseError;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rv;->zzcee:Lcom/google/firebase/database/DatabaseError;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/rv;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/rv;->zzcef:J

    return-wide v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/rv;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rv;->zzceh:Lcom/google/android/gms/internal/xm;

    return-object p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/rv;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/rv;->zzceb:I

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/rv;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rv;->zzcei:Lcom/google/android/gms/internal/xm;

    return-object p1
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/rv;)I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/rv;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/rv;->retryCount:I

    return v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/rv;)Lcom/google/android/gms/internal/qr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/rv;->zzbZf:Lcom/google/android/gms/internal/qr;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/rv;)Lcom/google/android/gms/internal/xm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/rv;->zzceh:Lcom/google/android/gms/internal/xm;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/rv;)Lcom/google/android/gms/internal/xm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/rv;->zzcei:Lcom/google/android/gms/internal/xm;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/rv;)Lcom/google/firebase/database/Transaction$Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/rv;->zzcdZ:Lcom/google/firebase/database/Transaction$Handler;

    return-object p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/rv;)Lcom/google/firebase/database/ValueEventListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/rv;->zzcea:Lcom/google/firebase/database/ValueEventListener;

    return-object p0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/rv;)Lcom/google/firebase/database/DatabaseError;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/rv;->zzcee:Lcom/google/firebase/database/DatabaseError;

    return-object p0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/rv;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/rv;->retryCount:I

    return p0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/rv;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/rv;->zzced:Z

    return p0
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lcom/google/android/gms/internal/rv;

    iget-wide v0, p0, Lcom/google/android/gms/internal/rv;->zzcec:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/rv;->zzcec:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/rv;->zzcec:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/rv;->zzcec:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
