.class Lcom/android/contacts/common/list/ContactTilePhoneFrequentView$1;
.super Ljava/lang/Object;
.source "ContactTilePhoneFrequentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;->createClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView$1;->this$0:Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView$1;->this$0:Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView$1;->this$0:Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;

    # getter for: Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;->mPhoneNumberString:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;->access$000(Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView$1;->this$0:Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView$1;->this$0:Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView$1;->this$0:Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;

    # getter for: Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;->access$100(Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView$1;->this$0:Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;

    invoke-static {v2, v3}, Lcom/android/contacts/common/MoreContactUtils;->getTargetRectFromView(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/common/list/ContactTileView$Listener;->onContactSelected(Landroid/net/Uri;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView$1;->this$0:Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView$1;->this$0:Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;

    # getter for: Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;->mPhoneNumberString:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;->access$000(Lcom/android/contacts/common/list/ContactTilePhoneFrequentView;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/common/list/ContactTileView$Listener;->onCallNumberDirectly(Ljava/lang/String;)V

    goto :goto_0
.end method
