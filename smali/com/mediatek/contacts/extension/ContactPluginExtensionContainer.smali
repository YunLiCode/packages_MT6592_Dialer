.class public Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;
.super Ljava/lang/Object;
.source "ContactPluginExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactPluginExtensionContainer"


# instance fields
.field private mCallDetailExtensionContainer:Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;

.field private mCallDetailHistoryAdapterExtensionContainer:Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;

.field private mCallListExtensionContainer:Lcom/mediatek/contacts/extension/CallListExtensionContainer;

.field private mCallLogAdapterExtensionContainer:Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;

.field private mCallLogSearchResultActivityExtensionContainer:Lcom/mediatek/contacts/extension/CallLogSearchResultActivityExtensionContainer;

.field private mCallLogSimInfoHelperExtensionContainer:Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;

.field private mContactAccountExtensionContainer:Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;

.field private mContactDetailEnhancementExtensionContainer:Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;

.field private mContactDetailExtensionContainer:Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;

.field private mContactListExtensionContainer:Lcom/mediatek/contacts/extension/ContactListExtensionContainer;

.field private mContactsCallOptionHandlerExtensionContainer:Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerExtensionContainer;

.field private mContactsCallOptionHandlerFactoryExtensionContainer:Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerFactoryExtensionContainer;

.field private mDialPadExtensionContainer:Lcom/mediatek/contacts/extension/DialPadExtensionContainer;

.field private mDialerSearchAdapterExtensionContainer:Lcom/mediatek/contacts/extension/DialerSearchAdapterExtensionContainer;

.field private mDialtactsExtensionContainer:Lcom/mediatek/contacts/extension/DialtactsExtensionContainer;

.field private mIccCardExtensionContainer:Lcom/mediatek/contacts/extension/IccCardExtensionContainer;

.field private mImportExportEnhancementExtensionContainer:Lcom/mediatek/contacts/extension/ImportExportEnhancementExtensionContainer;

.field private mQuickContactExtensionContainer:Lcom/mediatek/contacts/extension/QuickContactExtensionContainer;

.field private mSimPickExtensionContainer:Lcom/mediatek/contacts/extension/SimPickExtensionContainer;

.field private mSimServiceExtensionContainer:Lcom/mediatek/contacts/extension/SimServiceExtensionContainer;

.field private mSpeedDialExtensionContainer:Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallDetailExtensionContainer:Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;

    .line 90
    new-instance v0, Lcom/mediatek/contacts/extension/CallListExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/CallListExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallListExtensionContainer:Lcom/mediatek/contacts/extension/CallListExtensionContainer;

    .line 91
    new-instance v0, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactAccountExtensionContainer:Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;

    .line 92
    new-instance v0, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactDetailExtensionContainer:Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;

    .line 93
    new-instance v0, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactListExtensionContainer:Lcom/mediatek/contacts/extension/ContactListExtensionContainer;

    .line 94
    new-instance v0, Lcom/mediatek/contacts/extension/DialPadExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/DialPadExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mDialPadExtensionContainer:Lcom/mediatek/contacts/extension/DialPadExtensionContainer;

    .line 95
    new-instance v0, Lcom/mediatek/contacts/extension/DialtactsExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/DialtactsExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mDialtactsExtensionContainer:Lcom/mediatek/contacts/extension/DialtactsExtensionContainer;

    .line 96
    new-instance v0, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mSpeedDialExtensionContainer:Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;

    .line 97
    new-instance v0, Lcom/mediatek/contacts/extension/SimPickExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/SimPickExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mSimPickExtensionContainer:Lcom/mediatek/contacts/extension/SimPickExtensionContainer;

    .line 98
    new-instance v0, Lcom/mediatek/contacts/extension/QuickContactExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/QuickContactExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mQuickContactExtensionContainer:Lcom/mediatek/contacts/extension/QuickContactExtensionContainer;

    .line 99
    new-instance v0, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactsCallOptionHandlerExtensionContainer:Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerExtensionContainer;

    .line 100
    new-instance v0, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerFactoryExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerFactoryExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactsCallOptionHandlerFactoryExtensionContainer:Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerFactoryExtensionContainer;

    .line 101
    new-instance v0, Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallLogAdapterExtensionContainer:Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;

    .line 102
    new-instance v0, Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallDetailHistoryAdapterExtensionContainer:Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;

    .line 103
    new-instance v0, Lcom/mediatek/contacts/extension/DialerSearchAdapterExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/DialerSearchAdapterExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mDialerSearchAdapterExtensionContainer:Lcom/mediatek/contacts/extension/DialerSearchAdapterExtensionContainer;

    .line 104
    new-instance v0, Lcom/mediatek/contacts/extension/CallLogSearchResultActivityExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/CallLogSearchResultActivityExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallLogSearchResultActivityExtensionContainer:Lcom/mediatek/contacts/extension/CallLogSearchResultActivityExtensionContainer;

    .line 105
    new-instance v0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactDetailEnhancementExtensionContainer:Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;

    .line 106
    new-instance v0, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallLogSimInfoHelperExtensionContainer:Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;

    .line 107
    new-instance v0, Lcom/mediatek/contacts/extension/IccCardExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/IccCardExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mIccCardExtensionContainer:Lcom/mediatek/contacts/extension/IccCardExtensionContainer;

    .line 108
    new-instance v0, Lcom/mediatek/contacts/extension/SimServiceExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/SimServiceExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mSimServiceExtensionContainer:Lcom/mediatek/contacts/extension/SimServiceExtensionContainer;

    .line 109
    new-instance v0, Lcom/mediatek/contacts/extension/ImportExportEnhancementExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/ImportExportEnhancementExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mImportExportEnhancementExtensionContainer:Lcom/mediatek/contacts/extension/ImportExportEnhancementExtensionContainer;

    .line 110
    return-void
