.class public Lcom/mediatek/contacts/ExtensionManager;
.super Ljava/lang/Object;
.source "ExtensionManager.java"


# static fields
.field public static final COMMD_FOR_AAS:Ljava/lang/String; = "ExtensionForAAS"

.field public static final COMMD_FOR_RCS:Ljava/lang/String; = "ExtenstionForRCS"

.field public static final COMMD_FOR_SNE:Ljava/lang/String; = "ExtensionForSNE"

.field public static final COMMD_FOR_SNS:Ljava/lang/String; = "ExtensionForSNS"

.field public static final RCS_CONTACT_PRESENCE_CHANGED:Ljava/lang/String; = "android.intent.action.RCS_CONTACT_PRESENCE_CHANGED"

.field public static final RCS_CONTACT_UNREAD_NUMBER_CHANGED:Ljava/lang/String; = "android.intent.action.RCS_CONTACT_UNREAD_NUMBER_CHANGED"

.field private static final TAG:Ljava/lang/String; = "ExtensionManager"

.field private static sInstance:Lcom/mediatek/contacts/ExtensionManager;


# instance fields
.field private mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/contacts/ExtensionManager;->sInstance:Lcom/mediatek/contacts/ExtensionManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    .line 84
    invoke-virtual {p0}, Lcom/mediatek/contacts/ExtensionManager;->refreshPlugins()V

    .line 85
    return-void
.end method

.method private static declared-synchronized createInstanceSynchronized()V
    .locals 2

    .prologue
    .line 95
    const-class v1, Lcom/mediatek/contacts/ExtensionManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/contacts/ExtensionManager;->sInstance:Lcom/mediatek/contacts/ExtensionManager;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/mediatek/contacts/ExtensionManager;

    invoke-direct {v0}, Lcom/mediatek/contacts/ExtensionManager;-><init>()V

    sput-object v0, Lcom/mediatek/contacts/ExtensionManager;->sInstance:Lcom/mediatek/contacts/ExtensionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    monitor-exit v1

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lcom/mediatek/contacts/ExtensionManager;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/mediatek/contacts/ExtensionManager;->sInstance:Lcom/mediatek/contacts/ExtensionManager;

    if-nez v0, :cond_0

    .line 89
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->createInstanceSynchronized()V

    .line 91
    :cond_0
    sget-object v0, Lcom/mediatek/contacts/ExtensionManager;->sInstance:Lcom/mediatek/contacts/ExtensionManager;

    return-object v0
.end method

.method private getPlugin()V
    .locals 10

    .prologue
    .line 101
    invoke-static {}, Lcom/mediatek/contacts/GlobalEnv;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 102
    .local v0, "applicationContext":Landroid/content/Context;
    const-string v7, "ExtensionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getPlugin] applicationContext : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-class v7, Lcom/mediatek/contacts/ext/IContactPlugin;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Landroid/content/pm/Signature;

    invoke-static {v0, v7, v8}, Lcom/mediatek/pluginmanager/PluginManager;->create(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;

    move-result-object v6

    .line 105
    .local v6, "pm":Lcom/mediatek/pluginmanager/PluginManager;, "Lcom/mediatek/pluginmanager/PluginManager<Lcom/mediatek/contacts/ext/IContactPlugin;>;"
    invoke-virtual {v6}, Lcom/mediatek/pluginmanager/PluginManager;->getPluginCount()I

    move-result v4

    .line 106
    .local v4, "num":I
    const-string v7, "ExtensionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getPlugin]plugin num : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    if-nez v4, :cond_1

    .line 108
    const-string v7, "ExtensionManager"

    const-string v8, "[getPlugin]no plugin apk"

    invoke-static {v7, v8}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 113
    :try_start_0
    invoke-virtual {v6, v3}, Lcom/mediatek/pluginmanager/PluginManager;->getPlugin(I)Lcom/mediatek/pluginmanager/Plugin;

    move-result-object v1

    .line 114
    .local v1, "contactPlugin":Lcom/mediatek/pluginmanager/Plugin;, "Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/contacts/ext/IContactPlugin;>;"
    if-eqz v1, :cond_2

    .line 115
    invoke-virtual {v1}, Lcom/mediatek/pluginmanager/Plugin;->createObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/contacts/ext/IContactPlugin;

    .line 116
    .local v5, "plugin":Lcom/mediatek/contacts/ext/IContactPlugin;
    const-string v7, "ExtensionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getPlugin] addExtension:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",plugin:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v7, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v7, v5}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->addExtensions(Lcom/mediatek/contacts/ext/IContactPlugin;)V

    .line 112
    .end local v5    # "plugin":Lcom/mediatek/contacts/ext/IContactPlugin;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 119
    :cond_2
    const-string v7, "ExtensionManager"

    const-string v8, "[getPlugin]contactPlugin is null"

    invoke-static {v7, v8}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 122
    .end local v1    # "contactPlugin":Lcom/mediatek/pluginmanager/Plugin;, "Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/contacts/ext/IContactPlugin;>;"
    :catch_0
    move-exception v2

    .line 123
    .local v2, "e":Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    const-string v7, "ExtensionManager"

    const-string v8, "[getPlugin]ObjectCreationException:"

    invoke-static {v7, v8}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v2}, Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getCallDetailExtension()Lcom/mediatek/contacts/ext/CallDetailExtension;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getCallDetailExtension()Lcom/mediatek/contacts/ext/CallDetailExtension;

    move-result-object v0

    return-object v0
.end method

