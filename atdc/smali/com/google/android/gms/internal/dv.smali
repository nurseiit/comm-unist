.class public final Lcom/google/android/gms/internal/dv;
.super Lcom/google/android/gms/internal/dp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/dp<",
        "Lcom/google/android/gms/internal/dp<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final zzbLr:Lcom/google/android/gms/internal/dv;

.field public static final zzbLs:Lcom/google/android/gms/internal/dv;

.field public static final zzbLt:Lcom/google/android/gms/internal/dv;

.field public static final zzbLu:Lcom/google/android/gms/internal/dv;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final zzbLv:Z

.field private final zzbLw:Lcom/google/android/gms/internal/dp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/dp<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/dv;

    const-string v1, "BREAK"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/dv;->zzbLr:Lcom/google/android/gms/internal/dv;

    new-instance v0, Lcom/google/android/gms/internal/dv;

    const-string v1, "CONTINUE"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/dv;->zzbLs:Lcom/google/android/gms/internal/dv;

    new-instance v0, Lcom/google/android/gms/internal/dv;

    const-string v1, "NULL"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/dv;->zzbLt:Lcom/google/android/gms/internal/dv;

    new-instance v0, Lcom/google/android/gms/internal/dv;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/dp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/dp<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/dp;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "RETURN"

    iput-object v0, p0, Lcom/google/android/gms/internal/dv;->mName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dv;->zzbLv:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/dv;->zzbLw:Lcom/google/android/gms/internal/dp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/dp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/dv;->mName:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/dv;->zzbLv:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/dv;->zzbLw:Lcom/google/android/gms/internal/dp;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dv;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic zzDl()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dv;->zzbLw:Lcom/google/android/gms/internal/dp;

    return-object v0
.end method

.method public final zzDq()Lcom/google/android/gms/internal/dp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dv;->zzbLw:Lcom/google/android/gms/internal/dp;

    return-object v0
.end method

.method public final zzDr()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dv;->zzbLv:Z

    return v0
.end method
