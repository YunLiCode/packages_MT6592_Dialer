.class public Lcom/android/incallui/CallButtonFragment$InCallMenuState;
.super Ljava/lang/Object;
.source "CallButtonFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallButtonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InCallMenuState"
.end annotation


# static fields
.field public static sCanAddCall:Z

.field public static sCanECT:Z

.field public static sCanHangupActiveAndAnswerWaiting:Z

.field public static sCanHangupAll:Z

.field public static sCanHangupHolding:Z

.field public static sCanMerge:Z

.field public static sCanRecording:Z

.field public static sCanVTVoiceAnswer:Z

.field public static sDisableAdd:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 894
    sput-boolean v0, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanMerge:Z

    .line 895
    sput-boolean v0, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanAddCall:Z

    .line 896
    sput-boolean v0, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanHangupAll:Z

    .line 897
    sput-boolean v0, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanHangupHolding:Z

    .line 898
    sput-boolean v0, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanHangupActiveAndAnswerWaiting:Z

    .line 899
    sput-boolean v0, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanECT:Z

    .line 900
    sput-boolean v0, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanVTVoiceAnswer:Z

    .line 901
    sput-boolean v0, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanRecording:Z

    .line 902
    sput-boolean v0, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sDisableAdd:Z

    .line 903
    return-void
.end method
