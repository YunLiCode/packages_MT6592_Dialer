.class Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber$1;
.super Ljava/lang/Object;
.source "QuickContactBadgeWithPhoneNumber.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->showDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber$1;->this$0:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    iput-object p2, p0, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber$1;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 116
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "vnd.android.cursor.item/contact"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    iget-object v3, p0, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber$1;->this$0:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    # getter for: Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->mIsSipNumber:Z
    invoke-static {v3}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->access$000(Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    const-string v3, "sip_address"

    iget-object v4, p0, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber$1;->val$number:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber$1;->this$0:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    # getter for: Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->access$100(Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_1
    return-void

    .line 121
    :cond_0
    const-string v3, "phone"

    iget-object v4, p0, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber$1;->val$number:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber$1;->this$0:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

    # getter for: Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;->access$200(Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a05ae

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 130
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
