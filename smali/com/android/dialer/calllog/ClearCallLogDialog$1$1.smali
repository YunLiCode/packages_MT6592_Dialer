.class Lcom/android/dialer/calllog/ClearCallLogDialog$1$1;
.super Landroid/os/AsyncTask;
.source "ClearCallLogDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/ClearCallLogDialog$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/calllog/ClearCallLogDialog$1;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/ClearCallLogDialog$1;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/dialer/calllog/ClearCallLogDialog$1$1;->this$1:Lcom/android/dialer/calllog/ClearCallLogDialog$1;

    iput-object p2, p0, Lcom/android/dialer/calllog/ClearCallLogDialog$1$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 59
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/ClearCallLogDialog$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 62
    iget-object v0, p0, Lcom/android/dialer/calllog/ClearCallLogDialog$1$1;->this$1:Lcom/android/dialer/calllog/ClearCallLogDialog$1;

    iget-object v0, v0, Lcom/android/dialer/calllog/ClearCallLogDialog$1;->val$resolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 63
    # getter for: Lcom/android/dialer/calllog/ClearCallLogDialog;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;
    invoke-static {}, Lcom/android/dialer/calllog/ClearCallLogDialog;->access$000()Lcom/android/dialer/service/CachedNumberLookupService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    # getter for: Lcom/android/dialer/calllog/ClearCallLogDialog;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;
    invoke-static {}, Lcom/android/dialer/calllog/ClearCallLogDialog;->access$000()Lcom/android/dialer/service/CachedNumberLookupService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/ClearCallLogDialog$1$1;->this$1:Lcom/android/dialer/calllog/ClearCallLogDialog$1;

    iget-object v1, v1, Lcom/android/dialer/calllog/ClearCallLogDialog$1;->val$context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/dialer/service/CachedNumberLookupService;->clearAllCacheEntries(Landroid/content/Context;)V

    .line 66
    :cond_0
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 59
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/ClearCallLogDialog$1$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/dialer/calllog/ClearCallLogDialog$1$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 71
    return-void
.end method
