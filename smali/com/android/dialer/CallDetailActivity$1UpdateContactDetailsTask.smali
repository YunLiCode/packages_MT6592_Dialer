.class Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;
.super Landroid/os/AsyncTask;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/CallDetailActivity;->updateData([Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateContactDetailsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/mediatek/dialer/PhoneCallDetailsEx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/CallDetailActivity;

.field final synthetic val$callUris:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/dialer/CallDetailActivity;[Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iput-object p2, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 570
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->doInBackground([Ljava/lang/Void;)[Lcom/mediatek/dialer/PhoneCallDetailsEx;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)[Lcom/mediatek/dialer/PhoneCallDetailsEx;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 575
    iget-object v4, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    array-length v3, v4

    .line 576
    .local v3, "numCalls":I
    new-array v0, v3, [Lcom/mediatek/dialer/PhoneCallDetailsEx;

    .line 578
    .local v0, "details":[Lcom/mediatek/dialer/PhoneCallDetailsEx;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 579
    :try_start_0
    iget-object v4, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v5, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    aget-object v5, v5, v2

    # invokes: Lcom/android/dialer/CallDetailActivity;->getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/mediatek/dialer/PhoneCallDetailsEx;
    invoke-static {v4, v5}, Lcom/android/dialer/CallDetailActivity;->access$500(Lcom/android/dialer/CallDetailActivity;Landroid/net/Uri;)Lcom/mediatek/dialer/PhoneCallDetailsEx;

    move-result-object v4

    aput-object v4, v0, v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 582
    :catch_0
    move-exception v1

    .line 584
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "CallDetailActivity"

    const-string v5, "invalid URI starting call details"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 585
    const/4 v0, 0x0

    .end local v0    # "details":[Lcom/mediatek/dialer/PhoneCallDetailsEx;
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 570
    check-cast p1, [Lcom/mediatek/dialer/PhoneCallDetailsEx;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->onPostExecute([Lcom/mediatek/dialer/PhoneCallDetailsEx;)V

    return-void
.end method

.method public onPostExecute([Lcom/mediatek/dialer/PhoneCallDetailsEx;)V
    .locals 40
    .param p1, "details"    # [Lcom/mediatek/dialer/PhoneCallDetailsEx;

    .prologue
    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v2}, Lcom/android/dialer/CallDetailActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 592
    const-string v2, "CallDetailActivity"

    const-string v3, "[updateData] onPostExecute, activity finished."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :goto_0
    return-void

    .line 595
    :cond_0
    if-nez p1, :cond_1

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v3, 0x7f0a0591

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v2}, Lcom/android/dialer/CallDetailActivity;->finish()V

    goto :goto_0

    .line 605
    :cond_1
    const/4 v2, 0x0

    aget-object v25, p1, v2

    .line 606
    .local v25, "firstDetails":Lcom/mediatek/dialer/PhoneCallDetailsEx;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/dialer/CallDetailActivity;->access$602(Lcom/android/dialer/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 607
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->contactUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    .line 608
    .local v22, "contactUri":Landroid/net/Uri;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->photoUri:Landroid/net/Uri;

    move-object/from16 v38, v0

    .line 611
    .local v38, "photoUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$800(Lcom/android/dialer/CallDetailActivity;)Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/dialer/CallDetailActivity;->access$700(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->setCallDetailsHeader(Landroid/widget/TextView;Lcom/mediatek/dialer/PhoneCallDetailsEx;)V

    .line 615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$900(Lcom/android/dialer/CallDetailActivity;)Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/dialer/CallDetailActivity;->access$600(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    iget v4, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->simId:I

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->getCallUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v37

    .line 618
    .local v37, "numberCallUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$900(Lcom/android/dialer/CallDetailActivity;)Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/dialer/CallDetailActivity;->access$600(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v21

    .line 619
    .local v21, "canPlaceCallsTo":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$900(Lcom/android/dialer/CallDetailActivity;)Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/dialer/CallDetailActivity;->access$600(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    iget v4, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->simId:I

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->isVoicemailNumber(Ljava/lang/CharSequence;I)Z

    move-result v29

    .line 620
    .local v29, "isVoicemailNumber":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$900(Lcom/android/dialer/CallDetailActivity;)Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/dialer/CallDetailActivity;->access$600(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    iget v4, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->simId:I

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->isEmergencyNumber(Ljava/lang/CharSequence;I)Z

    move-result v27

    .line 621
    .local v27, "isEmergencyNumber":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$900(Lcom/android/dialer/CallDetailActivity;)Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/dialer/CallDetailActivity;->access$600(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v28

    .line 630
    .local v28, "isSipNumber":Z
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 631
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->name:Ljava/lang/CharSequence;

    move-object/from16 v36, v0

    .line 636
    .local v36, "nameOrNumber":Ljava/lang/CharSequence;
    :goto_1
    const/16 v39, 0x0

    .line 642
    .local v39, "skipBind":Z
    const-string v2, "CallDetailActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onPostExecute]contactUri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isVoicemailNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", canPlaceCallsTo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    if-eqz v22, :cond_a

    .line 646
    new-instance v35, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 649
    .local v35, "mainActionIntent":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 651
    const v34, 0x7f020091

    .line 652
    .local v34, "mainActionIcon":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v3, 0x7f0a05a0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v36, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/dialer/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    .line 694
    .local v33, "mainActionDescription":Ljava/lang/String;
    :goto_2
    const-string v2, "CallDetailActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onPostExecute]mainActionIntent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    if-nez v35, :cond_11

    .line 696
    if-nez v27, :cond_2

    if-eqz v29, :cond_10

    .line 697
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1100(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1200(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1300(Lcom/android/dialer/CallDetailActivity;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$700(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 733
    :goto_3
    if-eqz v21, :cond_14

    .line 734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$900(Lcom/android/dialer/CallDetailActivity;)Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    move-result-object v2

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v23

    .line 743
    .local v23, "displayNumber":Ljava/lang/CharSequence;
    invoke-static/range {v37 .. v37}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->isVoicemailUri(Landroid/net/Uri;)Z

    move-result v30

    .line 744
    .local v30, "isVoicemailUri":Z
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    move-object/from16 v0, v25

    iget v3, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->simId:I

    invoke-virtual {v2, v3}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v6

    .line 745
    .local v6, "slotId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$600(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.phone.extra.original"

    move-object/from16 v0, v25

    iget v4, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->simId:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v20

    .line 747
    .local v20, "callIntent":Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.OutgoingCallBroadcaster"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    if-eqz v30, :cond_3

    const/4 v2, -0x1

    if-eq v6, v2, :cond_3

    .line 749
    const-string v2, "simId"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 751
    :cond_3
    new-instance v24, Lcom/android/dialer/CallDetailActivity$ViewEntry;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v3, 0x7f0a05a6

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v23 .. v23}, Lcom/mediatek/dialer/util/DialerUtils;->forceLeftToRight(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/dialer/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v4, 0x7f0a05a1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v36, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/dialer/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-direct {v0, v2, v1, v3}, Lcom/android/dialer/CallDetailActivity$ViewEntry;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 757
    .local v24, "entry":Lcom/android/dialer/CallDetailActivity$ViewEntry;
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 762
    move-object/from16 v0, v25

    iget v2, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->numberType:I

    if-nez v2, :cond_12

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v2, v2, Lcom/android/dialer/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0459

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    .line 782
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$900(Lcom/android/dialer/CallDetailActivity;)Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/dialer/CallDetailActivity;->access$600(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->canSendSmsTo(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mHasSms:Z
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1400(Lcom/android/dialer/CallDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 783
    const v2, 0x7f0201ba

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "sms"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/dialer/CallDetailActivity;->access$600(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v5, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v5, 0x7f0a05a2

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v36, v7, v8

    invoke-virtual {v4, v5, v7}, Lcom/android/dialer/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/dialer/CallDetailActivity$ViewEntry;->setSecondaryAction(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 792
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v0, v25

    iget v3, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->simId:I

    # invokes: Lcom/android/dialer/CallDetailActivity;->setSimInfo(I)V
    invoke-static {v2, v3}, Lcom/android/dialer/CallDetailActivity;->access$1500(Lcom/android/dialer/CallDetailActivity;I)V

    .line 796
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v37

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "com.android.phone.extra.video"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.phone.extra.original"

    move-object/from16 v0, v25

    iget v4, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->simId:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v32

    .line 799
    .local v32, "itThird":Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.OutgoingCallBroadcaster"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    if-eqz v30, :cond_6

    const/4 v2, -0x1

    if-eq v6, v2, :cond_6

    .line 802
    const-string v2, "simId"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 804
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v3, 0x7f0a0412

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v23 .. v23}, Lcom/mediatek/dialer/util/DialerUtils;->forceLeftToRight(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/dialer/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v4, 0x7f0a05a1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v36, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/dialer/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/dialer/CallDetailActivity$ViewEntry;->setThirdAction(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 811
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v2

    if-eqz v2, :cond_13

    .line 812
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v37

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "com.android.phone.extra.original"

    move-object/from16 v0, v25

    iget v4, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->simId:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.phone.extra.ip"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.phone.extra.original"

    move-object/from16 v0, v25

    iget v4, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->simId:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v31

    .line 816
    .local v31, "itFourth":Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.OutgoingCallBroadcaster"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 818
    if-eqz v30, :cond_7

    const/4 v2, -0x1

    if-eq v6, v2, :cond_7

    .line 819
    const-string v2, "simId"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 821
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v3, 0x7f0a0413

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v23 .. v23}, Lcom/mediatek/dialer/util/DialerUtils;->forceLeftToRight(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/dialer/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v4, 0x7f0a05a1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v36, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/dialer/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/dialer/CallDetailActivity$ViewEntry;->setFourthAction(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 828
    .end local v31    # "itFourth":Landroid/content/Intent;
    :goto_5
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->geocode:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->geocode:Ljava/lang/CharSequence;

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v0, v24

    # invokes: Lcom/android/dialer/CallDetailActivity;->configureCallButton(Lcom/android/dialer/CallDetailActivity$ViewEntry;)V
    invoke-static {v2, v0}, Lcom/android/dialer/CallDetailActivity;->access$1600(Lcom/android/dialer/CallDetailActivity;Lcom/android/dialer/CallDetailActivity$ViewEntry;)V

    .line 834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/dialer/CallDetailActivity;->access$600(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Lcom/android/dialer/CallDetailActivity;->access$1702(Lcom/android/dialer/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 836
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    # setter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Lcom/android/dialer/CallDetailActivity;->access$1802(Lcom/android/dialer/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 838
    const/4 v9, 0x0

    .line 839
    .local v9, "name":Ljava/lang/String;
    const/4 v10, 0x0

    .line 840
    .local v10, "number":Ljava/lang/String;
    if-eqz v25, :cond_8

    .line 841
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 842
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->name:Ljava/lang/CharSequence;

    if-eqz v2, :cond_8

    .line 843
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->name:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 846
    :cond_8
    const-string v2, "CallDetailActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateData name, number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getCallDetailExtension()Lcom/mediatek/contacts/ext/CallDetailExtension;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v11, 0x7f0d008a

    const v12, 0x7f0d0089

    const v13, 0x7f0d008b

    const v14, 0x7f0d008c

    const v15, 0x7f0d008d

    const v16, 0x7f0d008f

    const v17, 0x7f0d008e

    const-string v18, "ExtenstionForRCS"

    invoke-virtual/range {v7 .. v18}, Lcom/mediatek/contacts/ext/CallDetailExtension;->setViewVisibleByActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/lang/String;)V

    .line 859
    .end local v6    # "slotId":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "number":Ljava/lang/String;
    .end local v20    # "callIntent":Landroid/content/Intent;
    .end local v23    # "displayNumber":Ljava/lang/CharSequence;
    .end local v24    # "entry":Lcom/android/dialer/CallDetailActivity$ViewEntry;
    .end local v30    # "isVoicemailUri":Z
    .end local v32    # "itThird":Landroid/content/Intent;
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    if-eqz v21, :cond_15

    if-nez v28, :cond_15

    if-nez v29, :cond_15

    const/4 v2, 0x1

    :goto_7
    # setter for: Lcom/android/dialer/CallDetailActivity;->mHasEditNumberBeforeCallOption:Z
    invoke-static {v3, v2}, Lcom/android/dialer/CallDetailActivity;->access$2002(Lcom/android/dialer/CallDetailActivity;Z)Z

    .line 861
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # invokes: Lcom/android/dialer/CallDetailActivity;->hasVoicemail()Z
    invoke-static {v3}, Lcom/android/dialer/CallDetailActivity;->access$2200(Lcom/android/dialer/CallDetailActivity;)Z

    move-result v3

    # setter for: Lcom/android/dialer/CallDetailActivity;->mHasTrashOption:Z
    invoke-static {v2, v3}, Lcom/android/dialer/CallDetailActivity;->access$2102(Lcom/android/dialer/CallDetailActivity;Z)Z

    .line 862
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # invokes: Lcom/android/dialer/CallDetailActivity;->hasVoicemail()Z
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$2200(Lcom/android/dialer/CallDetailActivity;)Z

    move-result v2

    if-nez v2, :cond_16

    const/4 v2, 0x1

    :goto_8
    # setter for: Lcom/android/dialer/CallDetailActivity;->mHasRemoveFromCallLogOption:Z
    invoke-static {v3, v2}, Lcom/android/dialer/CallDetailActivity;->access$2302(Lcom/android/dialer/CallDetailActivity;Z)Z

    .line 864
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v2}, Lcom/android/dialer/CallDetailActivity;->invalidateOptionsMenu()V

    .line 866
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v3, 0x7f0d004e

    invoke-virtual {v2, v3}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ListView;

    .line 868
    .local v26, "historyList":Landroid/widget/ListView;
    new-instance v11, Lcom/mediatek/dialer/calllogex/CallDetailHistoryAdapterEx;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v13, v2, Lcom/android/dialer/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mCallTypeHelper:Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$2400(Lcom/android/dialer/CallDetailActivity;)Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # invokes: Lcom/android/dialer/CallDetailActivity;->hasVoicemail()Z
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$2200(Lcom/android/dialer/CallDetailActivity;)Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v3, 0x7f0d004f

    invoke-virtual {v2, v3}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v15, p1

    move/from16 v17, v21

    invoke-direct/range {v11 .. v18}, Lcom/mediatek/dialer/calllogex/CallDetailHistoryAdapterEx;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;[Lcom/mediatek/dialer/PhoneCallDetailsEx;ZZLandroid/view/View;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 873
    new-instance v2, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$2;-><init>(Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;)V

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Lcom/android/dialer/BackScrollManager;->bind(Lcom/android/dialer/BackScrollManager$ScrollableHeader;Landroid/widget/ListView;)V

    .line 899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v0, v38

    # invokes: Lcom/android/dialer/CallDetailActivity;->loadContactPhotos(Landroid/net/Uri;)V
    invoke-static {v2, v0}, Lcom/android/dialer/CallDetailActivity;->access$2500(Lcom/android/dialer/CallDetailActivity;Landroid/net/Uri;)V

    .line 900
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 633
    .end local v26    # "historyList":Landroid/widget/ListView;
    .end local v33    # "mainActionDescription":Ljava/lang/String;
    .end local v34    # "mainActionIcon":I
    .end local v35    # "mainActionIntent":Landroid/content/Intent;
    .end local v36    # "nameOrNumber":Ljava/lang/CharSequence;
    .end local v39    # "skipBind":Z
    :cond_9
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    move-object/from16 v36, v0

    .restart local v36    # "nameOrNumber":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 653
    .restart local v39    # "skipBind":Z
    :cond_a
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/common/util/UriUtils;->isEncodedContactUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 654
    new-instance v19, Landroid/os/Bundle;

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 655
    .local v19, "bundle":Landroid/os/Bundle;
    const-string v2, "contact_uri_extra"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v2}, Lcom/android/dialer/CallDetailActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    invoke-static {v4}, Lcom/android/dialer/CallDetailActivity;->access$1000(Lcom/android/dialer/CallDetailActivity;)Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 657
    const/16 v35, 0x0

    .line 658
    .restart local v35    # "mainActionIntent":Landroid/content/Intent;
    const v34, 0x7f02007a

    .line 659
    .restart local v34    # "mainActionIcon":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v3, 0x7f0a059f

    invoke-virtual {v2, v3}, Lcom/android/dialer/CallDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 660
    .restart local v33    # "mainActionDescription":Ljava/lang/String;
    const/16 v39, 0x1

    .line 661
    goto/16 :goto_2

    .end local v19    # "bundle":Landroid/os/Bundle;
    .end local v33    # "mainActionDescription":Ljava/lang/String;
    .end local v34    # "mainActionIcon":I
    .end local v35    # "mainActionIntent":Landroid/content/Intent;
    :cond_b
    if-eqz v29, :cond_c

    .line 662
    const/16 v35, 0x0

    .line 663
    .restart local v35    # "mainActionIntent":Landroid/content/Intent;
    const/16 v34, 0x0

    .line 664
    .restart local v34    # "mainActionIcon":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v3, 0x7f0a0182

    invoke-virtual {v2, v3}, Lcom/android/dialer/CallDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    .restart local v33    # "mainActionDescription":Ljava/lang/String;
    goto/16 :goto_2

    .line 665
    .end local v33    # "mainActionDescription":Ljava/lang/String;
    .end local v34    # "mainActionIcon":I
    .end local v35    # "mainActionIntent":Landroid/content/Intent;
    :cond_c
    if-eqz v27, :cond_d

    .line 666
    const/16 v35, 0x0

    .line 667
    .restart local v35    # "mainActionIntent":Landroid/content/Intent;
    const/16 v34, 0x0

    .line 668
    .restart local v34    # "mainActionIcon":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v3, 0x7f0a03a4

    invoke-virtual {v2, v3}, Lcom/android/dialer/CallDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    .restart local v33    # "mainActionDescription":Ljava/lang/String;
    goto/16 :goto_2

    .line 669
    .end local v33    # "mainActionDescription":Ljava/lang/String;
    .end local v34    # "mainActionIcon":I
    .end local v35    # "mainActionIntent":Landroid/content/Intent;
    :cond_d
    if-eqz v21, :cond_f

    .line 670
    new-instance v35, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT_OR_EDIT"

    move-object/from16 v0, v35

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 671
    .restart local v35    # "mainActionIntent":Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.item/contact"

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    if-eqz v28, :cond_e

    .line 675
    const-string v2, "sip_address"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/dialer/CallDetailActivity;->access$600(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    :goto_9
    const v34, 0x7f02007a

    .line 681
    .restart local v34    # "mainActionIcon":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v3, 0x7f0a059f

    invoke-virtual {v2, v3}, Lcom/android/dialer/CallDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    .restart local v33    # "mainActionDescription":Ljava/lang/String;
    goto/16 :goto_2

    .line 677
    .end local v33    # "mainActionDescription":Ljava/lang/String;
    .end local v34    # "mainActionIcon":I
    :cond_e
    const-string v2, "phone"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/dialer/CallDetailActivity;->access$600(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_9

    .line 685
    .end local v35    # "mainActionIntent":Landroid/content/Intent;
    :cond_f
    const/16 v35, 0x0

    .line 686
    .restart local v35    # "mainActionIntent":Landroid/content/Intent;
    const/16 v34, 0x0

    .line 687
    .restart local v34    # "mainActionIcon":I
    const/16 v33, 0x0

    .restart local v33    # "mainActionDescription":Ljava/lang/String;
    goto/16 :goto_2

    .line 702
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1100(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1200(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$700(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1300(Lcom/android/dialer/CallDetailActivity;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 708
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1100(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 709
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1100(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/ImageView;

    move-result-object v2

    move/from16 v0, v34

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1200(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1200(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    new-instance v3, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v3, v0, v1}, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$1;-><init>(Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1200(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$700(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 729
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1300(Lcom/android/dialer/CallDetailActivity;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 769
    .restart local v6    # "slotId":I
    .restart local v20    # "callIntent":Landroid/content/Intent;
    .restart local v23    # "displayNumber":Ljava/lang/CharSequence;
    .restart local v24    # "entry":Lcom/android/dialer/CallDetailActivity$ViewEntry;
    .restart local v30    # "isVoicemailUri":Z
    :cond_12
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/mediatek/contacts/ext/ContactAccountExtension;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v3, v3, Lcom/android/dialer/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, v25

    iget v4, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->numberType:I

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->numberLabel:Ljava/lang/CharSequence;

    const-string v7, "ExtensionForAAS"

    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 825
    .restart local v32    # "itThird":Landroid/content/Intent;
    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->fourthIntent:Landroid/content/Intent;

    goto/16 :goto_5

    .line 853
    .end local v6    # "slotId":I
    .end local v20    # "callIntent":Landroid/content/Intent;
    .end local v23    # "displayNumber":Ljava/lang/CharSequence;
    .end local v24    # "entry":Lcom/android/dialer/CallDetailActivity$ViewEntry;
    .end local v30    # "isVoicemailUri":Z
    .end local v32    # "itThird":Landroid/content/Intent;
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # invokes: Lcom/android/dialer/CallDetailActivity;->disableCallButton()V
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1900(Lcom/android/dialer/CallDetailActivity;)V

    .line 854
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const/4 v3, 0x0

    # setter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Lcom/android/dialer/CallDetailActivity;->access$1702(Lcom/android/dialer/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 855
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const/4 v3, 0x0

    # setter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Lcom/android/dialer/CallDetailActivity;->access$1802(Lcom/android/dialer/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto/16 :goto_6

    .line 859
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 862
    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_8
.end method
