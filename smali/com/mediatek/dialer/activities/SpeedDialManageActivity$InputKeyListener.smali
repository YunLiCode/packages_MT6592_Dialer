.class Lcom/mediatek/dialer/activities/SpeedDialManageActivity$InputKeyListener;
.super Landroid/text/method/DialerKeyListener;
.source "SpeedDialManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dialer/activities/SpeedDialManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputKeyListener"
.end annotation


# static fields
.field public static final CHARACTERS:[C

.field private static sKeyListener:Lcom/mediatek/dialer/activities/SpeedDialManageActivity$InputKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1439
    const/16 v0, 0x13

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$InputKeyListener;->CHARACTERS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2as
        0x23s
        0x50s
        0x57s
        0x70s
        0x77s
        0x2cs
        0x3bs
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1437
    invoke-direct {p0}, Landroid/text/method/DialerKeyListener;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mediatek/dialer/activities/SpeedDialManageActivity$InputKeyListener;
    .locals 1

    .prologue
    .line 1447
    sget-object v0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$InputKeyListener;->sKeyListener:Lcom/mediatek/dialer/activities/SpeedDialManageActivity$InputKeyListener;

    if-nez v0, :cond_0

    .line 1448
    new-instance v0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$InputKeyListener;

    invoke-direct {v0}, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$InputKeyListener;-><init>()V

    sput-object v0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$InputKeyListener;->sKeyListener:Lcom/mediatek/dialer/activities/SpeedDialManageActivity$InputKeyListener;

    .line 1450
    :cond_0
    sget-object v0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$InputKeyListener;->sKeyListener:Lcom/mediatek/dialer/activities/SpeedDialManageActivity$InputKeyListener;

    return-object v0
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 1444
    sget-object v0, Lcom/mediatek/dialer/activities/SpeedDialManageActivity$InputKeyListener;->CHARACTERS:[C

    return-object v0
.end method
