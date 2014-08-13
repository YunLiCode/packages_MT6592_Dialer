.class Lcom/android/ex/chips/MTKRecipientEditTextView$4;
.super Ljava/lang/Object;
.source "MTKRecipientEditTextView.java"

# interfaces
.implements Lcom/android/ex/chips/MTKContactObserver$ContactListener;


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
    .line 345
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$4;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactChange(Ljava/util/Set;)V
    .locals 2
    .param p1, "s"    # Ljava/util/Set;

    .prologue
    .line 348
    const-string v0, "client"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$4;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->handleContactChange(Ljava/util/Set;)V
    invoke-static {v0, p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$400(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/util/Set;)V

    .line 350
    return-void
.end method