.end method


# virtual methods
.method public addExtensions(Lcom/mediatek/contacts/ext/IContactPlugin;)V
    .locals 3
    .param p1, "contactPlugin"    # Lcom/mediatek/contacts/ext/IContactPlugin;

    .prologue
    .line 218
    const-string v0, "ContactPluginExtensionContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contactPlugin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallDetailExtensionContainer:Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/contacts/ext/IContactPlugin;->createCallDetailExtension()Lcom/mediatek/contacts/ext/CallDetailExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;->add(Lcom/mediatek/contacts/ext/CallDetailExtension;)V

    .line 220
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallListExtensionContainer:Lcom/mediatek/contacts/extension/CallListExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/contacts/ext/IContactPlugin;->createCallListExtension()Lcom/mediatek/contacts/ext/CallListExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/CallListExtensionContainer;->add(Lcom/mediatek/contacts/ext/CallListExtension;)V

    .line 221
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactAccountExtensionContainer:Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/contacts/ext/IContactPlugin;->createContactAccountExtension()Lcom/mediatek/contacts/ext/ContactAccountExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;->add(Lcom/mediatek/contacts/ext/ContactAccountExtension;)V

    .line 222
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactDetailExtensionContainer:Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/contacts/ext/IContactPlugin;->createContactDetailExtension()Lcom/mediatek/contacts/ext/ContactDetailExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;->add(Lcom/mediatek/contacts/ext/ContactDetailExtension;)V

    .line 223
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactListExtensionContainer:Lcom/mediatek/contacts/extension/ContactListExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/contacts/ext/IContactPlugin;->createContactListExtension()Lcom/mediatek/contacts/ext/ContactListExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/ContactListExtensionContainer;->add(Lcom/mediatek/contacts/ext/ContactListExtension;)V

    .line 224
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mDialPadExtensionContainer:Lcom/mediatek/contacts/extension/DialPadExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/contacts/ext/IContactPlugin;->createDialPadExtension()Lcom/mediatek/contacts/ext/DialPadExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/DialPadExtensionContainer;->add(Lcom/mediatek/contacts/ext/DialPadExtension;)V

    .line 225
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mDialtactsExtensionContainer:Lcom/mediatek/contacts/extension/DialtactsExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/contacts/ext/IContactPlugin;->createDialtactsExtension()Lcom/mediatek/contacts/ext/DialtactsExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/DialtactsExtensionContainer;->add(Lcom/mediatek/contacts/ext/DialtactsExtension;)V

    .line 226
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mSpeedDialExtensionContainer:Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/contacts/ext/IContactPlugin;->createSpeedDialExtension()Lcom/mediatek/contacts/ext/SpeedDialExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;->add(Lcom/mediatek/contacts/ext/SpeedDialExtension;)V

    .line 227
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mSimPickExtensionContainer:Lcom/mediatek/contacts/extension/SimPickExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/contacts/ext/IContactPlugin;->createSimPickExtension()Lcom/mediatek/contacts/ext/SimPickExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/SimPickExtensionContainer;->add(Lcom/mediatek/contacts/ext/SimPickExtension;)V

    .line 228
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mQuickContactExtensionContainer:Lcom/mediatek/contacts/extension/QuickContactExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/contacts/ext/IContactPlugin;->createQuickContactExtension()Lcom/mediatek/contacts/ext/QuickContactExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/QuickContactExtensionContainer;->add(Lcom/mediatek/contacts/ext/QuickContactExtension;)V

    .line 229
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactsCallOptionHandlerExtensionContainer:Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/contacts/ext/IContactPlugin;->createContactsCallOptionHandlerExtension()Lcom/mediatek/contacts/ext/ContactsCallOptionHandlerExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerExtensionContainer;->add(Lcom/mediatek/contacts/ext/ContactsCallOptionHandlerExtension;)V

    .line 230
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactsCallOptionHandlerFactoryExtensionContainer:Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerFactoryExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/contacts/ext/IContactPlugin;->createContactsCallOptionHandlerFactoryExtension()Lcom/mediatek/contacts/ext/ContactsCallOptionHandlerFactoryExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerFactoryExtensionContainer;->add(Lcom/mediatek/contacts/ext/ContactsCallOptionHandlerFactoryExtension;)V

    .line 232
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallLogAdapterExtensionContainer:Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/contacts/ext/IContactPlugin;->createCallLogAdapterExtension()Lcom/mediatek/contacts/ext/CallLogAdapterExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;->add(Lcom/mediatek/contacts/ext/CallLogAdapterExtension;)V

    .line 233
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallDetailHistoryAdapterExtensionContainer:Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/contacts/ext/IContactPlugin;->createCallDetailHistoryAdapterExtension()Lcom/mediatek/contacts/ext/CallDetailHistoryAdapterExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;->add(Lcom/mediatek/contacts/ext/CallDetailHistoryAdapterExtension;)V

    .line 234
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mDialerSearchAdapterExtensionContainer:Lcom/mediatek/contacts/extension/DialerSearchAdapterExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/contacts/ext/IContactPlugin;->createDialerSearchAdapterExtension()Lcom/mediatek/contacts/ext/DialerSearchAdapterExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/DialerSearchAdapterExtensionContainer;->add(Lcom/mediatek/contacts/ext/DialerSearchAdapterExtension;)V

    .line 235
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallLogSearchResultActivityExtensionContainer:Lcom/mediatek/contacts/extension/CallLogSearchResultActivityExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/contacts/ext/IContactPlugin;->createCallLogSearchResultActivityExtension()Lcom/mediatek/contacts/ext/CallLogSearchResultActivityExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/CallLogSearchResultActivityExtensionContainer;->add(Lcom/mediatek/contacts/ext/CallLogSearchResultActivityExtension;)V

    .line 236
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mIccCardExtensionContainer:Lcom/mediatek/contacts/extension/IccCardExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/contacts/ext/IContactPlugin;->createIccCardExtension()Lcom/mediatek/contacts/ext/IccCardExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/IccCardExtensionContainer;->add(Lcom/mediatek/contacts/ext/IccCardExtension;)V

    .line 238
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactDetailEnhancementExtensionContainer:Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/contacts/ext/IContactPlugin;->createContactDetailEnhancementExtension()Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->add(Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;)V

    .line 239
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallLogSimInfoHelperExtensionContainer:Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/contacts/ext/IContactPlugin;->createCallLogSimInfoHelperExtension()Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;->add(Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;)V

    .line 240
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mSimServiceExtensionContainer:Lcom/mediatek/contacts/extension/SimServiceExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/contacts/ext/IContactPlugin;->createSimServiceExtension()Lcom/mediatek/contacts/ext/SimServiceExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/SimServiceExtensionContainer;->add(Lcom/mediatek/contacts/ext/SimServiceExtension;)V

    .line 241
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mImportExportEnhancementExtensionContainer:Lcom/mediatek/contacts/extension/ImportExportEnhancementExtensionContainer;

    invoke-interface {p1}, Lcom/mediatek/contacts/ext/IContactPlugin;->createImportExportEnhancementExtension()Lcom/mediatek/contacts/ext/ImportExportEnhancementExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/extension/ImportExportEnhancementExtensionContainer;->add(Lcom/mediatek/contacts/ext/ImportExportEnhancementExtension;)V

    .line 242
    return-void
