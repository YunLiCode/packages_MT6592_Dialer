.class Lcom/android/ex/chips/MTKRecipientEditTextView$2;
.super Ljava/lang/Object;
.source "MTKRecipientEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;
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
    .line 302
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$2;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x8

    .line 306
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$2;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v1, "RecipientEditTextView"

    const-string v2, "[mHandlePendingChips.run]"

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$000(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v0, "handlePendingChips"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$2;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->handlePendingChips()V

    .line 309
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 310
    return-void
.end method