.method public getCallDetailHistoryAdapterExtension()Lcom/mediatek/contacts/ext/CallDetailHistoryAdapterExtension;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getCallDetailHistoryAdapterExtension()Lcom/mediatek/contacts/ext/CallDetailHistoryAdapterExtension;

    move-result-object v0

    return-object v0
.end method

.method public getCallListExtension()Lcom/mediatek/contacts/ext/CallListExtension;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getCallListExtension()Lcom/mediatek/contacts/ext/CallListExtension;

    move-result-object v0

    return-object v0
.end method

.method public getCallLogAdapterExtension()Lcom/mediatek/contacts/ext/CallLogAdapterExtension;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getCallLogAdapterExtension()Lcom/mediatek/contacts/ext/CallLogAdapterExtension;

    move-result-object v0

    return-object v0
.end method

.method public getCallLogSearchResultActivityExtension()Lcom/mediatek/contacts/ext/CallLogSearchResultActivityExtension;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getCallLogSearchResultActivityExtension()Lcom/mediatek/contacts/ext/CallLogSearchResultActivityExtension;

    move-result-object v0

    return-object v0
.end method

.method public getCallLogSimInfoHelperExtension()Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getCallLogSimInfoHelperExtension()Lcom/mediatek/contacts/ext/CallLogSimInfoHelperExtension;

    move-result-object v0

    return-object v0
.end method

.method public getContactAccountExtension()Lcom/mediatek/contacts/ext/ContactAccountExtension;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getContactAccountExtension()Lcom/mediatek/contacts/ext/ContactAccountExtension;

    move-result-object v0

    return-object v0
.end method

.method public getContactDetailEnhancementExtension()Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getContactDetailEnhancementExtension()Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v0

    return-object v0
.end method

.method public getContactDetailExtension()Lcom/mediatek/contacts/ext/ContactDetailExtension;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getContactDetailExtension()Lcom/mediatek/contacts/ext/ContactDetailExtension;

    move-result-object v0

    return-object v0
.end method

.method public getContactListExtension()Lcom/mediatek/contacts/ext/ContactListExtension;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getContactListExtension()Lcom/mediatek/contacts/ext/ContactListExtension;

    move-result-object v0

    return-object v0
.end method

.method public getContactsCallOptionHandlerExtension()Lcom/mediatek/contacts/ext/ContactsCallOptionHandlerExtension;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getContactsCallOptionHandlerExtension()Lcom/mediatek/contacts/ext/ContactsCallOptionHandlerExtension;

    move-result-object v0

    return-object v0
.end method

.method public getContactsCallOptionHandlerFactoryExtension()Lcom/mediatek/contacts/ext/ContactsCallOptionHandlerFactoryExtension;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getContactsCallOptionHandlerFactoryExtension()Lcom/mediatek/contacts/ext/ContactsCallOptionHandlerFactoryExtension;

    move-result-object v0

    return-object v0
.end method

.method public getDialPadExtension()Lcom/mediatek/contacts/ext/DialPadExtension;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getDialPadExtension()Lcom/mediatek/contacts/ext/DialPadExtension;

    move-result-object v0

    return-object v0
.end method

.method public getDialerSearchAdapterExtension()Lcom/mediatek/contacts/ext/DialerSearchAdapterExtension;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getDialerSearchAdapterExtension()Lcom/mediatek/contacts/ext/DialerSearchAdapterExtension;

    move-result-object v0

    return-object v0
.end method

.method public getDialtactsExtension()Lcom/mediatek/contacts/ext/DialtactsExtension;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getDialtactsExtension()Lcom/mediatek/contacts/ext/DialtactsExtension;

    move-result-object v0

    return-object v0
.end method

.method public getIccCardExtension()Lcom/mediatek/contacts/ext/IccCardExtension;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getIccCardExtension()Lcom/mediatek/contacts/ext/IccCardExtension;

    move-result-object v0

    return-object v0
.end method

.method public getImportExportEnhancementExtension()Lcom/mediatek/contacts/ext/ImportExportEnhancementExtension;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getImportExportEnhancementExtension()Lcom/mediatek/contacts/ext/ImportExportEnhancementExtension;

    move-result-object v0

    return-object v0
.end method

.method public getQuickContactExtension()Lcom/mediatek/contacts/ext/QuickContactExtension;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getQuickContactExtension()Lcom/mediatek/contacts/ext/QuickContactExtension;

    move-result-object v0

    return-object v0
.end method

.method public getSimPickExtension()Lcom/mediatek/contacts/ext/SimPickExtension;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getSimPickExtension()Lcom/mediatek/contacts/ext/SimPickExtension;

    move-result-object v0

    return-object v0
.end method

.method public getSimServiceExtension()Lcom/mediatek/contacts/ext/SimServiceExtension;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getSimServiceExtension()Lcom/mediatek/contacts/ext/SimServiceExtension;

    move-result-object v0

    return-object v0
.end method

.method public getSpeedDialExtension()Lcom/mediatek/contacts/ext/SpeedDialExtension;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-virtual {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;->getSpeedDialExtension()Lcom/mediatek/contacts/ext/SpeedDialExtension;

    move-result-object v0

    return-object v0
.end method

.method public refreshPlugins()V
    .locals 0

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/mediatek/contacts/ExtensionManager;->resetPlugins()V

    .line 227
    invoke-direct {p0}, Lcom/mediatek/contacts/ExtensionManager;->getPlugin()V

    .line 228
    return-void
.end method

.method public resetPlugins()V
    .locals 1

    .prologue
    .line 218
    new-instance v0, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    invoke-direct {v0}, Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/ExtensionManager;->mContactPluinContainer:Lcom/mediatek/contacts/extension/ContactPluginExtensionContainer;

    .line 219
    return-void
.end method
