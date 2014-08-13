.class public Lcom/android/dialer/dialpad/UnicodeDialerKeyListener;
.super Landroid/text/method/DialerKeyListener;
.source "UnicodeDialerKeyListener.java"


# static fields
.field public static final CHARACTERS:[C

.field public static final INSTANCE:Lcom/android/dialer/dialpad/UnicodeDialerKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/android/dialer/dialpad/UnicodeDialerKeyListener;

    invoke-direct {v0}, Lcom/android/dialer/dialpad/UnicodeDialerKeyListener;-><init>()V

    sput-object v0, Lcom/android/dialer/dialpad/UnicodeDialerKeyListener;->INSTANCE:Lcom/android/dialer/dialpad/UnicodeDialerKeyListener;

    .line 57
    const/16 v0, 0x49

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/dialer/dialpad/UnicodeDialerKeyListener;->CHARACTERS:[C

    return-void

    nop

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
        0x23s
        0x2as
        0x2bs
        0x2ds
        0x28s
        0x29s
        0x2cs
        0x2fs
        0x4es
        0x2es
        0x20s
        0x3bs
        0x50s
        0x57s
        0x70s
        0x77s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x78s
        0x79s
        0x7as
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x4as
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4fs
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/text/method/DialerKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "converted":Ljava/lang/String;
    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 38
    invoke-super/range {v0 .. v6}, Landroid/text/method/DialerKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 39
    .local v7, "result":Ljava/lang/CharSequence;
    if-nez v7, :cond_0

    .line 40
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    const/4 v7, 0x0

    .line 52
    .end local v7    # "result":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object v7

    .line 49
    .restart local v7    # "result":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {v1, p2, p3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_0
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/dialer/dialpad/UnicodeDialerKeyListener;->CHARACTERS:[C

    return-object v0
.end method
