.class Lcom/android/contacts/common/widget/BladeView$DissmisThread;
.super Ljava/lang/Object;
.source "BladeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/widget/BladeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DissmisThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/widget/BladeView;


# direct methods
.method private constructor <init>(Lcom/android/contacts/common/widget/BladeView;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/contacts/common/widget/BladeView$DissmisThread;->this$0:Lcom/android/contacts/common/widget/BladeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/widget/BladeView;Lcom/android/contacts/common/widget/BladeView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/common/widget/BladeView;
    .param p2, "x1"    # Lcom/android/contacts/common/widget/BladeView$1;

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/android/contacts/common/widget/BladeView$DissmisThread;-><init>(Lcom/android/contacts/common/widget/BladeView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/contacts/common/widget/BladeView$DissmisThread;->this$0:Lcom/android/contacts/common/widget/BladeView;

    # invokes: Lcom/android/contacts/common/widget/BladeView;->dismissListPopup()V
    invoke-static {v0}, Lcom/android/contacts/common/widget/BladeView;->access$100(Lcom/android/contacts/common/widget/BladeView;)V

    .line 238
    return-void
.end method