.end method

.method public getCallDetailExtension()Lcom/mediatek/contacts/ext/CallDetailExtension;
    .locals 2

    .prologue
    .line 113
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "return CallDetailExtension "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallDetailExtensionContainer:Lcom/mediatek/contacts/extension/CallDetailExtensionContainer;

    return-object v0
.end method

.method public getCallDetailHistoryAdapterExtension()Lcom/mediatek/contacts/ext/CallDetailHistoryAdapterExtension;
    .locals 2

    .prologue
    .line 182
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "getCallDetailHistoryAdapterExtension()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallDetailHistoryAdapterExtensionContainer:Lcom/mediatek/contacts/extension/CallDetailHistoryAdapterExtensionContainer;

    return-object v0
.end method

.method public getCallListExtension()Lcom/mediatek/contacts/ext/CallListExtension;
    .locals 2

    .prologue
    .line 118
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "return CallListExtension "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallListExtensionContainer:Lcom/mediatek/contacts/extension/CallListExtensionContainer;

    return-object v0
.end method

.method public getCallLogAdapterExtension()Lcom/mediatek/contacts/ext/CallLogAdapterExtension;
    .locals 2

    .prologue
    .line 177
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "getCallLogAdapterExtension()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallLogAdapterExtensionContainer:Lcom/mediatek/contacts/extension/CallLogAdapterExtensionContainer;

    return-object v0
