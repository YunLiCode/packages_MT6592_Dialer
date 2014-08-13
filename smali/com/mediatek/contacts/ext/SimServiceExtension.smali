.class public Lcom/mediatek/contacts/ext/SimServiceExtension;
.super Ljava/lang/Object;
.source "SimServiceExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommond()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    const-string v0, ""

    return-object v0
.end method

.method public importViaReadonlyContact(Landroid/os/Bundle;Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "commond"    # Ljava/lang/String;

    .prologue
    .line 14
    const/4 v0, 0x1

    return v0
.end method
