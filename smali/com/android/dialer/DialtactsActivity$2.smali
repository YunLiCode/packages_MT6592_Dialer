.class Lcom/android/dialer/DialtactsActivity$2;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/DialtactsActivity;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 359
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 278
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 282
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "newText":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/dialer/DialtactsActivity;->access$400(Lcom/android/dialer/DialtactsActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # setter for: Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;
    invoke-static {v5, v1}, Lcom/android/dialer/DialtactsActivity;->access$402(Lcom/android/dialer/DialtactsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # invokes: Lcom/android/dialer/DialtactsActivity;->isDialpadShowing()Z
    invoke-static {v5}, Lcom/android/dialer/DialtactsActivity;->access$500(Lcom/android/dialer/DialtactsActivity;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mFirstQuery:Z
    invoke-static {v5}, Lcom/android/dialer/DialtactsActivity;->access$600(Lcom/android/dialer/DialtactsActivity;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v0, v4

    .line 304
    .local v0, "dialpadSearch":Z
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # invokes: Lcom/android/dialer/DialtactsActivity;->getInSearchUi()Z
    invoke-static {v5}, Lcom/android/dialer/DialtactsActivity;->access$700(Lcom/android/dialer/DialtactsActivity;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 305
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # invokes: Lcom/android/dialer/DialtactsActivity;->exitSearchUi()V
    invoke-static {v4}, Lcom/android/dialer/DialtactsActivity;->access$300(Lcom/android/dialer/DialtactsActivity;)V

    .line 306
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mSearchViewCloseButton:Landroid/view/View;
    invoke-static {v4}, Lcom/android/dialer/DialtactsActivity;->access$800(Lcom/android/dialer/DialtactsActivity;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # setter for: Lcom/android/dialer/DialtactsActivity;->mIsCloseButtonVisible:Z
    invoke-static {v4, v3}, Lcom/android/dialer/DialtactsActivity;->access$902(Lcom/android/dialer/DialtactsActivity;Z)Z

    goto :goto_0

    .end local v0    # "dialpadSearch":Z
    :cond_3
    move v0, v3

    .line 299
    goto :goto_1

    .line 316
    .restart local v0    # "dialpadSearch":Z
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 319
    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mSearchViewCloseButton:Landroid/view/View;
    invoke-static {v5}, Lcom/android/dialer/DialtactsActivity;->access$800(Lcom/android/dialer/DialtactsActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # setter for: Lcom/android/dialer/DialtactsActivity;->mIsCloseButtonVisible:Z
    invoke-static {v5, v4}, Lcom/android/dialer/DialtactsActivity;->access$902(Lcom/android/dialer/DialtactsActivity;Z)Z

    .line 325
    if-eqz v0, :cond_5

    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mInDialpadSearch:Z
    invoke-static {v5}, Lcom/android/dialer/DialtactsActivity;->access$1000(Lcom/android/dialer/DialtactsActivity;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    if-nez v0, :cond_7

    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mInRegularSearch:Z
    invoke-static {v5}, Lcom/android/dialer/DialtactsActivity;->access$1100(Lcom/android/dialer/DialtactsActivity;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    move v2, v4

    .line 326
    .local v2, "sameSearchMode":Z
    :goto_2
    if-nez v2, :cond_8

    .line 330
    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # invokes: Lcom/android/dialer/DialtactsActivity;->enterSearchUi(ZLjava/lang/String;)V
    invoke-static {v3, v0, v1}, Lcom/android/dialer/DialtactsActivity;->access$1200(Lcom/android/dialer/DialtactsActivity;ZLjava/lang/String;)V

    .line 333
    const-string v3, "DialtactsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTextChanged enterSearchUi return! newText="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v2    # "sameSearchMode":Z
    :cond_7
    move v2, v3

    .line 325
    goto :goto_2

    .line 338
    .restart local v2    # "sameSearchMode":Z
    :cond_8
    if-eqz v0, :cond_9

    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;
    invoke-static {v4}, Lcom/android/dialer/DialtactsActivity;->access$1300(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/SmartDialSearchFragment;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 339
    const-string v4, "DialtactsActivity"

    const-string v5, "MTK-DialerSearch, SmartDialSearchFragment"

    invoke-static {v4, v5}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;
    invoke-static {v4}, Lcom/android/dialer/DialtactsActivity;->access$1300(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/SmartDialSearchFragment;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/android/dialer/list/SmartDialSearchFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 342
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # setter for: Lcom/android/dialer/DialtactsActivity;->mFirstQuery:Z
    invoke-static {v4, v3}, Lcom/android/dialer/DialtactsActivity;->access$602(Lcom/android/dialer/DialtactsActivity;Z)Z

    goto/16 :goto_0

    .line 345
    :cond_9
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;
    invoke-static {v4}, Lcom/android/dialer/DialtactsActivity;->access$1400(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/RegularSearchFragment;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 346
    const-string v4, "DialtactsActivity"

    const-string v5, "MTK-DialerSearch, RegularSearchFragment"

    invoke-static {v4, v5}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;
    invoke-static {v4}, Lcom/android/dialer/DialtactsActivity;->access$1400(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/RegularSearchFragment;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/android/dialer/list/RegularSearchFragment;->setQueryString(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method
