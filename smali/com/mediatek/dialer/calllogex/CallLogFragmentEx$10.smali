.class Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$10;
.super Landroid/os/AsyncTask;
.source "CallLogFragmentEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->onMenuRemoveFromCallLog(Landroid/view/MenuItem;)V
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
.field final synthetic this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

.field final synthetic val$callIds:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 2306
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$10;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    iput-object p2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$10;->val$callIds:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2306
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$10;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 2309
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$10;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-virtual {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2310
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$10;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-virtual {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$10;->val$callIds:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2314
    :cond_0
    return-object v4
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2306
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$10;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 2319
    return-void
.end method