.end method

.method public getCallLogSearchResultActivityExtension()Lcom/mediatek/contacts/ext/CallLogSearchResultActivityExtension;
    .locals 2

    .prologue
    .line 192
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "getCallLogSearchResultActivityExtension()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallLogSearchResultActivityExtensionContainer:Lcom/mediatek/contacts/extension/CallLogSearchResultActivityExtensionContainer;

    return-object v0
.end method

.method public getCallLogSimInfoHelperExtension()Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;
    .locals 2

    .prologue
    .line 202
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "getCallLogSimInfoHelperExtension()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mCallLogSimInfoHelperExtensionContainer:Lcom/mediatek/contacts/extension/CallLogSimInfoHelperExtensionContainer;

    return-object v0
.end method

.method public getContactAccountExtension()Lcom/mediatek/contacts/ext/ContactAccountExtension;
    .locals 3

    .prologue
    .line 123
    const-string v0, "ContactPluginExtensionContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return ContactAccountExtension "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactAccountExtensionContainer:Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactAccountExtensionContainer:Lcom/mediatek/contacts/extension/ContactAccountExtensionContainer;

    return-object v0
.end method

.method public getContactDetailEnhancementExtension()Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .locals 2

    .prologue
    .line 197
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "getContactDetailEnhancementExtension()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactDetailEnhancementExtensionContainer:Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;

    return-object v0
.end method

.method public getContactDetailExtension()Lcom/mediatek/contacts/ext/ContactDetailExtension;
    .locals 2

    .prologue
    .line 128
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "return ContactDetailExtension "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactDetailExtensionContainer:Lcom/mediatek/contacts/extension/ContactDetailExtensionContainer;

    return-object v0
.end method

