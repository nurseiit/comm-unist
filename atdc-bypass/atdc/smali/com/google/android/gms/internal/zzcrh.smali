.class final Lcom/google/android/gms/internal/zzcrh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/People$LoadPeopleResult;


# instance fields
.field private synthetic zzakB:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcrg;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcrh;->zzakB:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNextPageToken()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPersonBuffer()Lcom/google/android/gms/plus/model/people/PersonBuffer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcrh;->zzakB:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final release()V
    .locals 0

    return-void
.end method
