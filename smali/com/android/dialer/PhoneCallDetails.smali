.class public Lcom/android/dialer/PhoneCallDetails;
.super Ljava/lang/Object;
.source "PhoneCallDetails.java"


# instance fields
.field public callCount:I

.field public final callTypes:[I

.field public final contactUri:Landroid/net/Uri;

.field public final countryIso:Ljava/lang/String;

.field public final date:J

.field public final duration:J

.field public final formattedNumber:Ljava/lang/CharSequence;

.field public final geocode:Ljava/lang/String;

.field public ipPrefix:Ljava/lang/String;

.field public isVtCall:I

.field public final name:Ljava/lang/CharSequence;

.field public final number:Ljava/lang/CharSequence;

.field public final numberLabel:Ljava/lang/CharSequence;

.field public final numberPresentation:I

.field public final numberType:I

.field public final photoUri:Landroid/net/Uri;

.field public simId:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJI)V
    .locals 17
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "numberPresentation"    # I
    .param p3, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p4, "countryIso"    # Ljava/lang/String;
    .param p5, "geocode"    # Ljava/lang/String;
    .param p6, "callTypes"    # [I
    .param p7, "date"    # J
    .param p9, "duration"    # J
    .param p11, "isVtCall"    # I

    .prologue
    .line 77
    const-string v11, ""

    const/4 v12, 0x0

    const-string v13, ""

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move/from16 v16, p11

    invoke-direct/range {v0 .. v16}, Lcom/android/dialer/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJIIILjava/lang/String;)V
    .locals 20
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "numberPresentation"    # I
    .param p3, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p4, "countryIso"    # Ljava/lang/String;
    .param p5, "geocode"    # Ljava/lang/String;
    .param p6, "callTypes"    # [I
    .param p7, "date"    # J
    .param p9, "duration"    # J
    .param p11, "simId"    # I
    .param p12, "vtCall"    # I
    .param p13, "callCount"    # I
    .param p14, "ipPrefix"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string v11, ""

    const/4 v12, 0x0

    const-string v13, ""

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move/from16 v16, p11

    move/from16 v17, p12

    move/from16 v18, p13

    move-object/from16 v19, p14

    invoke-direct/range {v0 .. v19}, Lcom/android/dialer/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IIILjava/lang/String;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;I)V
    .locals 1
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "numberPresentation"    # I
    .param p3, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p4, "countryIso"    # Ljava/lang/String;
    .param p5, "geocode"    # Ljava/lang/String;
    .param p6, "callTypes"    # [I
    .param p7, "date"    # J
    .param p9, "duration"    # J
    .param p11, "name"    # Ljava/lang/CharSequence;
    .param p12, "numberType"    # I
    .param p13, "numberLabel"    # Ljava/lang/CharSequence;
    .param p14, "contactUri"    # Landroid/net/Uri;
    .param p15, "photoUri"    # Landroid/net/Uri;
    .param p16, "isVtCall"    # I

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 89
    iput p2, p0, Lcom/android/dialer/PhoneCallDetails;->numberPresentation:I

    .line 90
    iput-object p3, p0, Lcom/android/dialer/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    .line 91
    iput-object p4, p0, Lcom/android/dialer/PhoneCallDetails;->countryIso:Ljava/lang/String;

    .line 92
    iput-object p5, p0, Lcom/android/dialer/PhoneCallDetails;->geocode:Ljava/lang/String;

    .line 93
    iput-object p6, p0, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    .line 94
    iput-wide p7, p0, Lcom/android/dialer/PhoneCallDetails;->date:J

    .line 95
    iput-wide p9, p0, Lcom/android/dialer/PhoneCallDetails;->duration:J

    .line 96
    iput-object p11, p0, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 97
    iput p12, p0, Lcom/android/dialer/PhoneCallDetails;->numberType:I

    .line 98
    iput-object p13, p0, Lcom/android/dialer/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 99
    iput-object p14, p0, Lcom/android/dialer/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 100
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/dialer/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    .line 102
    move/from16 v0, p16

    iput v0, p0, Lcom/android/dialer/PhoneCallDetails;->isVtCall:I

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IIILjava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "numberPresentation"    # I
    .param p3, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p4, "countryIso"    # Ljava/lang/String;
    .param p5, "geocode"    # Ljava/lang/String;
    .param p6, "callTypes"    # [I
    .param p7, "date"    # J
    .param p9, "duration"    # J
    .param p11, "name"    # Ljava/lang/CharSequence;
    .param p12, "numberType"    # I
    .param p13, "numberLabel"    # Ljava/lang/CharSequence;
    .param p14, "contactUri"    # Landroid/net/Uri;
    .param p15, "photoUri"    # Landroid/net/Uri;
    .param p16, "simId"    # I
    .param p17, "vtCall"    # I
    .param p18, "callCount"    # I
    .param p19, "ipPrefix"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 128
    iput p2, p0, Lcom/android/dialer/PhoneCallDetails;->numberPresentation:I

    .line 129
    iput-object p3, p0, Lcom/android/dialer/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    .line 130
    iput-object p4, p0, Lcom/android/dialer/PhoneCallDetails;->countryIso:Ljava/lang/String;

    .line 131
    iput-object p5, p0, Lcom/android/dialer/PhoneCallDetails;->geocode:Ljava/lang/String;

    .line 132
    iput-object p6, p0, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    .line 133
    iput-wide p7, p0, Lcom/android/dialer/PhoneCallDetails;->date:J

    .line 134
    iput-wide p9, p0, Lcom/android/dialer/PhoneCallDetails;->duration:J

    .line 135
    iput-object p11, p0, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 136
    iput p12, p0, Lcom/android/dialer/PhoneCallDetails;->numberType:I

    .line 137
    iput-object p13, p0, Lcom/android/dialer/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 138
    iput-object p14, p0, Lcom/android/dialer/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 139
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/dialer/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    .line 141
    move/from16 v0, p16

    iput v0, p0, Lcom/android/dialer/PhoneCallDetails;->simId:I

    .line 142
    move/from16 v0, p17

    iput v0, p0, Lcom/android/dialer/PhoneCallDetails;->isVtCall:I

    .line 143
    move/from16 v0, p18

    iput v0, p0, Lcom/android/dialer/PhoneCallDetails;->callCount:I

    .line 144
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/dialer/PhoneCallDetails;->ipPrefix:Ljava/lang/String;

    .line 145
    return-void
.end method
