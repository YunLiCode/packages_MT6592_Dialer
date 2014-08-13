.class public Lcom/mediatek/dialer/calllogex/CallLogGroupBuilderEx;
.super Ljava/lang/Object;
.source "CallLogGroupBuilderEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/dialer/calllogex/CallLogGroupBuilderEx$GroupCreator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallLogGroupBuilder"


# instance fields
.field private final mGroupCreator:Lcom/mediatek/dialer/calllogex/CallLogGroupBuilderEx$GroupCreator;


# direct methods
.method public constructor <init>(Lcom/mediatek/dialer/calllogex/CallLogGroupBuilderEx$GroupCreator;)V
    .locals 0
    .param p1, "groupCreator"    # Lcom/mediatek/dialer/calllogex/CallLogGroupBuilderEx$GroupCreator;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/mediatek/dialer/calllogex/CallLogGroupBuilderEx;->mGroupCreator:Lcom/mediatek/dialer/calllogex/CallLogGroupBuilderEx$GroupCreator;

    .line 45
    return-void
.end method

.method private addGroup(II)V
    .locals 2
    .param p1, "cursorPosition"    # I
    .param p2, "size"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogGroupBuilderEx;->mGroupCreator:Lcom/mediatek/dialer/calllogex/CallLogGroupBuilderEx$GroupCreator;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/mediatek/dialer/calllogex/CallLogGroupBuilderEx$GroupCreator;->addGroup(IIZ)V

    .line 189
    return-void
.end method


# virtual methods
.method public addGroups(Landroid/database/Cursor;)V
    .locals 22
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 59
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 61
    .local v3, "count":I
    const-string v19, "CallLogGroupBuilder"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "addGroups(), cursor count = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    if-nez v3, :cond_0

    .line 178
    :goto_0
    return-void

    .line 67
    :cond_0
    const/4 v4, 0x1

    .line 68
    .local v4, "currentGroupSize":I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 77
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 79
    .local v11, "firstNumber":Ljava/lang/String;
    const/16 v19, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 82
    .local v8, "firstCallType":I
    const/16 v19, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 83
    .local v12, "firstSimId":I
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 84
    .local v13, "firstVtCall":I
    const/16 v19, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 85
    .local v9, "firstDate":J
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v19

    if-eqz v19, :cond_1

    .line 86
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllogex/CallLogGroupBuilderEx;->setGroupHeaderPosition(I)V

    .line 90
    :cond_1
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 97
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 98
    .local v5, "currentNumber":Ljava/lang/String;
    const/16 v19, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 100
    .local v2, "callType":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v5}, Lcom/mediatek/dialer/calllogex/CallLogGroupBuilderEx;->equalNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 103
    .local v15, "sameNumber":Z
    const/16 v19, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 104
    .local v17, "simId":I
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 105
    .local v18, "vtCall":I
    const/16 v19, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 106
    .local v6, "date":J
    invoke-static {v9, v10, v6, v7}, Lcom/mediatek/dialer/calllog/CallLogDateFormatHelper;->isSameDay(JJ)Z

    move-result v14

    .line 126
    .local v14, "isSameDay":Z
    const/16 v19, 0x4

    move/from16 v0, v19

    if-eq v8, v0, :cond_2

    if-eqz v15, :cond_2

    if-ne v8, v2, :cond_2

    move/from16 v0, v17

    if-ne v12, v0, :cond_2

    move/from16 v0, v18

    if-ne v13, v0, :cond_2

    if-nez v14, :cond_3

    .line 130
    :cond_2
    const/16 v16, 0x0

    .line 136
    .local v16, "shouldGroup":Z
    :goto_2
    if-eqz v16, :cond_4

    .line 139
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 132
    .end local v16    # "shouldGroup":Z
    :cond_3
    const/16 v16, 0x1

    .restart local v16    # "shouldGroup":Z
    goto :goto_2

    .line 149
    :cond_4
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v19

    sub-int v19, v19, v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/mediatek/dialer/calllogex/CallLogGroupBuilderEx;->addGroup(II)V

    .line 150
    if-nez v14, :cond_5

    .line 151
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/mediatek/dialer/calllogex/CallLogGroupBuilderEx;->setGroupHeaderPosition(I)V

    .line 155
    :cond_5
    const/4 v4, 0x1

    .line 157
    move-object v11, v5

    .line 158
    move v8, v2

    .line 160
    move v8, v2

    .line 161
    move/from16 v12, v17

    .line 162
    move/from16 v13, v18

    .line 163
    move-wide v9, v6

    goto/16 :goto_1

    .line 176
    .end local v2    # "callType":I
    .end local v5    # "currentNumber":Ljava/lang/String;
    .end local v6    # "date":J
    .end local v14    # "isSameDay":Z
    .end local v15    # "sameNumber":Z
    .end local v16    # "shouldGroup":Z
    .end local v17    # "simId":I
    .end local v18    # "vtCall":I
    :cond_6
    sub-int v19, v3, v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/mediatek/dialer/calllogex/CallLogGroupBuilderEx;->addGroup(II)V

    goto/16 :goto_0
.end method

.method public compareSipAddresses(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "number1"    # Ljava/lang/String;
    .param p2, "number2"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/16 v9, 0x40

    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 202
    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    :cond_0
    if-ne p1, p2, :cond_2

    .line 226
    :cond_1
    :goto_0
    return v6

    :cond_2
    move v6, v7

    .line 202
    goto :goto_0

    .line 204
    :cond_3
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 207
    .local v0, "index1":I
    if-eq v0, v8, :cond_5

    .line 208
    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, "userinfo1":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "rest1":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 218
    .local v1, "index2":I
    if-eq v1, v8, :cond_6

    .line 219
    invoke-virtual {p2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, "userinfo2":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "rest2":Ljava/lang/String;
    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_4
    move v6, v7

    goto :goto_0

    .line 211
    .end local v1    # "index2":I
    .end local v2    # "rest1":Ljava/lang/String;
    .end local v3    # "rest2":Ljava/lang/String;
    .end local v4    # "userinfo1":Ljava/lang/String;
    .end local v5    # "userinfo2":Ljava/lang/String;
    :cond_5
    move-object v4, p1

    .line 212
    .restart local v4    # "userinfo1":Ljava/lang/String;
    const-string v2, ""

    .restart local v2    # "rest1":Ljava/lang/String;
    goto :goto_1

    .line 222
    .restart local v1    # "index2":I
    :cond_6
    move-object v5, p2

    .line 223
    .restart local v5    # "userinfo2":Ljava/lang/String;
    const-string v3, ""

    .restart local v3    # "rest2":Ljava/lang/String;
    goto :goto_2
.end method

.method public equalNumbers(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "number1"    # Ljava/lang/String;
    .param p2, "number2"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 193
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/dialer/calllogex/CallLogGroupBuilderEx;->compareSipAddresses(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 196
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setGroupHeaderPosition(I)V
    .locals 1
    .param p1, "cursorPosition"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/mediatek/dialer/calllogex/CallLogGroupBuilderEx;->mGroupCreator:Lcom/mediatek/dialer/calllogex/CallLogGroupBuilderEx$GroupCreator;

    invoke-interface {v0, p1}, Lcom/mediatek/dialer/calllogex/CallLogGroupBuilderEx$GroupCreator;->setGroupHeaderPosition(I)V

    .line 234
    return-void
.end method
