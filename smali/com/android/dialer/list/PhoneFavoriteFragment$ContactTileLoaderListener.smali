.class Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileLoaderListener;
.super Ljava/lang/Object;
.source "PhoneFavoriteFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/PhoneFavoriteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactTileLoaderListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;


# direct methods
.method private constructor <init>(Lcom/android/dialer/list/PhoneFavoriteFragment;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileLoaderListener;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/list/PhoneFavoriteFragment;Lcom/android/dialer/list/PhoneFavoriteFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;
    .param p2, "x1"    # Lcom/android/dialer/list/PhoneFavoriteFragment$1;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileLoaderListener;-><init>(Lcom/android/dialer/list/PhoneFavoriteFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileLoaderListener;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    invoke-virtual {v0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/ContactTileLoaderFactory;->createStrequentPhoneOnlyLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileLoaderListener;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileLoaderListener;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;
    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$100(Lcom/android/dialer/list/PhoneFavoriteFragment;)Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->setContactCursor(Landroid/database/Cursor;)V

    .line 153
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileLoaderListener;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileLoaderListener;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;
    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$100(Lcom/android/dialer/list/PhoneFavoriteFragment;)Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->setEmptyViewVisibility(Z)V

    .line 154
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 142
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileLoaderListener;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
