.class Lcom/android/dialer/dialpad/DialpadFragment$1;
.super Landroid/telephony/PhoneStateListener;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 364
    if-nez p1, :cond_1

    .line 374
    invoke-static {}, Lcom/android/dialer/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v0

    .line 375
    .local v0, "phoneIsInUse":Z
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # invokes: Lcom/android/dialer/dialpad/DialpadFragment;->isDialpadChooserVisible()Z
    invoke-static {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->access$000(Lcom/android/dialer/dialpad/DialpadFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    if-nez v0, :cond_0

    .line 377
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    const/4 v2, 0x0

    # invokes: Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooser(Z)V
    invoke-static {v1, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->access$100(Lcom/android/dialer/dialpad/DialpadFragment;Z)V

    .line 378
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->adjustListViewLayoutParameters()V

    .line 382
    :cond_0
    if-nez v0, :cond_1

    .line 383
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # getter for: Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->access$200(Lcom/android/dialer/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 384
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # getter for: Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->access$200(Lcom/android/dialer/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 388
    .end local v0    # "phoneIsInUse":Z
    :cond_1
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 392
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceStateChanged, serviceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "newIso":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # getter for: Lcom/android/dialer/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->access$300(Lcom/android/dialer/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # getter for: Lcom/android/dialer/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->access$300(Lcom/android/dialer/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # setter for: Lcom/android/dialer/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->access$302(Lcom/android/dialer/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 402
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # getter for: Lcom/android/dialer/dialpad/DialpadFragment;->mTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->access$400(Lcom/android/dialer/dialpad/DialpadFragment;)Landroid/text/TextWatcher;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 403
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # getter for: Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->access$200(Lcom/android/dialer/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # getter for: Lcom/android/dialer/dialpad/DialpadFragment;->mTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v2}, Lcom/android/dialer/dialpad/DialpadFragment;->access$400(Lcom/android/dialer/dialpad/DialpadFragment;)Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 406
    :cond_2
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "re-set phone number formatting text watcher, mCurrentCountryIso = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # getter for: Lcom/android/dialer/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/dialer/dialpad/DialpadFragment;->access$300(Lcom/android/dialer/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newIso = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # getter for: Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->access$200(Lcom/android/dialer/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # getter for: Lcom/android/dialer/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/dialer/dialpad/DialpadFragment;->access$500(Lcom/android/dialer/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 409
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # getter for: Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/dialer/dialpad/DialpadFragment;->access$200(Lcom/android/dialer/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # getter for: Lcom/android/dialer/dialpad/DialpadFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/dialer/dialpad/DialpadFragment;->access$500(Lcom/android/dialer/dialpad/DialpadFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/contacts/common/util/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;Landroid/os/Handler;)V

    goto/16 :goto_0
.end method
