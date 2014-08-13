.class Lcom/android/incallui/CallButtonFragment$6;
.super Ljava/lang/Object;
.source "CallButtonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallButtonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallButtonFragment;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/incallui/CallButtonFragment$6;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 170
    sget-boolean v0, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanRecording:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment$6;->this$0:Lcom/android/incallui/CallButtonFragment;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment$6;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/incallui/CallButtonFragment;->onVoiceRecordClickExtra(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/incallui/CallButtonFragment;->access$200(Lcom/android/incallui/CallButtonFragment;Ljava/lang/String;)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment$6;->this$0:Lcom/android/incallui/CallButtonFragment;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment$6;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/incallui/CallButtonFragment;->onVoiceRecordClickExtra(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/incallui/CallButtonFragment;->access$200(Lcom/android/incallui/CallButtonFragment;Ljava/lang/String;)V

    goto :goto_0
.end method
