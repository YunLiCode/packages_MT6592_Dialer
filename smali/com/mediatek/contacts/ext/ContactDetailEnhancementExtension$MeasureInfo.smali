.class public Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;
.super Ljava/lang/Object;
.source "ContactDetailEnhancementExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MeasureInfo"
.end annotation


# instance fields
.field public mAllowedHorizontalScrollLength:I

.field public mLowerThreshold:I

.field public mMinFragmentWidth:I

.field public mUpperThreshold:I

.field final synthetic this$0:Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;


# direct methods
.method public constructor <init>(Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;)V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 126
    iput-object p1, p0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->this$0:Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput v0, p0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mAllowedHorizontalScrollLength:I

    .line 128
    iput v0, p0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mLowerThreshold:I

    .line 129
    iput v0, p0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mUpperThreshold:I

    .line 130
    iput v0, p0, Lcom/mediatek/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mMinFragmentWidth:I

    return-void
.end method
