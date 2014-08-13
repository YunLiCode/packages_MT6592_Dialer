.class Lcom/mediatek/dialer/activities/CallLogMultipleChoiceActivity$1;
.super Ljava/lang/Object;
.source "CallLogMultipleChoiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/dialer/activities/CallLogMultipleChoiceActivity;->getClickListenerOfActionBarOKButton()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/dialer/activities/CallLogMultipleChoiceActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/dialer/activities/CallLogMultipleChoiceActivity;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mediatek/dialer/activities/CallLogMultipleChoiceActivity$1;->this$0:Lcom/mediatek/dialer/activities/CallLogMultipleChoiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/mediatek/dialer/activities/CallLogMultipleChoiceActivity$1;->this$0:Lcom/mediatek/dialer/activities/CallLogMultipleChoiceActivity;

    iget-object v2, v2, Lcom/mediatek/dialer/activities/CallLogMultipleChoiceActivity;->mFragment:Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;

    invoke-virtual {v2}, Lcom/mediatek/dialer/calllog/CallLogMultipleDeleteFragment;->getSelections()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "ids":Ljava/lang/String;
    const-string v2, "calllogids"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    iget-object v2, p0, Lcom/mediatek/dialer/activities/CallLogMultipleChoiceActivity$1;->this$0:Lcom/mediatek/dialer/activities/CallLogMultipleChoiceActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/mediatek/dialer/activities/CallLogMultipleChoiceActivity;->setResult(ILandroid/content/Intent;)V

    .line 107
    iget-object v2, p0, Lcom/mediatek/dialer/activities/CallLogMultipleChoiceActivity$1;->this$0:Lcom/mediatek/dialer/activities/CallLogMultipleChoiceActivity;

    invoke-virtual {v2}, Lcom/mediatek/dialer/activities/CallLogMultipleChoiceActivity;->finish()V

    .line 108
    return-void
.end method
