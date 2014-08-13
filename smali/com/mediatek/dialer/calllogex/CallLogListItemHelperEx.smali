.class Lcom/mediatek/dialer/calllogex/CallLogListItemHelperEx;
.super Ljava/lang/Object;
.source "CallLogListItemHelperEx.java"


# instance fields
.field private final mPhoneCallDetailsHelper:Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;

.field private final mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "phoneCallDetailsHelper"    # Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;
    .param p2, "phoneNumberHelper"    # Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;
    .param p3, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogListItemHelperEx;->mPhoneCallDetailsHelper:Lcom/mediatek/dialer/PhoneCallDetailsHelperEx;

    .line 46
    iput-object p2, p0, Lcom/mediatek/dialer/calllogex/CallLogListItemHelperEx;->mPhoneNumberHelper:Lcom/mediatek/dialer/calllogex/PhoneNumberHelperEx;

    .line 47
    iput-object p3, p0, Lcom/mediatek/dialer/calllogex/CallLogListItemHelperEx;->mResources:Landroid/content/res/Resources;

    .line 48
    return-void
.end method
