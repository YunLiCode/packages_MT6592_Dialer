.class public Lcom/mediatek/dialer/calloption/ContactsInternationalCallOptionHandler;
.super Lcom/mediatek/calloption/InternationalCallOptionHandler;
.source "ContactsInternationalCallOptionHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneInternationalCallOptionHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/mediatek/calloption/InternationalCallOptionHandler;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 96
    const-string v0, "PhoneInternationalCallOptionHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method


# virtual methods
.method protected showDialog(Landroid/content/Context;IILcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialogType"    # I
    .param p3, "internationalDialOption"    # I
    .param p4, "prefixInfo"    # Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    .param p5, "clickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;
    .param p7, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 57
    iget-object v1, p0, Lcom/mediatek/dialer/calloption/ContactsInternationalCallOptionHandler;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/mediatek/dialer/calloption/ContactsInternationalCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 60
    :cond_0
    new-instance v1, Lcom/mediatek/dialer/calloption/ContactsInternationalDialogHandler;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/mediatek/dialer/calloption/ContactsInternationalDialogHandler;-><init>(Landroid/content/Context;IILcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;)V

    iput-object v1, p0, Lcom/mediatek/dialer/calloption/ContactsInternationalCallOptionHandler;->mDialogHandler:Lcom/mediatek/calloption/InternationalDialogHandler;

    .line 62
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a010c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a011a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/dialer/calloption/ContactsInternationalCallOptionHandler;->mDialogHandler:Lcom/mediatek/calloption/InternationalDialogHandler;

    invoke-virtual {v2}, Lcom/mediatek/calloption/InternationalDialogHandler;->createDialogView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/dialer/calloption/ContactsInternationalCallOptionHandler;->mDialog:Landroid/app/Dialog;

    .line 67
    iget-object v2, p0, Lcom/mediatek/dialer/calloption/ContactsInternationalCallOptionHandler;->mDialogHandler:Lcom/mediatek/calloption/InternationalDialogHandler;

    iget-object v1, p0, Lcom/mediatek/dialer/calloption/ContactsInternationalCallOptionHandler;->mDialog:Landroid/app/Dialog;

    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Lcom/mediatek/calloption/InternationalDialogHandler;->setAlertDialog(Landroid/app/AlertDialog;)V

    .line 68
    iget-object v1, p0, Lcom/mediatek/dialer/calloption/ContactsInternationalCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 69
    iget-object v1, p0, Lcom/mediatek/dialer/calloption/ContactsInternationalCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 70
    iget-object v1, p0, Lcom/mediatek/dialer/calloption/ContactsInternationalCallOptionHandler;->mDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/mediatek/dialer/calloption/ContactsInternationalCallOptionHandler;->mDialogHandler:Lcom/mediatek/calloption/InternationalDialogHandler;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 71
    iget-object v1, p0, Lcom/mediatek/dialer/calloption/ContactsInternationalCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 72
    iget-object v1, p0, Lcom/mediatek/dialer/calloption/ContactsInternationalCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 73
    return-void
.end method

.method protected showInvalidNumberDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;
    .param p4, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 79
    iget-object v1, p0, Lcom/mediatek/dialer/calloption/ContactsInternationalCallOptionHandler;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/mediatek/dialer/calloption/ContactsInternationalCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 82
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/dialer/calloption/ContactsInternationalCallOptionHandler;->mDialogHandler:Lcom/mediatek/calloption/InternationalDialogHandler;

    .line 83
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 84
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a011c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/dialer/calloption/ContactsInternationalCallOptionHandler;->mDialog:Landroid/app/Dialog;

    .line 90
    iget-object v1, p0, Lcom/mediatek/dialer/calloption/ContactsInternationalCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 91
    iget-object v1, p0, Lcom/mediatek/dialer/calloption/ContactsInternationalCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 92
    iget-object v1, p0, Lcom/mediatek/dialer/calloption/ContactsInternationalCallOptionHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 93
    return-void
.end method
