.class Lcom/android/ex/chips/MTKRecipientEditTextView$6;
.super Landroid/os/Handler;
.source "MTKRecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$6;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 394
    iget v0, p1, Landroid/os/Message;->what:I

    # getter for: Lcom/android/ex/chips/MTKRecipientEditTextView;->DISMISS:I
    invoke-static {}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$900()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 395
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 399
    :goto_0
    return-void

    .line 398
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
