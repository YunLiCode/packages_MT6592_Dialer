.class Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;
.super Ljava/lang/Object;
.source "DialerDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/database/DialerDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactMatch"
.end annotation


# instance fields
.field private final id:J

.field private final lookupKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/dialer/database/DialerDatabaseHelper;


# direct methods
.method public constructor <init>(Lcom/android/dialer/database/DialerDatabaseHelper;Ljava/lang/String;J)V
    .locals 0
    .param p2, "lookupKey"    # Ljava/lang/String;
    .param p3, "id"    # J

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;->this$0:Lcom/android/dialer/database/DialerDatabaseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p2, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;->lookupKey:Ljava/lang/String;

    .line 278
    iput-wide p3, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;->id:J

    .line 279
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 288
    if-ne p0, p1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v1

    .line 291
    :cond_1
    instance-of v3, p1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 292
    check-cast v0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;

    .line 293
    .local v0, "that":Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;
    iget-object v3, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;->lookupKey:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;->lookupKey:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "that":Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;
    :cond_3
    move v1, v2

    .line 296
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 283
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;->lookupKey:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
