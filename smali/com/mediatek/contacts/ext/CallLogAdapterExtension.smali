.class public Lcom/mediatek/contacts/ext/CallLogAdapterExtension;
.super Ljava/lang/Object;
.source "CallLogAdapterExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindViewPre(Landroid/view/View;Landroid/database/Cursor;ILcom/mediatek/dialer/calllogex/ContactInfoEx;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "count"    # I
    .param p4, "contactInfo"    # Lcom/mediatek/dialer/calllogex/ContactInfoEx;

    .prologue
    .line 64
    return-void
.end method

.method public setListItemViewTag(Landroid/view/View;Lcom/mediatek/dialer/calllogex/ContactInfoEx;Landroid/database/Cursor;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "contactInfo"    # Lcom/mediatek/dialer/calllogex/ContactInfoEx;
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "callDetailIntent"    # Landroid/content/Intent;

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method
