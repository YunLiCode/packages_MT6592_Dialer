.class public Lcom/mediatek/contacts/ext/CallDetailExtension;
.super Ljava/lang/Object;
.source "CallDetailExtension.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallDetailExtension"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackgroundForUpdateData([Landroid/net/Uri;[Lcom/mediatek/dialer/PhoneCallDetailsEx;)[Lcom/mediatek/dialer/PhoneCallDetailsEx;
    .locals 0
    .param p1, "callUris"    # [Landroid/net/Uri;
    .param p2, "phoneCallDetails"    # [Lcom/mediatek/dialer/PhoneCallDetailsEx;

    .prologue
    .line 82
    return-object p2
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, ""

    return-object v0
.end method

.method public isNeedAutoRejectedMenu(ZLjava/lang/String;)Z
    .locals 1
    .param p1, "isAutoRejectedFilterMode"    # Z
    .param p2, "commd"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/app/Activity;Lcom/mediatek/contacts/ext/IPhoneNumberHelper;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "phoneNumberHelper"    # Lcom/mediatek/contacts/ext/IPhoneNumberHelper;

    .prologue
    .line 59
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public setChar(ZLjava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "notSPChar"    # Z
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "spChar"    # Ljava/lang/String;
    .param p4, "charType"    # I
    .param p5, "secondSelection"    # Z
    .param p6, "commd"    # Ljava/lang/String;

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public setSimInfo(ILandroid/widget/TextView;)Z
    .locals 1
    .param p1, "simId"    # I
    .param p2, "simIndicator"    # Landroid/widget/TextView;

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public setTextView(ILandroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "callType"    # I
    .param p2, "durationView"    # Landroid/widget/TextView;
    .param p3, "formatDuration"    # Ljava/lang/String;
    .param p4, "commd"    # Ljava/lang/String;

    .prologue
    .line 23
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 24
    :cond_0
    const-string v0, "CallDetailExtension"

    const-string v1, "[setTextView] is gone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31
    :goto_0
    return-void

    .line 27
    :cond_1
    const-string v0, "CallDetailExtension"

    const-string v1, "[setTextView] is visible"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setViewVisible(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IIIIIII)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "commd1"    # Ljava/lang/String;
    .param p3, "commd2"    # Ljava/lang/String;
    .param p4, "rse1"    # I
    .param p5, "res2"    # I
    .param p6, "res3"    # I
    .param p7, "res4"    # I
    .param p8, "res5"    # I
    .param p9, "res6"    # I
    .param p10, "res7"    # I

    .prologue
    .line 48
    return-void
.end method

.method public setViewVisibleByActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "commd1"    # Ljava/lang/String;
    .param p3, "commd2"    # Ljava/lang/String;
    .param p4, "rse1"    # I
    .param p5, "res2"    # I
    .param p6, "res3"    # I
    .param p7, "res4"    # I
    .param p8, "res5"    # I
    .param p9, "res6"    # I
    .param p10, "res7"    # I
    .param p11, "commd"    # Ljava/lang/String;

    .prologue
    .line 56
    return-void
.end method
