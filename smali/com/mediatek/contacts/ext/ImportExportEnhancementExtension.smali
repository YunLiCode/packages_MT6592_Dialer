.class public Lcom/mediatek/contacts/ext/ImportExportEnhancementExtension;
.super Ljava/lang/Object;
.source "ImportExportEnhancementExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommond()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const-string v0, ""

    return-object v0
.end method

.method public getVCardComposerExt(Landroid/content/Context;IZLjava/lang/String;)Lcom/android/vcard/VCardComposer;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vcardType"    # I
    .param p3, "careHandlerErrors"    # Z
    .param p4, "commond"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v0, Lcom/android/vcard/VCardComposer;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V

    return-object v0
.end method

.method public getVCardEntryConstructorExt(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Lcom/android/vcard/VCardEntryConstructor;
    .locals 1
    .param p1, "estimatedVCardType"    # I
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "estimatedCharset"    # Ljava/lang/String;
    .param p4, "commond"    # Ljava/lang/String;

    .prologue
    .line 18
    new-instance v0, Lcom/android/vcard/VCardEntryConstructor;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    return-object v0
.end method
