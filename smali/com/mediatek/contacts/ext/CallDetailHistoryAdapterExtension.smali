.class public Lcom/mediatek/contacts/ext/CallDetailHistoryAdapterExtension;
.super Ljava/lang/Object;
.source "CallDetailHistoryAdapterExtension.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallDetailHistoryAdapterExtension"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 22
    const/4 v0, -0x1

    return v0
.end method

.method public getViewPost(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 34
    return-object p2
.end method

.method public getViewPre(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewTypeCount(I)I
    .locals 0
    .param p1, "currentViewTypeCount"    # I

    .prologue
    .line 26
    return p1
.end method

.method public init(Landroid/content/Context;[Lcom/mediatek/dialer/PhoneCallDetailsEx;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneCallDetails"    # [Lcom/mediatek/dialer/PhoneCallDetailsEx;

    .prologue
    .line 19
    return-void
.end method
