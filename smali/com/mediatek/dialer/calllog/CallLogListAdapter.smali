.class public Lcom/mediatek/dialer/calllog/CallLogListAdapter;
.super Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;
.source "CallLogListAdapter.java"


# instance fields
.field private mCallLogFragment:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

.field private mContext:Landroid/content/Context;

.field private mSelectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$CallFetcher;Lcom/mediatek/dialer/calllogex/ContactInfoHelperEx;Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callFetcher"    # Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$CallFetcher;
    .param p3, "contactInfoHelper"    # Lcom/mediatek/dialer/calllogex/ContactInfoHelperEx;
    .param p4, "callLogFragment"    # Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;-><init>(Landroid/content/Context;Lcom/mediatek/dialer/calllogex/CallLogAdapterEx$CallFetcher;Lcom/mediatek/dialer/calllogex/ContactInfoHelperEx;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->mSelectedPosition:I

    .line 25
    iput-object p4, p0, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->mCallLogFragment:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    .line 26
    iput-object p1, p0, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;Landroid/database/Cursor;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "count"    # I

    .prologue
    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/mediatek/dialer/calllogex/CallLogAdapterEx;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    move-object v0, p1

    .line 41
    check-cast v0, Lcom/mediatek/dialer/calllog/CallLogListItemView;

    .line 44
    .local v0, "itemView":Lcom/mediatek/dialer/calllog/CallLogListItemView;
    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->mCallLogFragment:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->mCallLogFragment:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    sget-boolean v1, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->ISTABLET_LAND:Z

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/dialer/calllogex/IntentProviderEx;

    iget-object v2, p0, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mediatek/dialer/calllogex/IntentProviderEx;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "TAGID"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->setTagId(I)V

    .line 51
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getTagId()I

    move-result v1

    iget v2, p0, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->mSelectedPosition:I

    if-ne v1, v2, :cond_2

    .line 52
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->itemSetSelect(Lcom/mediatek/dialer/calllog/CallLogListItemView;Lcom/mediatek/dialer/calllog/CallLogListItemView;)V

    .line 53
    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->mCallLogFragment:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->mCallLogFragment:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    invoke-virtual {v1, v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->setOldItemView(Lcom/mediatek/dialer/calllog/CallLogListItemView;)V

    .line 62
    :cond_1
    :goto_0
    return-void

    .line 59
    :cond_2
    invoke-virtual {v0}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getSelectImageView()Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->mSelectedPosition:I

    return v0
.end method

.method public itemSetSelect(Lcom/mediatek/dialer/calllog/CallLogListItemView;Lcom/mediatek/dialer/calllog/CallLogListItemView;)V
    .locals 2
    .param p1, "newItemView"    # Lcom/mediatek/dialer/calllog/CallLogListItemView;
    .param p2, "oldItemView"    # Lcom/mediatek/dialer/calllog/CallLogListItemView;

    .prologue
    .line 67
    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p2}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getSelectImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p2}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getSelectImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->mCallLogFragment:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    sget-boolean v0, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->ISTABLET_LAND:Z

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p1}, Lcom/mediatek/dialer/calllog/CallLogListItemView;->getSelectImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    :cond_1
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .param p1, "selectedPosition"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/mediatek/dialer/calllog/CallLogListAdapter;->mSelectedPosition:I

    .line 35
    return-void
.end method
