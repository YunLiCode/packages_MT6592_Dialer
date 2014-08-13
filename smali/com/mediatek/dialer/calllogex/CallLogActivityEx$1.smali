.class Lcom/mediatek/dialer/calllogex/CallLogActivityEx$1;
.super Ljava/lang/Object;
.source "CallLogActivityEx.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dialer/calllogex/CallLogActivityEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/dialer/calllogex/CallLogActivityEx;


# direct methods
.method constructor <init>(Lcom/mediatek/dialer/calllogex/CallLogActivityEx;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogActivityEx$1;->this$0:Lcom/mediatek/dialer/calllogex/CallLogActivityEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 181
    const-string v0, "CallLogActivityEx"

    const-string v1, "[onMenuItemClick], show choose resources."

    invoke-static {v0, v1}, Lcom/mediatek/dialer/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogActivityEx$1;->this$0:Lcom/mediatek/dialer/calllogex/CallLogActivityEx;

    # getter for: Lcom/mediatek/dialer/calllogex/CallLogActivityEx;->mCallLogFragment:Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;
    invoke-static {v0}, Lcom/mediatek/dialer/calllogex/CallLogActivityEx;->access$000(Lcom/mediatek/dialer/calllogex/CallLogActivityEx;)Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/dialer/calllogex/CallLogFragmentEx;->showChoiceResourceDialog()V

    .line 183
    const/4 v0, 0x1

    return v0
.end method
