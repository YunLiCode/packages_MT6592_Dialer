.class public Lcom/mediatek/dialer/activities/CallLogMultipleChoiceActivity;
.super Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;
.source "CallLogMultipleChoiceActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallLogMultipleChoiceActivity"


# instance fields
.field protected mFragment:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;-><init>()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 114
    const-string v0, "CallLogMultipleChoiceActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method


# virtual methods
.method protected getClickListenerOfActionBarOKButton()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/mediatek/dialer/activities/CallLogMultipleChoiceActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/dialer/activities/CallLogMultipleChoiceActivity$1;-><init>(Lcom/mediatek/dialer/activities/CallLogMultipleChoiceActivity;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 70
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 95
    invoke-super {p0, p1, p2}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->onStart()V

    .line 42
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/CallLogMultipleChoiceActivity;->getMultipleDeleteFragment()Landroid/app/ListFragment;

    move-result-object v0

    check-cast v0, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;

    iput-object v0, p0, Lcom/mediatek/dialer/activities/CallLogMultipleChoiceActivity;->mFragment:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;

    .line 43
    iget-object v0, p0, Lcom/mediatek/dialer/activities/CallLogMultipleChoiceActivity;->mFragment:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;

    const/16 v1, 0x4e2b

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->setCallLogMultipleChoiceTypeFilter(I)V

    .line 44
    iget-object v0, p0, Lcom/mediatek/dialer/activities/CallLogMultipleChoiceActivity;->mFragment:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;

    invoke-virtual {v0}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->refreshData()V

    .line 45
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Lcom/mediatek/dialer/activities/CallLogMultipleDeleteActivity;->onStopForSubClass()V

    .line 62
    iget-object v0, p0, Lcom/mediatek/dialer/activities/CallLogMultipleChoiceActivity;->mFragment:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->setCallLogMultipleChoiceTypeFilter(I)V

    .line 64
    invoke-virtual {p0}, Lcom/mediatek/dialer/activities/CallLogMultipleChoiceActivity;->finish()V

    .line 65
    return-void
.end method
