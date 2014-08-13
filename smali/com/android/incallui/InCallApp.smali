.class public Lcom/android/incallui/InCallApp;
.super Landroid/app/Application;
.source "InCallApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_HANG_UP_ONGOING_CALL:Ljava/lang/String; = "com.android.incallui.ACTION_HANG_UP_ONGOING_CALL"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 48
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method