.method public getContactListExtension()Lcom/mediatek/contacts/ext/ContactListExtension;
    .locals 2

    .prologue
    .line 133
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "return ContactListExtension "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactListExtensionContainer:Lcom/mediatek/contacts/extension/ContactListExtensionContainer;

    return-object v0
.end method

.method public getContactsCallOptionHandlerExtension()Lcom/mediatek/contacts/ext/ContactsCallOptionHandlerExtension;
    .locals 2

    .prologue
    .line 163
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "getContactsCallOptionHandlerExtension()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactsCallOptionHandlerExtensionContainer:Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerExtensionContainer;

    return-object v0
.end method

.method public getContactsCallOptionHandlerFactoryExtension()Lcom/mediatek/contacts/ext/ContactsCallOptionHandlerFactoryExtension;
    .locals 2

    .prologue
    .line 172
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "getContactsCallOptionHandlerFactoryExtension()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mContactsCallOptionHandlerFactoryExtensionContainer:Lcom/mediatek/contacts/extension/ContactsCallOptionHandlerFactoryExtensionContainer;

    return-object v0
.end method

.method public getDialPadExtension()Lcom/mediatek/contacts/ext/DialPadExtension;
    .locals 2

    .prologue
    .line 138
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "return DialPadExtension "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mDialPadExtensionContainer:Lcom/mediatek/contacts/extension/DialPadExtensionContainer;

    return-object v0
.end method

.method public getDialerSearchAdapterExtension()Lcom/mediatek/contacts/ext/DialerSearchAdapterExtension;
    .locals 2

    .prologue
    .line 187
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "getDialerSearchAdapterExtension()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mDialerSearchAdapterExtensionContainer:Lcom/mediatek/contacts/extension/DialerSearchAdapterExtensionContainer;

    return-object v0
.end method

.method public getDialtactsExtension()Lcom/mediatek/contacts/ext/DialtactsExtension;
    .locals 2

    .prologue
    .line 143
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "return DialtactsExtension "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mDialtactsExtensionContainer:Lcom/mediatek/contacts/extension/DialtactsExtensionContainer;

    return-object v0
.end method

.method public getIccCardExtension()Lcom/mediatek/contacts/ext/IccCardExtension;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mIccCardExtensionContainer:Lcom/mediatek/contacts/extension/IccCardExtensionContainer;

    return-object v0
.end method

.method public getImportExportEnhancementExtension()Lcom/mediatek/contacts/ext/ImportExportEnhancementExtension;
    .locals 2

    .prologue
    .line 212
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "getImportExportEnhancementExtension()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mImportExportEnhancementExtensionContainer:Lcom/mediatek/contacts/extension/ImportExportEnhancementExtensionContainer;

    return-object v0
.end method

.method public getQuickContactExtension()Lcom/mediatek/contacts/ext/QuickContactExtension;
    .locals 2

    .prologue
    .line 158
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "return QuickContactExtension"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mQuickContactExtensionContainer:Lcom/mediatek/contacts/extension/QuickContactExtensionContainer;

    return-object v0
.end method

.method public getSimPickExtension()Lcom/mediatek/contacts/ext/SimPickExtension;
    .locals 2

    .prologue
    .line 153
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "return SimPickExtension "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mSimPickExtensionContainer:Lcom/mediatek/contacts/extension/SimPickExtensionContainer;

    return-object v0
.end method

.method public getSimServiceExtension()Lcom/mediatek/contacts/ext/SimServiceExtension;
    .locals 2

    .prologue
    .line 207
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "getSimServiceExtension()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mSimServiceExtensionContainer:Lcom/mediatek/contacts/extension/SimServiceExtensionContainer;

    return-object v0
.end method

.method public getSpeedDialExtension()Lcom/mediatek/contacts/ext/SpeedDialExtension;
    .locals 2

    .prologue
    .line 148
    const-string v0, "ContactPluginExtensionContainer"

    const-string v1, "return SpeedDialExtension "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->mSpeedDialExtensionContainer:Lcom/mediatek/contacts/extension/SpeedDialExtensionContainer;

    return-object v0
.end method
