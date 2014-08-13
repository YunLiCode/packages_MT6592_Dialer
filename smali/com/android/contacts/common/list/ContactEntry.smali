.class public Lcom/android/contacts/common/list/ContactEntry;
.super Ljava/lang/Object;
.source "ContactEntry.java"


# static fields
.field public static final BLANK_ENTRY:Lcom/android/contacts/common/list/ContactEntry;


# instance fields
.field public contact_id:J

.field public id:J

.field public indexSimOrPhone:I

.field public isDefaultNumber:Z

.field public isFavorite:Z

.field public lookupKey:Landroid/net/Uri;

.field public name:Ljava/lang/String;

.field public phoneLabel:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public photoUri:Landroid/net/Uri;

.field public pinned:I

.field public presenceIcon:Landroid/graphics/drawable/Drawable;

.field public status:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/android/contacts/common/list/ContactEntry;

    invoke-direct {v0}, Lcom/android/contacts/common/list/ContactEntry;-><init>()V

    sput-object v0, Lcom/android/contacts/common/list/ContactEntry;->BLANK_ENTRY:Lcom/android/contacts/common/list/ContactEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    .line 36
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntry;->isFavorite:Z

    .line 37
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntry;->isDefaultNumber:Z

    return-void
.end method
