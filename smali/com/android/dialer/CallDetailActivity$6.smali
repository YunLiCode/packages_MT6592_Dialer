.class Lcom/android/dialer/CallDetailActivity$6;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/CallDetailActivity;->bindContactPhotoAction(Landroid/content/Intent;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/CallDetailActivity;

.field final synthetic val$actionIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/dialer/CallDetailActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 917
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$6;->this$0:Lcom/android/dialer/CallDetailActivity;

    iput-object p2, p0, Lcom/android/dialer/CallDetailActivity$6;->val$actionIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$6;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$6;->val$actionIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/dialer/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 921
    return-void
.end method
