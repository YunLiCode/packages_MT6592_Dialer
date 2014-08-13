.class Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportRequestConnection"
.end annotation


# instance fields
.field private mService:Lcom/android/contacts/common/vcard/VCardService;

.field final synthetic this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/common/vcard/ImportVCardActivity;
    .param p2, "x1"    # Lcom/android/contacts/common/vcard/ImportVCardActivity$1;

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;)V

    return-void
.end method


# virtual methods
.method public isServiceBinded()Z
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->mService:Lcom/android/contacts/common/vcard/VCardService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 232
    check-cast p2, Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    .end local p2    # "binder":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/contacts/common/vcard/VCardService$MyBinder;->getService()Lcom/android/contacts/common/vcard/VCardService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->mService:Lcom/android/contacts/common/vcard/VCardService;

    .line 236
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mVCardCacheThread:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;
    invoke-static {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$200(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 237
    const-string v0, "ImportVCardActivity"

    const-string v1, "[onServiceConnected]mVCardCacheThread is null, some error happens."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    new-instance v1, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection$1;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 254
    :goto_0
    return-void

    .line 250
    :cond_0
    const-string v0, "ImportVCardActivity"

    const-string v1, "Connected to VCardService. Kick a vCard cache thread (uri: %s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mVCardCacheThread:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;
    invoke-static {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$200(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->getSourceUris()[Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/common/vcard/ImportVCardActivity;->mVCardCacheThread:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;
    invoke-static {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->access$200(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->start()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 258
    const-string v0, "ImportVCardActivity"

    const-string v1, "Disconnected from VCardService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method

.method public sendImportRequest(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/vcard/ImportRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    const-string v0, "ImportVCardActivity"

    const-string v1, "Send an import request"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->mService:Lcom/android/contacts/common/vcard/VCardService;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    iget-object v1, v1, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/common/vcard/VCardService;->handleImportRequest(Ljava/util/List;Lcom/android/contacts/common/vcard/VCardImportExportListener;)V

    .line 228
    return-void
.end method

.method public setVCardCaching(Z)V
    .locals 3
    .param p1, "cache"    # Z

    .prologue
    .line 271
    const-string v0, "ImportVCardActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVCardCaching: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->mService:Lcom/android/contacts/common/vcard/VCardService;

    iput-boolean p1, v0, Lcom/android/contacts/common/vcard/VCardService;->mCaching:Z

    .line 273
    return-void
.end method
