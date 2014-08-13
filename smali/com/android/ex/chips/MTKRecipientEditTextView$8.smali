.class Lcom/android/ex/chips/MTKRecipientEditTextView$8;
.super Ljava/lang/Object;
.source "MTKRecipientEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;->handlePendingChips()V
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
    .line 1425
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$8;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$8;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const/4 v1, 0x0

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->setForceEnableBringPointIntoView(Z)V
    invoke-static {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1300(Lcom/android/ex/chips/MTKRecipientEditTextView;Z)V

    .line 1430
    return-void
.end method
