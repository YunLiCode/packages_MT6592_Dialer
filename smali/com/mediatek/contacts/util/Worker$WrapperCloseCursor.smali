.class public Lcom/mediatek/contacts/util/Worker$WrapperCloseCursor;
.super Ljava/lang/Object;
.source "Worker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/util/Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WrapperCloseCursor"
.end annotation


# instance fields
.field mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/contacts/util/Worker$WrapperCloseCursor;->mCursor:Landroid/database/Cursor;

    .line 82
    iput-object p1, p0, Lcom/mediatek/contacts/util/Worker$WrapperCloseCursor;->mCursor:Landroid/database/Cursor;

    .line 83
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 86
    const-string v0, "Worker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[run]current thread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mCursor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/util/Worker$WrapperCloseCursor;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/mediatek/contacts/util/Worker$WrapperCloseCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/mediatek/contacts/util/Worker$WrapperCloseCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/contacts/util/Worker$WrapperCloseCursor;->mCursor:Landroid/database/Cursor;

    .line 92
    :cond_0
    return-void
.end method
