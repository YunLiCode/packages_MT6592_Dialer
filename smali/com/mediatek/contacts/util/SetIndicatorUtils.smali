.class public Lcom/mediatek/contacts/util/SetIndicatorUtils;
.super Ljava/lang/Object;
.source "SetIndicatorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/util/SetIndicatorUtils$1;,
        Lcom/mediatek/contacts/util/SetIndicatorUtils$MyBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final INDICATE_TYPE:Ljava/lang/String; = "CONTACTS"

.field private static final PEOPLEACTIVITY:Ljava/lang/String; = "com.android.contacts.activities.PeopleActivtiy"

.field private static final QUICKCONTACTACTIVITY:Ljava/lang/String; = "com.android.contacts.quickcontact.QuickContactActivity"

.field private static final TAG:Ljava/lang/String; = "SetIndicatorUtils"

.field private static sInstance:Lcom/mediatek/contacts/util/SetIndicatorUtils;


# instance fields
.field private mQuickContactIsShow:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mShowSimIndicator:Z

.field private mStatusBarMgr:Landroid/app/StatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->sInstance:Lcom/mediatek/contacts/util/SetIndicatorUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v2, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mStatusBarMgr:Landroid/app/StatusBarManager;

    .line 61
    iput-boolean v1, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mShowSimIndicator:Z

    .line 62
    new-instance v0, Lcom/mediatek/contacts/util/SetIndicatorUtils$MyBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/contacts/util/SetIndicatorUtils$MyBroadcastReceiver;-><init>(Lcom/mediatek/contacts/util/SetIndicatorUtils;Lcom/mediatek/contacts/util/SetIndicatorUtils$1;)V

    iput-object v0, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    iput-boolean v1, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mQuickContactIsShow:Z

    .line 100
    iget-object v0, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mStatusBarMgr:Landroid/app/StatusBarManager;

    if-nez v0, :cond_0

    .line 101
    invoke-static {}, Lcom/mediatek/contacts/GlobalEnv;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mStatusBarMgr:Landroid/app/StatusBarManager;

    .line 104
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/contacts/util/SetIndicatorUtils;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/contacts/util/SetIndicatorUtils;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mShowSimIndicator:Z

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/contacts/util/SetIndicatorUtils;ZLandroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/contacts/util/SetIndicatorUtils;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/app/Activity;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->setSimIndicatorVisibility(ZLandroid/app/Activity;)V

    return-void
.end method

.method public static getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->sInstance:Lcom/mediatek/contacts/util/SetIndicatorUtils;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/mediatek/contacts/util/SetIndicatorUtils;

    invoke-direct {v0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;-><init>()V

    sput-object v0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->sInstance:Lcom/mediatek/contacts/util/SetIndicatorUtils;

    .line 72
    :cond_0
    sget-object v0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->sInstance:Lcom/mediatek/contacts/util/SetIndicatorUtils;

    return-object v0
.end method

.method private setSimIndicatorVisibility(ZLandroid/app/Activity;)V
    .locals 5
    .param p1, "visible"    # Z
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, "componentName":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 110
    .local v0, "className":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {p2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_0
    const-string v2, "SetIndicatorUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setSimIndicatorVisibility]activity is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",visible:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",className:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    if-eqz p1, :cond_2

    .line 121
    iget-object v2, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mStatusBarMgr:Landroid/app/StatusBarManager;

    const-string v3, "voice_call_sim_setting"

    invoke-virtual {v2, v1, v3}, Landroid/app/StatusBarManager;->showSimIndicator(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 122
    const-string v2, "com.android.contacts.quickcontact.QuickContactActivity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mQuickContactIsShow:Z

    .line 135
    :cond_1
    :goto_0
    return-void

    .line 126
    :cond_2
    const-string v2, "com.android.contacts.quickcontact.QuickContactActivity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 127
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mQuickContactIsShow:Z

    .line 129
    :cond_3
    iget-boolean v2, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mQuickContactIsShow:Z

    if-eqz v2, :cond_4

    const-string v2, "com.android.contacts.activities.PeopleActivtiy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 130
    const-string v2, "SetIndicatorUtils"

    const-string v3, "[setSimIndicatorVisibility]no hide PEOPLEACTIVITY=com.android.contacts.activities.PeopleActivtiy"

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_4
    iget-object v2, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mStatusBarMgr:Landroid/app/StatusBarManager;

    invoke-virtual {v2, v1}, Landroid/app/StatusBarManager;->hideSimIndicator(Landroid/content/ComponentName;)V

    goto :goto_0
.end method


# virtual methods
.method public registerReceiver(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 86
    const-string v1, "SetIndicatorUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[registerReceiver] activity : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.VOICE_CALL_DEFAULT_SIM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    return-void
.end method

.method public showIndicator(ZLandroid/app/Activity;)V
    .locals 3
    .param p1, "visible"    # Z
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 76
    const-string v0, "SetIndicatorUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showIndicator]visible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iput-boolean p1, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mShowSimIndicator:Z

    .line 78
    if-eqz p1, :cond_0

    .line 79
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/mediatek/contacts/ext/ContactAccountExtension;

    move-result-object v0

    const-string v1, "CONTACTS"

    const-string v2, "ExtensionForAppGuideExt"

    invoke-virtual {v0, p2, v1, v2}, Lcom/mediatek/contacts/ext/ContactAccountExtension;->switchSimGuide(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->setSimIndicatorVisibility(ZLandroid/app/Activity;)V

    .line 83
    return-void
.end method

.method public unregisterReceiver(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 93
    const-string v0, "SetIndicatorUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "u[nregisterReceiver] activity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/mediatek/contacts/util/SetIndicatorUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
    :cond_0
    return-void
.end method
