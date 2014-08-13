.class Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;
.super Landroid/os/AsyncTask;
.source "CallLogFragmentEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->updateData([Landroid/net/Uri;)V
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
.field final synthetic this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

.field final synthetic val$callUris:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;[Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1455
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    iput-object p2, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1455
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->doInBackground([Ljava/lang/Void;)[Lcom/mediatek/dialer/PhoneCallDetailsEx;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)[Lcom/mediatek/dialer/PhoneCallDetailsEx;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1460
    iget-object v4, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    array-length v3, v4

    .line 1461
    .local v3, "numCalls":I
    new-array v0, v3, [Lcom/mediatek/dialer/PhoneCallDetailsEx;

    .line 1463
    .local v0, "details":[Lcom/mediatek/dialer/PhoneCallDetailsEx;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1464
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    iget-object v5, p0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    aget-object v5, v5, v2

    # invokes: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/mediatek/dialer/PhoneCallDetailsEx;
    invoke-static {v4, v5}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$1800(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Landroid/net/Uri;)Lcom/mediatek/dialer/PhoneCallDetailsEx;

    move-result-object v4

    aput-object v4, v0, v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1463
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1467
    :catch_0
    move-exception v1

    .line 1469
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "CallLogFragmentEx"

    const-string v5, "invalid URI starting call details"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1470
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
    .line 1455
    check-cast p1, [Lcom/mediatek/dialer/PhoneCallDetailsEx;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->onPostExecute([Lcom/mediatek/dialer/PhoneCallDetailsEx;)V

    return-void
.end method

.method public onPostExecute([Lcom/mediatek/dialer/PhoneCallDetailsEx;)V
    .locals 37
    .param p1, "details"    # [Lcom/mediatek/dialer/PhoneCallDetailsEx;

    .prologue
    .line 1477
    if-nez p1, :cond_0

    .line 1767
    :goto_0
    return-void

    .line 1483
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    aget-object v25, p1, v2

    .line 1484
    .local v25, "firstDetails":Lcom/mediatek/dialer/PhoneCallDetailsEx;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$1902(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Ljava/lang/String;)Ljava/lang/String;

    .line 1485
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->contactUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    .line 1486
    .local v21, "contactUri":Landroid/net/Uri;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->photoUri:Landroid/net/Uri;

    move-object/from16 v36, v0

    .line 1489
    .local v36, "photoUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneCallDetailsHelper:Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$2100(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$2000(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;->setCallDetailsHeader(Landroid/widget/TextView;Lcom/mediatek/dialer/PhoneCallDetailsEx;)V

    .line 1493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$2200(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$1900(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    iget v4, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->simId:I

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->getCallUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v35

    .line 1496
    .local v35, "numberCallUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$2200(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$1900(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v20

    .line 1499
    .local v20, "canPlaceCallsTo":Z
    const/16 v27, 0x0

    .line 1501
    .local v27, "isVoicemailNumber":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$2200(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$1900(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v26

    .line 1510
    .local v26, "isSipNumber":Z
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1511
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->name:Ljava/lang/CharSequence;

    move-object/from16 v34, v0

    .line 1516
    .local v34, "nameOrNumber":Ljava/lang/CharSequence;
    :goto_1
    if-eqz v21, :cond_8

    .line 1517
    new-instance v33, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1520
    .local v33, "mainActionIntent":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1522
    const v32, 0x7f020091

    .line 1523
    .local v32, "mainActionIcon":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    const v3, 0x7f0a05a0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v34, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 1566
    .local v31, "mainActionDescription":Ljava/lang/String;
    :goto_2
    if-nez v33, :cond_b

    .line 1567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mMainActionView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$2300(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$2400(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/ImageButton;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$2000(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHeaderOverlayView:Landroid/view/View;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$2500(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1587
    :goto_3
    if-eqz v20, :cond_e

    .line 1588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$2200(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    move-result-object v2

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v22

    .line 1597
    .local v22, "displayNumber":Ljava/lang/CharSequence;
    invoke-static/range {v35 .. v35}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->isVoicemailUri(Landroid/net/Uri;)Z

    move-result v28

    .line 1598
    .local v28, "isVoicemailUri":Z
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    move-object/from16 v0, v25

    iget v3, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->simId:I

    invoke-virtual {v2, v3}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v6

    .line 1599
    .local v6, "slotId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$1900(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/dialer/util/DialerUtils;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.phone.extra.original"

    move-object/from16 v0, v25

    iget v4, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->simId:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v19

    .line 1601
    .local v19, "callIntent":Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.OutgoingCallBroadcaster"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1602
    if-eqz v28, :cond_1

    const/4 v2, -0x1

    if-eq v6, v2, :cond_1

    .line 1603
    const-string v2, "simId"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1605
    :cond_1
    new-instance v23, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    const v3, 0x7f0a05a6

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v22 .. v22}, Lcom/mediatek/dialer/util/DialerUtils;->forceLeftToRight(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    const v4, 0x7f0a05a1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v34, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v2, v1, v3}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1611
    .local v23, "entry":Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1616
    move-object/from16 v0, v25

    iget v2, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->numberType:I

    if-nez v2, :cond_c

    .line 1617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    iget-object v2, v2, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0459

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->label:Ljava/lang/CharSequence;

    .line 1636
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$2200(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$1900(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;->canSendSmsTo(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHasSms:Z
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$2600(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1637
    const v2, 0x7f0201ba

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "sms"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$1900(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v5, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    const v5, 0x7f0a05a2

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v34, v7, v8

    invoke-virtual {v4, v5, v7}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->setSecondaryAction(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 1646
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    move-object/from16 v0, v25

    iget v3, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->simId:I

    # invokes: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->setSimInfo(I)V
    invoke-static {v2, v3}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$2700(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;I)V

    .line 1650
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v35

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

    move-result-object v30

    .line 1653
    .local v30, "itThird":Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.OutgoingCallBroadcaster"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1655
    if-eqz v28, :cond_4

    const/4 v2, -0x1

    if-eq v6, v2, :cond_4

    .line 1656
    const-string v2, "simId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1658
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    const v3, 0x7f0a0412

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v22 .. v22}, Lcom/mediatek/dialer/util/DialerUtils;->forceLeftToRight(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    const v4, 0x7f0a05a1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v34, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v2, v1, v3}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->setThirdAction(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1665
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v2

    if-eqz v2, :cond_d

    .line 1666
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v35

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

    move-result-object v29

    .line 1670
    .local v29, "itFourth":Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.OutgoingCallBroadcaster"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1672
    if-eqz v28, :cond_5

    const/4 v2, -0x1

    if-eq v6, v2, :cond_5

    .line 1673
    const-string v2, "simId"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1675
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    const v3, 0x7f0a0413

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v22 .. v22}, Lcom/mediatek/dialer/util/DialerUtils;->forceLeftToRight(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    const v4, 0x7f0a05a1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v34, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v2, v1, v3}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->setFourthAction(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1682
    .end local v29    # "itFourth":Landroid/content/Intent;
    :goto_5
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->geocode:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->geocode:Ljava/lang/CharSequence;

    .line 1685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    move-object/from16 v0, v23

    # invokes: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->configureCallButton(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;)V
    invoke-static {v2, v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$2800(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;)V

    .line 1686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    move-object/from16 v0, v22

    # setter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneNumberToCopy:Ljava/lang/CharSequence;
    invoke-static {v2, v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$2902(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->label:Ljava/lang/CharSequence;

    # setter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$3002(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1689
    const/4 v9, 0x0

    .line 1690
    .local v9, "name":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1691
    .local v10, "number":Ljava/lang/String;
    if-eqz v25, :cond_6

    .line 1692
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1693
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->name:Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    .line 1694
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->name:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1697
    :cond_6
    const-string v2, "CallLogFragmentEx"

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

    .line 1698
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getCallDetailExtension()Lcom/mediatek/contacts/ext/CallDetailExtension;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-virtual {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v11, 0x7f0d008a

    const v12, 0x7f0d0089

    const v13, 0x7f0d008b

    const v14, 0x7f0d008c

    const v15, 0x7f0d008d

    const v16, 0x7f0d008f

    const v17, 0x7f0d008e

    const-string v18, "ExtenstionForRCS"

    invoke-virtual/range {v7 .. v18}, Lcom/mediatek/contacts/ext/CallDetailExtension;->setViewVisibleByActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/lang/String;)V

    .line 1714
    .end local v6    # "slotId":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "number":Ljava/lang/String;
    .end local v19    # "callIntent":Landroid/content/Intent;
    .end local v22    # "displayNumber":Ljava/lang/CharSequence;
    .end local v23    # "entry":Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;
    .end local v28    # "isVoicemailUri":Z
    .end local v30    # "itThird":Landroid/content/Intent;
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    if-eqz v20, :cond_f

    if-nez v26, :cond_f

    const/4 v2, 0x1

    :goto_7
    # setter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHasEditNumberBeforeCallOption:Z
    invoke-static {v3, v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$3102(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Z)Z

    .line 1716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-virtual {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1720
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->historyList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$3400(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/ListView;

    move-result-object v2

    new-instance v11, Lcom/mediatek/dialer/calllogex/CallDetailHistoryAdapterEx;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-virtual {v3}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getActivity()Landroid/app/Activity;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    iget-object v13, v3, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mCallTypeHelper:Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;
    invoke-static {v3}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$3200(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;

    move-result-object v14

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mControls:Landroid/view/View;
    invoke-static {v3}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$3300(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v15, p1

    move/from16 v17, v20

    invoke-direct/range {v11 .. v18}, Lcom/mediatek/dialer/calllogex/CallDetailHistoryAdapterEx;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/mediatek/dialer/calllogex/CallTypeHelperEx;[Lcom/mediatek/dialer/PhoneCallDetailsEx;ZZLandroid/view/View;)V

    invoke-virtual {v2, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1728
    new-instance v2, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask$2;-><init>(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->historyList:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$3400(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/ListView;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/dialer/BackScrollManager;->bind(Lcom/android/dialer/BackScrollManager$ScrollableHeader;Landroid/widget/ListView;)V

    .line 1750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    move-object/from16 v0, v36

    # invokes: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->loadContactPhotos(Landroid/net/Uri;)V
    invoke-static {v2, v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$3800(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Landroid/net/Uri;)V

    .line 1751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mCallDetail:Landroid/view/View;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$3900(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1752
    if-nez v20, :cond_10

    .line 1753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSimName:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$4000(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1754
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSeparator:Landroid/view/View;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$3700(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSeparator02:Landroid/view/View;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$4100(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mConvertView2:Landroid/view/View;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$4200(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1763
    .end local v20    # "canPlaceCallsTo":Z
    .end local v21    # "contactUri":Landroid/net/Uri;
    .end local v25    # "firstDetails":Lcom/mediatek/dialer/PhoneCallDetailsEx;
    .end local v26    # "isSipNumber":Z
    .end local v27    # "isVoicemailNumber":Z
    .end local v31    # "mainActionDescription":Ljava/lang/String;
    .end local v32    # "mainActionIcon":I
    .end local v33    # "mainActionIntent":Landroid/content/Intent;
    .end local v34    # "nameOrNumber":Ljava/lang/CharSequence;
    .end local v35    # "numberCallUri":Landroid/net/Uri;
    .end local v36    # "photoUri":Landroid/net/Uri;
    :catch_0
    move-exception v24

    .line 1764
    .local v24, "ex":Ljava/lang/Exception;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1513
    .end local v24    # "ex":Ljava/lang/Exception;
    .restart local v20    # "canPlaceCallsTo":Z
    .restart local v21    # "contactUri":Landroid/net/Uri;
    .restart local v25    # "firstDetails":Lcom/mediatek/dialer/PhoneCallDetailsEx;
    .restart local v26    # "isSipNumber":Z
    .restart local v27    # "isVoicemailNumber":Z
    .restart local v35    # "numberCallUri":Landroid/net/Uri;
    .restart local v36    # "photoUri":Landroid/net/Uri;
    :cond_7
    :try_start_1
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->number:Ljava/lang/CharSequence;

    move-object/from16 v34, v0

    .restart local v34    # "nameOrNumber":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1544
    :cond_8
    if-eqz v20, :cond_a

    .line 1545
    new-instance v33, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT_OR_EDIT"

    move-object/from16 v0, v33

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1546
    .restart local v33    # "mainActionIntent":Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.item/contact"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1549
    if-eqz v26, :cond_9

    .line 1550
    const-string v2, "sip_address"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$1900(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1556
    :goto_8
    const v32, 0x7f02007a

    .line 1557
    .restart local v32    # "mainActionIcon":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    const v3, 0x7f0a059f

    invoke-virtual {v2, v3}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->getString(I)Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "mainActionDescription":Ljava/lang/String;
    goto/16 :goto_2

    .line 1553
    .end local v31    # "mainActionDescription":Ljava/lang/String;
    .end local v32    # "mainActionIcon":I
    :cond_9
    const-string v2, "phone"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$1900(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_8

    .line 1561
    .end local v33    # "mainActionIntent":Landroid/content/Intent;
    :cond_a
    const/16 v33, 0x0

    .line 1562
    .restart local v33    # "mainActionIntent":Landroid/content/Intent;
    const/16 v32, 0x0

    .line 1563
    .restart local v32    # "mainActionIcon":I
    const/16 v31, 0x0

    .restart local v31    # "mainActionDescription":Ljava/lang/String;
    goto/16 :goto_2

    .line 1572
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mMainActionView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$2300(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mMainActionView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$2300(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/ImageView;

    move-result-object v2

    move/from16 v0, v32

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$2400(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$2400(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/ImageButton;

    move-result-object v2

    new-instance v3, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v3, v0, v1}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask$1;-><init>(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$2400(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/ImageButton;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$2000(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mHeaderOverlayView:Landroid/view/View;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$2500(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1623
    .restart local v6    # "slotId":I
    .restart local v19    # "callIntent":Landroid/content/Intent;
    .restart local v22    # "displayNumber":Ljava/lang/CharSequence;
    .restart local v23    # "entry":Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;
    .restart local v28    # "isVoicemailUri":Z
    :cond_c
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/mediatek/contacts/ext/ContactAccountExtension;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    iget-object v3, v3, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, v25

    iget v4, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->numberType:I

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/mediatek/dialer/PhoneCallDetailsEx;->numberLabel:Ljava/lang/CharSequence;

    const-string v7, "ExtensionForAAS"

    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->label:Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 1679
    .restart local v30    # "itThird":Landroid/content/Intent;
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;->fourthIntent:Landroid/content/Intent;

    goto/16 :goto_5

    .line 1705
    .end local v6    # "slotId":I
    .end local v19    # "callIntent":Landroid/content/Intent;
    .end local v22    # "displayNumber":Ljava/lang/CharSequence;
    .end local v23    # "entry":Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$ViewEntry;
    .end local v28    # "isVoicemailUri":Z
    .end local v30    # "itThird":Landroid/content/Intent;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    const/4 v3, 0x0

    # setter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneNumberToCopy:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$2902(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    const/4 v3, 0x0

    # setter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$3002(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto/16 :goto_6

    .line 1714
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 1758
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSimName:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$4000(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSeparator:Landroid/view/View;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$3700(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mSeparator02:Landroid/view/View;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$4100(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx$1UpdateContactDetailsTask;->this$0:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->mConvertView2:Landroid/view/View;
    invoke-static {v2}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->access$4200(Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
