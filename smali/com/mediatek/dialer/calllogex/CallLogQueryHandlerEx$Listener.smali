.class public interface abstract Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx$Listener;
.super Ljava/lang/Object;
.source "CallLogQueryHandlerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dialer/calllogex/CallLogQueryHandlerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCallsDeleted()V
.end method

.method public abstract onCallsFetched(Landroid/database/Cursor;)V
.end method

.method public abstract onVoicemailStatusFetched(Landroid/database/Cursor;)V
.end method