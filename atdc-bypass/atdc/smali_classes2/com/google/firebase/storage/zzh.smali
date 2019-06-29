.class final Lcom/google/firebase/storage/zzh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;


# instance fields
.field private synthetic zzcoP:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private synthetic zzcoQ:J


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/StorageReference;JLcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-wide p2, p0, Lcom/google/firebase/storage/zzh;->zzcoQ:J

    iput-object p4, p0, Lcom/google/firebase/storage/zzh;->zzcoP:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground(Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;Ljava/io/InputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x4000

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p2, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    add-int/2addr v3, v4

    int-to-long v5, v3

    iget-wide v7, p0, Lcom/google/firebase/storage/zzh;->zzcoQ:J

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    const-string p1, "StorageReference"

    const-string v0, "the maximum allowed buffer size was exceeded."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "the maximum allowed buffer size was exceeded."

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-virtual {p1, v1, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    iget-object v0, p0, Lcom/google/firebase/storage/zzh;->zzcoP:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    throw p1
.end method
