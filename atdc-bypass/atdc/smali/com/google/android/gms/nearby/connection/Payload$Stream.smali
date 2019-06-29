.class public Lcom/google/android/gms/nearby/connection/Payload$Stream;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/connection/Payload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stream"
.end annotation


# instance fields
.field private final zzbww:Landroid/os/ParcelFileDescriptor;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzbwy:Ljava/io/InputStream;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V
    .locals 0
    .param p1    # Landroid/os/ParcelFileDescriptor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/Payload$Stream;->zzbww:Landroid/os/ParcelFileDescriptor;

    iput-object p2, p0, Lcom/google/android/gms/nearby/connection/Payload$Stream;->zzbwy:Ljava/io/InputStream;

    return-void
.end method

.method public static zzc(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/nearby/connection/Payload$Stream;
    .locals 2

    const-string v0, "Cannot create Payload.Stream from null ParcelFileDescriptor."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/nearby/connection/Payload$Stream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/nearby/connection/Payload$Stream;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static zzi(Ljava/io/InputStream;)Lcom/google/android/gms/nearby/connection/Payload$Stream;
    .locals 2

    const-string v0, "Cannot create Payload.Stream from null InputStream."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/nearby/connection/Payload$Stream;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/nearby/connection/Payload$Stream;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V

    return-object v0
.end method


# virtual methods
.method public asInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/Payload$Stream;->zzbwy:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v1, p0, Lcom/google/android/gms/nearby/connection/Payload$Stream;->zzbww:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Lcom/google/android/gms/nearby/connection/Payload$Stream;->zzbwy:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/Payload$Stream;->zzbwy:Ljava/io/InputStream;

    return-object v0
.end method

.method public asParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/Payload$Stream;->zzbww:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method
