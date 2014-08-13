.class Lcom/android/ex/chips/MTKRecipientEditTextView$17;
.super Ljava/lang/Object;
.source "MTKRecipientEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;->postHandleContactAdd(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

.field final synthetic val$chips:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 5601
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$17;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iput-object p2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$17;->val$chips:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5604
    const-string v0, "MTKRecipContactObserver"

    const-string v1, "+add+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5605
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$17;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$17;->val$chips:Ljava/util/List;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->handleContactAdd(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$7600(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/util/List;)V

    .line 5606
    const-string v0, "MTKRecipContactObserver"

    const-string v1, "-add-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5607
    return-void
.end method
