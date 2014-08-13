.class Lcom/android/ex/chips/MTKRecipientEditTextView$16;
.super Ljava/lang/Object;
.source "MTKRecipientEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;->postHandleContactDelete(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

.field final synthetic val$IDs:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 5479
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$16;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iput-object p2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$16;->val$IDs:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5482
    const-string v0, "MTKRecipContactObserver"

    const-string v1, "+delete+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5483
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$16;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$16;->val$IDs:Ljava/util/List;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->handleContactDeleteAsync(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$7100(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/util/List;)V

    .line 5484
    const-string v0, "MTKRecipContactObserver"

    const-string v1, "-delete-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5485
    return-void
.end method
