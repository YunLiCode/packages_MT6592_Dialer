.class Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1$1;
.super Ljava/lang/Object;
.source "MTKRecipientEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1;->matchesFound(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1;

.field final synthetic val$newEntry:Lcom/android/ex/chips/RecipientEntry;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1;Lcom/android/ex/chips/RecipientEntry;)V
    .locals 0

    .prologue
    .line 5151
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1$1;->this$2:Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1;

    iput-object p2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1$1;->val$newEntry:Lcom/android/ex/chips/RecipientEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5154
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1$1;->this$2:Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1;

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1;->this$1:Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;

    iget-object v0, v0, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1$1;->this$2:Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1;

    iget-object v1, v1, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1;->val$chip:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$DuplicateContactReplacementTask$1$1;->val$newEntry:Lcom/android/ex/chips/RecipientEntry;

    # invokes: Lcom/android/ex/chips/MTKRecipientEditTextView;->handleReplaceDuplicateChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/RecipientEntry;)V
    invoke-static {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$6800(Lcom/android/ex/chips/MTKRecipientEditTextView;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/RecipientEntry;)V

    .line 5155
    return-void
.end method
