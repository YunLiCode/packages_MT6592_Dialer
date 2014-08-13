.class Lcom/android/ex/chips/MTKRecipientEditTextView$PreloadPhotoTask;
.super Landroid/os/AsyncTask;
.source "MTKRecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreloadPhotoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/Collection",
        "<",
        "Lcom/android/ex/chips/RecipientEntry;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;


# direct methods
.method private constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0

    .prologue
    .line 5915
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$PreloadPhotoTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/MTKRecipientEditTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/ex/chips/MTKRecipientEditTextView;
    .param p2, "x1"    # Lcom/android/ex/chips/MTKRecipientEditTextView$1;

    .prologue
    .line 5915
    invoke-direct {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$PreloadPhotoTask;-><init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 5915
    check-cast p1, [Ljava/util/Collection;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView$PreloadPhotoTask;->doInBackground([Ljava/util/Collection;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/Collection;)Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .local p1, "params":[Ljava/util/Collection;, "[Ljava/util/Collection<Lcom/android/ex/chips/RecipientEntry;>;"
    const-wide/16 v5, 0x8

    .line 5919
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientEntry;

    .line 5920
    .local v0, "contact":Lcom/android/ex/chips/RecipientEntry;
    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5921
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preload "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v6, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5922
    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$PreloadPhotoTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/ex/chips/BaseRecipientAdapter;->fetchPhoto(Lcom/android/ex/chips/RecipientEntry;Landroid/net/Uri;)V

    .line 5924
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 5927
    .end local v0    # "contact":Lcom/android/ex/chips/RecipientEntry;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method
