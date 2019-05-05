.class Lcom/lotecs/attendcheck/common/GCMManager$1;
.super Landroid/os/AsyncTask;
.source "GCMManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lotecs/attendcheck/common/GCMManager;->registerInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lotecs/attendcheck/common/GCMManager;


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/common/GCMManager;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/GCMManager$1;->this$0:Lcom/lotecs/attendcheck/common/GCMManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 67
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/common/GCMManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4

    .line 72
    :try_start_0
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/GCMManager$1;->this$0:Lcom/lotecs/attendcheck/common/GCMManager;

    invoke-static {p1}, Lcom/lotecs/attendcheck/common/GCMManager;->access$000(Lcom/lotecs/attendcheck/common/GCMManager;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object p1

    if-nez p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/GCMManager$1;->this$0:Lcom/lotecs/attendcheck/common/GCMManager;

    iget-object v0, p0, Lcom/lotecs/attendcheck/common/GCMManager$1;->this$0:Lcom/lotecs/attendcheck/common/GCMManager;

    invoke-static {v0}, Lcom/lotecs/attendcheck/common/GCMManager;->access$100(Lcom/lotecs/attendcheck/common/GCMManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lotecs/attendcheck/common/GCMManager;->access$002(Lcom/lotecs/attendcheck/common/GCMManager;Lcom/google/android/gms/gcm/GoogleCloudMessaging;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/GCMManager$1;->this$0:Lcom/lotecs/attendcheck/common/GCMManager;

    iget-object v0, p0, Lcom/lotecs/attendcheck/common/GCMManager$1;->this$0:Lcom/lotecs/attendcheck/common/GCMManager;

    invoke-static {v0}, Lcom/lotecs/attendcheck/common/GCMManager;->access$000(Lcom/lotecs/attendcheck/common/GCMManager;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lotecs/attendcheck/common/GCMManager$1;->this$0:Lcom/lotecs/attendcheck/common/GCMManager;

    invoke-static {v3}, Lcom/lotecs/attendcheck/common/GCMManager;->access$300(Lcom/lotecs/attendcheck/common/GCMManager;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/lotecs/attendcheck/common/GCMManager;->access$202(Lcom/lotecs/attendcheck/common/GCMManager;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Device registered, registration ID="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/lotecs/attendcheck/common/GCMManager$1;->this$0:Lcom/lotecs/attendcheck/common/GCMManager;

    invoke-static {v0}, Lcom/lotecs/attendcheck/common/GCMManager;->access$200(Lcom/lotecs/attendcheck/common/GCMManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/GCMManager$1;->this$0:Lcom/lotecs/attendcheck/common/GCMManager;

    iget-object v1, p0, Lcom/lotecs/attendcheck/common/GCMManager$1;->this$0:Lcom/lotecs/attendcheck/common/GCMManager;

    invoke-static {v1}, Lcom/lotecs/attendcheck/common/GCMManager;->access$200(Lcom/lotecs/attendcheck/common/GCMManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lotecs/attendcheck/common/GCMManager;->storeRegistrationId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 67
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lotecs/attendcheck/common/GCMManager$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 89
    invoke-static {}, Lcom/lotecs/attendcheck/common/GCMManager;->access$400()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/GCMManager$1;->this$0:Lcom/lotecs/attendcheck/common/GCMManager;

    invoke-static {v0}, Lcom/lotecs/attendcheck/common/GCMManager;->access$200(Lcom/lotecs/attendcheck/common/GCMManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lotecs/attendcheck/common/GCMManager$1;->this$0:Lcom/lotecs/attendcheck/common/GCMManager;

    .line 92
    invoke-static {v0}, Lcom/lotecs/attendcheck/common/GCMManager;->access$200(Lcom/lotecs/attendcheck/common/GCMManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/GCMManager$1;->this$0:Lcom/lotecs/attendcheck/common/GCMManager;

    invoke-static {p1}, Lcom/lotecs/attendcheck/common/GCMManager;->access$500(Lcom/lotecs/attendcheck/common/GCMManager;)Lcom/lotecs/attendcheck/common/GCMManager$OnRegistrationIDCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/lotecs/attendcheck/common/GCMManager$1;->this$0:Lcom/lotecs/attendcheck/common/GCMManager;

    invoke-static {v0}, Lcom/lotecs/attendcheck/common/GCMManager;->access$200(Lcom/lotecs/attendcheck/common/GCMManager;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/lotecs/attendcheck/common/GCMManager$OnRegistrationIDCallback;->registrationSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/GCMManager$1;->this$0:Lcom/lotecs/attendcheck/common/GCMManager;

    invoke-static {v0}, Lcom/lotecs/attendcheck/common/GCMManager;->access$500(Lcom/lotecs/attendcheck/common/GCMManager;)Lcom/lotecs/attendcheck/common/GCMManager$OnRegistrationIDCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lotecs/attendcheck/common/GCMManager$OnRegistrationIDCallback;->registrationFailed(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
