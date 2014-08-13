.class Lcom/android/dialer/list/PhoneFavoriteFragment$1;
.super Ljava/lang/Object;
.source "PhoneFavoriteFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/list/PhoneFavoriteFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/PhoneFavoriteFragment;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$1;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$1;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    # invokes: Lcom/android/dialer/list/PhoneFavoriteFragment;->showAllContacts()V
    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$700(Lcom/android/dialer/list/PhoneFavoriteFragment;)V

    .line 322
    return-void
.end method
