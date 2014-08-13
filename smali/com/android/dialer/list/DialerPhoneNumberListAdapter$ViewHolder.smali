.class Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DialerPhoneNumberListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/DialerPhoneNumberListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public callType:Landroid/widget/ImageView;

.field public date:Landroid/widget/TextView;

.field public labelAndNumber:Landroid/widget/TextView;

.field public name:Landroid/widget/TextView;

.field public operator:Landroid/widget/TextView;

.field public quickContactBadge:Lcom/mediatek/dialer/widget/QuickContactBadgeWithPhoneNumber;

.field final synthetic this$0:Lcom/android/dialer/list/DialerPhoneNumberListAdapter;


# direct methods
.method private constructor <init>(Lcom/android/dialer/list/DialerPhoneNumberListAdapter;)V
    .locals 0

    .prologue
    .line 721
    iput-object p1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;->this$0:Lcom/android/dialer/list/DialerPhoneNumberListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/list/DialerPhoneNumberListAdapter;Lcom/android/dialer/list/DialerPhoneNumberListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/dialer/list/DialerPhoneNumberListAdapter;
    .param p2, "x1"    # Lcom/android/dialer/list/DialerPhoneNumberListAdapter$1;

    .prologue
    .line 721
    invoke-direct {p0, p1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter$ViewHolder;-><init>(Lcom/android/dialer/list/DialerPhoneNumberListAdapter;)V

    return-void
.end method
