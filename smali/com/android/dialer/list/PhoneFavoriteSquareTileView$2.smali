.class Lcom/android/dialer/list/PhoneFavoriteSquareTileView$2;
.super Ljava/lang/Object;
.source "PhoneFavoriteSquareTileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/PhoneFavoriteSquareTileView;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/PhoneFavoriteSquareTileView;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView$2;->this$0:Lcom/android/dialer/list/PhoneFavoriteSquareTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView$2;->this$0:Lcom/android/dialer/list/PhoneFavoriteSquareTileView;

    # invokes: Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->launchQuickContact()V
    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->access$000(Lcom/android/dialer/list/PhoneFavoriteSquareTileView;)V

    .line 92
    return-void
.end method
