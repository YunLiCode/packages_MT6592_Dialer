.class public Lcom/mediatek/dialer/calloption/ContactsCallOptionHandler;
.super Lcom/mediatek/calloption/CallOptionHandler;
.source "ContactsCallOptionHandler.java"

# interfaces
.implements Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactsCallOptionHandler"


# instance fields
.field private mActivityContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/calloption/CallOptionHandlerFactory;)V
    .locals 0
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "callOptionHandlerFactory"    # Lcom/mediatek/calloption/CallOptionHandlerFactory;

    .prologue
    .line 27
    invoke-direct {p0, p2}, Lcom/mediatek/calloption/CallOptionHandler;-><init>(Lcom/mediatek/calloption/CallOptionHandlerFactory;)V

    .line 28
    iput-object p1, p0, Lcom/mediatek/dialer/calloption/ContactsCallOptionHandler;->mActivityContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string v0, "ContactsCallOptionHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method


# virtual methods
.method public doCallOptionHandle(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    .line 39
    .local v7, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v7, :cond_1

    .line 40
    const-string v0, "ContactsCallOptionHandler"

    const-string v1, "Can not get telephony service object"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-static {}, Lcom/android/dialer/DialerApplication;->getInstance()Lcom/android/dialer/DialerApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/calloption/SimAssociateHandler;->getInstance(Landroid/content/Context;)Lcom/mediatek/calloption/SimAssociateHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/calloption/SimAssociateHandler;->load()V

    .line 44
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactsCallOptionHandlerExtension()Lcom/mediatek/contacts/ext/ContactsCallOptionHandlerExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/dialer/calloption/ContactsCallOptionHandler;->mCallOptionHandlerList:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/mediatek/dialer/calloption/ContactsCallOptionHandler;->mActivityContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/dialer/DialerApplication;->getInstance()Lcom/android/dialer/DialerApplication;

    move-result-object v3

    invoke-static {}, Lcom/android/dialer/DialerApplication;->getInstance()Lcom/android/dialer/DialerApplication;

    move-result-object v4

    iget-object v6, v4, Lcom/android/dialer/DialerApplication;->cellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v9}, Lcom/mediatek/contacts/ext/ContactsCallOptionHandlerExtension;->doCallOptionHandle(Ljava/util/LinkedList;Landroid/content/Context;Landroid/content/Context;Landroid/content/Intent;Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;Lcom/mediatek/CellConnService/CellConnMgr;Lcom/android/internal/telephony/ITelephony;ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v2, p0, Lcom/mediatek/dialer/calloption/ContactsCallOptionHandler;->mActivityContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/dialer/DialerApplication;->getInstance()Lcom/android/dialer/DialerApplication;

    move-result-object v3

    invoke-static {}, Lcom/android/dialer/DialerApplication;->getInstance()Lcom/android/dialer/DialerApplication;

    move-result-object v0

    iget-object v6, v0, Lcom/android/dialer/DialerApplication;->cellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v8

    const/4 v9, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p0

    invoke-super/range {v1 .. v9}, Lcom/mediatek/calloption/CallOptionHandler;->doCallOptionHandle(Landroid/content/Context;Landroid/content/Context;Landroid/content/Intent;Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;Lcom/mediatek/CellConnService/CellConnMgr;Lcom/android/internal/telephony/ITelephony;ZZ)V

    goto :goto_0
.end method

.method public onContinueCallProcess(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/mediatek/dialer/calloption/ContactsCallOptionHandler;->dismissDialogs()V

    .line 69
    const-string v0, "com.mediatek.phone.OutgoingCallReceiver"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v0, "com.android.phone"

    const-string v1, "com.mediatek.phone.OutgoingCallReceiver"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-static {}, Lcom/android/dialer/DialerApplication;->getInstance()Lcom/android/dialer/DialerApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/dialer/DialerApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    return-void
.end method

.method public onHandlingFinish()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public onPlaceCallDirectly(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    const-string v0, "com.mediatek.phone.OutgoingCallReceiver"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v0, "com.android.phone"

    const-string v1, "com.mediatek.phone.OutgoingCallReceiver"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-static {}, Lcom/android/dialer/DialerApplication;->getInstance()Lcom/android/dialer/DialerApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/dialer/DialerApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 78
    return-void
.end method
