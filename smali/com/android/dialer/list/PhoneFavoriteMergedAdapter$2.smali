.class Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$2;
.super Ljava/lang/Object;
.source "PhoneFavoriteMergedAdapter.java"

# interfaces
.implements Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$2;->this$0:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallsDeleted()V
    .locals 2

    .prologue
    .line 113
    # getter for: Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCallsDeleted(), do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method public onCallsFetched(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "combinedCursor"    # Landroid/database/Cursor;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$2;->this$0:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;
    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->access$300(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->invalidateCache()V

    .line 106
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$2;->this$0:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;
    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->access$300(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 107
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$2;->this$0:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;
    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->access$300(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->notifyDataSetChanged()V

    .line 108
    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    .line 99
    invoke-static {p1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 101
    return-void
.end method
