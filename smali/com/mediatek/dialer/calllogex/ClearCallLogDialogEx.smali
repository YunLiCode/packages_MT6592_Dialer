.class public Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx;
.super Landroid/app/DialogFragment;
.source "ClearCallLogDialogEx.java"


# static fields
.field private static final mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/android/dialerbind/ObjectFactory;->newCachedNumberLookupService()Lcom/android/dialer/service/CachedNumberLookupService;

    move-result-object v0

    sput-object v0, Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/dialer/service/CachedNumberLookupService;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    return-object v0
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 45
    new-instance v0, Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx;

    invoke-direct {v0}, Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx;-><init>()V

    .line 46
    .local v0, "dialog":Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx;
    const-string v1, "deleteCallLog"

    invoke-virtual {v0, p0, v1}, Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 52
    .local v2, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx$1;

    invoke-direct {v1, p0, v2, v0}, Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx$1;-><init>(Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx;Landroid/content/ContentResolver;Landroid/content/Context;)V

    .line 79
    .local v1, "okListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/dialer/calllogex/ClearCallLogDialogEx;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a0565

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0566

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
