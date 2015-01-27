.class public final Lcom/mediatek/telephony/SimInfoManager;
.super Ljava/lang/Object;
.source "SimInfoManager.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/telephony/SimInfoManager$1;,
        Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;,
        Lcom/mediatek/telephony/SimInfoManager$ErrorCode;
    }
.end annotation


# static fields
.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final COLOR_1:I = 0x0

.field public static final COLOR_2:I = 0x1

.field public static final COLOR_3:I = 0x2

.field public static final COLOR_4:I = 0x3

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field public static final DATA_ROAMING_DEFAULT:I = 0x0

.field public static final DATA_ROAMING_DISABLE:I = 0x0

.field public static final DATA_ROAMING_ENABLE:I = 0x1

.field public static final DEFAULT_NAME_MAX_INDEX:I = 0x63

.field public static final DEFAULT_NAME_MIN_INDEX:I = 0x1

.field public static final DEFAULT_NAME_RES:I = 0x205008e

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final DEFAULT_SOURCE:I = 0x0

.field public static final DISLPAY_NUMBER_DEFAULT:I = 0x1

.field public static final DISPALY_NUMBER_NONE:I = 0x0

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final DISPLAY_NUMBER_FIRST:I = 0x1

.field public static final DISPLAY_NUMBER_FORMAT:Ljava/lang/String; = "display_number_format"

.field public static final DISPLAY_NUMBER_LAST:I = 0x2

.field public static final ERROR_GENERAL:I = -0x1

.field public static final ERROR_NAME_EXIST:I = -0x2

.field public static final ICC_ID:Ljava/lang/String; = "icc_id"

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final NAME_SOURCE:Ljava/lang/String; = "name_source"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final OPERATOR:Ljava/lang/String; = "operator"

.field public static final SIM_SOURCE:I = 0x1

.field public static final SLOT:Ljava/lang/String; = "slot"

.field public static final SLOT_NONE:I = -0x1

.field public static final SimBackgroundDarkRes:[I = null

.field public static final SimBackgroundLightRes:[I = null

.field public static final SimBackgroundRes:[I = null

.field public static final USER_INPUT:I = 0x2

.field public static final WAP_PUSH:Ljava/lang/String; = "wap_push"

.field public static final WAP_PUSH_DEFAULT:I = -0x1

.field public static final WAP_PUSH_DISABLE:I = 0x0

.field public static final WAP_PUSH_ENABLE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 55
    const-string v0, "content://telephony/siminfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    .line 138
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundRes:[I

    .line 146
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkRes:[I

    .line 153
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundLightRes:[I

    return-void

    .line 138
    nop

    :array_0
    .array-data 0x4
        0xe3t 0x0t 0x2t 0x2t
        0xe6t 0x0t 0x2t 0x2t
        0xe4t 0x0t 0x2t 0x2t
        0xe7t 0x0t 0x2t 0x2t
    .end array-data

    .line 146
    :array_1
    .array-data 0x4
        0xf2t 0x0t 0x2t 0x2t
        0xf4t 0x0t 0x2t 0x2t
        0xf3t 0x0t 0x2t 0x2t
        0xf5t 0x0t 0x2t 0x2t
    .end array-data

    .line 153
    :array_2
    .array-data 0x4
        0xfbt 0x0t 0x2t 0x2t
        0xfdt 0x0t 0x2t 0x2t
        0xfct 0x0t 0x2t 0x2t
        0xfet 0x0t 0x2t 0x2t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    return-void
.end method

.method private static fromCursor(Landroid/database/Cursor;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v5, 0x1

    .line 192
    new-instance v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;-><init>(Lcom/mediatek/telephony/SimInfoManager$1;)V

    .line 193
    .local v0, info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    const-string v3, "_id"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    .line 194
    const-string v3, "icc_id"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mIccId:Ljava/lang/String;

    .line 195
    const-string v3, "display_name"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    .line 196
    const-string v3, "name_source"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNameSource:I

    .line 197
    const-string v3, "number"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    .line 198
    const-string v3, "display_number_format"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDispalyNumberFormat:I

    .line 199
    const-string v3, "color"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    .line 200
    const-string v3, "data_roaming"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDataRoaming:I

    .line 201
    const-string v3, "slot"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 202
#    const-string v3, "operator"

#    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

#    move-result v3

#    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

#    move-result-object v3

#    iput-object v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mOperator:Ljava/lang/String;

    .line 204
    const-string v3, "ro.operator.optr"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
# add
     iput-object v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mOperator:Ljava/lang/String;
    .line 205
    .local v1, optr:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "OP01"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    iget v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-nez v3, :cond_2

    .line 207
    const/4 v3, 0x0

    iput v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    .line 212
    :cond_0
    :goto_0
    sget-object v3, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundRes:[I

    array-length v2, v3

    .line 213
    .local v2, size:I
    iget v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    if-ltz v3, :cond_1

    iget v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    if-ge v3, v2, :cond_1

    .line 214
    sget-object v3, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundRes:[I

    iget v4, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    aget v3, v3, v4

    iput v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundRes:I

    .line 217
    sget-object v3, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkRes:[I

    iget v4, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    aget v3, v3, v4

    iput v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundDarkRes:I

    .line 218
    sget-object v3, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundLightRes:[I

    iget v4, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    aget v3, v3, v4

    iput v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundLightRes:I

    .line 221
    :cond_1
    const-string v3, "wap_push"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mWapPush:I

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[fromCursor] iccid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mIccId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " slot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " displayName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " color:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " operator:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mOperator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 224
    return-object v0

    .line 208
    .end local v2           #size:I
    :cond_2
    iget v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-ne v3, v5, :cond_0

    .line 209
    iput v5, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    goto/16 :goto_0
.end method

.method public static getAllSimCount(Landroid/content/Context;)I
    .locals 8
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 495
    const-string v0, "[getAllSimCount]+"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 499
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 500
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 501
    .local v6, count:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getAllSimCount]- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sim in DB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    if-eqz v7, :cond_0

    .line 506
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 510
    .end local v6           #count:I
    :cond_0
    :goto_0
    return v6

    .line 505
    :cond_1
    if-eqz v7, :cond_2

    .line 506
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 509
    :cond_2
    const-string v0, "[getAllSimCount]- return 0"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 510
    const/4 v6, 0x0

    goto :goto_0

    .line 505
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 506
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getAllSimInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 256
    const-string v0, "[getAllSimInfoList]+"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 257
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v7, simList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 261
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 262
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    invoke-static {v6}, Lcom/mediatek/telephony/SimInfoManager;->fromCursor(Landroid/database/Cursor;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 268
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 267
    :cond_1
    if-eqz v6, :cond_2

    .line 268
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 271
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getAllSimInfoList]- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " infos return"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 272
    return-object v7
.end method

.method private static getAppropriateIndex(Landroid/content/Context;JLjava/lang/String;)I
    .locals 19
    .parameter "ctx"
    .parameter "simInfoId"
    .parameter "name"

    .prologue
    .line 877
    const v2, 0x205008e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 878
    .local v10, defaultName:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v2, "display_name LIKE "

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 879
    .local v15, sb:Ljava/lang/StringBuilder;
    if-nez p3, :cond_1

    .line 880
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 884
    :goto_0
    const-string v2, " AND ("

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    const-string v2, ")"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "display_name"

    aput-object v6, v4, v5

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "display_name"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 890
    .local v9, cursor:Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 891
    .local v8, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v13, 0x1

    .line 892
    .local v13, index:I
    if-eqz v9, :cond_3

    .line 893
    :cond_0
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 894
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 895
    .local v11, displayName:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 896
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    .line 897
    .local v14, length:I
    const/4 v2, 0x2

    if-lt v14, v2, :cond_0

    .line 898
    add-int/lit8 v2, v14, -0x2

    invoke-virtual {v11, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 899
    .local v16, sub:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 900
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 901
    .local v17, value:J
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 882
    .end local v8           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v11           #displayName:Ljava/lang/String;
    .end local v13           #index:I
    .end local v14           #length:I
    .end local v16           #sub:Ljava/lang/String;
    .end local v17           #value:J
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 906
    .restart local v8       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v13       #index:I
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 908
    :cond_3
    const/4 v12, 0x1

    .local v12, i:I
    :goto_2
    const/16 v2, 0x63

    if-gt v12, v2, :cond_5

    .line 909
    int-to-long v2, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 908
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 912
    :cond_4
    move v13, v12

    .line 916
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getAppropriateIndex] index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 917
    return v13
.end method

.method public static getIdBySlot(Landroid/content/Context;I)J
    .locals 4
    .parameter "ctx"
    .parameter "simSlotId"

    .prologue
    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getIdBySlot]+ simSlotId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 428
    invoke-static {p0, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 429
    .local v0, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getIdBySlot]- simInfoId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 431
    iget-wide v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    .line 434
    :goto_0
    return-wide v1

    .line 433
    :cond_0
    const-string v1, "[getIdBySlot]- null info, return 0"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 434
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static getInsertedSimCount(Landroid/content/Context;)I
    .locals 8
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 472
    const-string v0, "[getInsertedSimCount]+"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "slot!=-1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 476
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 477
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 478
    .local v6, count:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getInsertedSimCount]- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sim inserted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    if-eqz v7, :cond_0

    .line 483
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 487
    .end local v6           #count:I
    :cond_0
    :goto_0
    return v6

    .line 482
    :cond_1
    if-eqz v7, :cond_2

    .line 483
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 486
    :cond_2
    const-string v0, "[getInsertedSimCount]- return 0"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 487
    const/4 v6, 0x0

    goto :goto_0

    .line 482
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 483
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 232
    const-string v0, "[getInsertedSimInfoList]+"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 233
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v7, simList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "slot!=-1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 237
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 238
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    invoke-static {v6}, Lcom/mediatek/telephony/SimInfoManager;->fromCursor(Landroid/database/Cursor;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 244
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 243
    :cond_1
    if-eqz v6, :cond_2

    .line 244
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 247
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getInsertedSimInfoList]- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " infos return"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 248
    return-object v7
.end method

.method public static getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ctx"
    .parameter "iccId"

    .prologue
    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getOperatorByIccId]+ iccId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 520
    invoke-static {p0, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoByIccId(Landroid/content/Context;Ljava/lang/String;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 521
    .local v0, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getOperatorByIccId]- operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 523
    iget-object v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mOperator:Ljava/lang/String;

    .line 526
    :goto_0
    return-object v1

    .line 525
    :cond_0
    const-string v1, "[getOperatorByIccId]- null info, return"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 526
    const-string v1, ""

    goto :goto_0
.end method

.method public static getOperatorBySlot(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "ctx"
    .parameter "simSlotId"

    .prologue
    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getOperatorBySlot]+ simSlotId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 537
    if-gez p1, :cond_0

    .line 538
    const-string v1, "[getOperatorBySlot]- simSlotId < 0"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 539
    const/4 v1, 0x0

    .line 547
    :goto_0
    return-object v1

    .line 541
    :cond_0
    invoke-static {p0, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 542
    .local v0, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_1

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getOperatorBySlot]- operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 544
    iget-object v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mOperator:Ljava/lang/String;

    goto :goto_0

    .line 546
    :cond_1
    const-string v1, "[getOperatorBySlot]- null info, return"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 547
    const-string v1, ""

    goto :goto_0
.end method

.method public static getSimInfoByIccId(Landroid/content/Context;Ljava/lang/String;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 7
    .parameter "ctx"
    .parameter "iccId"

    .prologue
    const/4 v2, 0x0

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSimInfoByIccId]+ iccId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 369
    if-nez p1, :cond_1

    .line 370
    const-string v0, "[getSimInfoByIccId]- null iccid"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 388
    :cond_0
    :goto_0
    return-object v2

    .line 373
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "icc_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 376
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 377
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    const-string v0, "[getSimInfoByIccId]- Info detail:"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 379
    invoke-static {v6}, Lcom/mediatek/telephony/SimInfoManager;->fromCursor(Landroid/database/Cursor;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 383
    if-eqz v6, :cond_0

    .line 384
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 383
    :cond_2
    if-eqz v6, :cond_3

    .line 384
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 387
    :cond_3
    const-string v0, "[getSimInfoByIccId]- null info return"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 384
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 7
    .parameter "ctx"
    .parameter "simInfoId"

    .prologue
    const/4 v2, 0x0

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSimInfoById]+ simInfoId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 282
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 283
    const-string v0, "[getSimInfoById]- simInfoId <= 0"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 301
    :cond_0
    :goto_0
    return-object v2

    .line 286
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 289
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 290
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    const-string v0, "[getSimInfoById]- Info detail:"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 292
    invoke-static {v6}, Lcom/mediatek/telephony/SimInfoManager;->fromCursor(Landroid/database/Cursor;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 296
    if-eqz v6, :cond_0

    .line 297
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 296
    :cond_2
    if-eqz v6, :cond_3

    .line 297
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 300
    :cond_3
    const-string v0, "[getSimInfoById]- null info return"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 297
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getSimInfoByName(Landroid/content/Context;Ljava/lang/String;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 7
    .parameter "ctx"
    .parameter "simName"

    .prologue
    const/4 v2, 0x0

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSimInfoByName]+ name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 311
    if-nez p1, :cond_1

    .line 312
    const-string v0, "[getSimInfoByName]- null name, retur null"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 330
    :cond_0
    :goto_0
    return-object v2

    .line 315
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "display_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 318
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 319
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    const-string v0, "[getSimInfoByName]- Info detail:"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 321
    invoke-static {v6}, Lcom/mediatek/telephony/SimInfoManager;->fromCursor(Landroid/database/Cursor;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 325
    if-eqz v6, :cond_0

    .line 326
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 325
    :cond_2
    if-eqz v6, :cond_3

    .line 326
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_3
    const-string v0, "[getSimInfoByName]- null info return"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 326
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 8
    .parameter "ctx"
    .parameter "simSlotId"

    .prologue
    const/4 v2, 0x0

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSimInfoBySlot]+ simSlotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 340
    if-gez p1, :cond_1

    .line 341
    const-string v0, "[getSimInfoBySlot]- simSlotId < 0"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 359
    :cond_0
    :goto_0
    return-object v2

    .line 344
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "slot=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 347
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 348
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    const-string v0, "[getSimInfoBySlot]- Info detail:"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 350
    invoke-static {v6}, Lcom/mediatek/telephony/SimInfoManager;->fromCursor(Landroid/database/Cursor;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 354
    if-eqz v6, :cond_0

    .line 355
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 354
    :cond_2
    if-eqz v6, :cond_3

    .line 355
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 358
    :cond_3
    const-string v0, "[getSimInfoBySlot]- null info return"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 355
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getSlotById(Landroid/content/Context;J)I
    .locals 8
    .parameter "ctx"
    .parameter "simInfoId"

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSlotById]+ simInfoId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 398
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 399
    const-string v0, "[getSlotById]- simInfoId <= 0"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 418
    :cond_0
    :goto_0
    return v7

    .line 402
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "slot"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 405
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 406
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 408
    .local v7, slot:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSlotById]- sim in slot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    if-eqz v6, :cond_0

    .line 414
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 413
    .end local v7           #slot:I
    :cond_2
    if-eqz v6, :cond_3

    .line 414
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 417
    :cond_3
    const-string v0, "[getSlotById]- fail, return -1"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 413
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 414
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getSlotByName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .parameter "ctx"
    .parameter "simName"

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSlotByName]+ name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 444
    if-nez p1, :cond_1

    .line 445
    const-string v0, "[getSlotByName]- simName is null, return -1"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 464
    :cond_0
    :goto_0
    return v7

    .line 448
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "slot"

    aput-object v3, v2, v5

    const-string v3, "display_name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 451
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 452
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 454
    .local v7, slot:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSlotByName]- sim in slot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    if-eqz v6, :cond_0

    .line 460
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 459
    .end local v7           #slot:I
    :cond_2
    if-eqz v6, :cond_3

    .line 460
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 463
    :cond_3
    const-string v0, "[getSlotByName]- fail, return -1"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 460
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private static getSuffixFromIndex(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 868
    const-string v0, "[getSuffixFromIndex]"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 869
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 872
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static insertIccId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 12
    .parameter "ctx"
    .parameter "iccId"
    .parameter "simSlotId"

    .prologue
    .line 752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[insertIccId]+ iccId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " simSlotId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 753
    if-nez p1, :cond_0

    .line 754
    const-string v1, "[insertIccId]- null iccId"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 755
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "IccId should not null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 758
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 759
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "icc_id=?"

    .line 760
    .local v3, selection:Ljava/lang/String;
    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "slot"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 762
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_3

    .line 763
    :cond_1
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 764
    .local v11, values:Landroid/content/ContentValues;
    const-string v1, "icc_id"

    invoke-virtual {v11, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v1, "color"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 766
    const-string v1, "slot"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 767
    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 768
    .local v10, uri:Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[insertIccId]- new sim inserted in slot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    .end local v11           #values:Landroid/content/ContentValues;
    :goto_0
    if-eqz v6, :cond_2

    .line 782
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 785
    :cond_2
    return-object v10

    .line 770
    .end local v10           #uri:Landroid/net/Uri;
    :cond_3
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 771
    .local v8, simInfoId:J
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 772
    .local v7, oldSlot:I
    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 773
    .restart local v10       #uri:Landroid/net/Uri;
    if-eq p2, v7, :cond_4

    .line 774
    new-instance v11, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v11, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 775
    .restart local v11       #values:Landroid/content/ContentValues;
    const-string v1, "slot"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 776
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v11, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 778
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[insertIccId]- existed sim in slot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 781
    .end local v7           #oldSlot:I
    .end local v8           #simInfoId:J
    .end local v10           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_5

    .line 782
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 921
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimInfoManager]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    return-void
.end method

.method public static setColor(Landroid/content/Context;IJ)I
    .locals 5
    .parameter "ctx"
    .parameter "color"
    .parameter "simInfoId"

    .prologue
    const/4 v4, 0x0

    .line 674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setColor]+ color:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " simInfoId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 675
    sget-object v2, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundRes:[I

    array-length v0, v2

    .line 676
    .local v0, size:I
    if-ltz p1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    if-lt p1, v0, :cond_1

    .line 677
    :cond_0
    const-string v2, "[setColor]- fail, return -1"

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 678
    const/4 v2, -0x1

    .line 683
    :goto_0
    return v2

    .line 680
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 681
    .local v1, value:Landroid/content/ContentValues;
    const-string v2, "color"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 682
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setColor]- color:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public static setDataRoaming(Landroid/content/Context;IJ)I
    .locals 4
    .parameter "ctx"
    .parameter "roaming"
    .parameter "simInfoId"

    .prologue
    const/4 v3, 0x0

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDataRoaming]+ roaming:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " simInfoId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 716
    if-ltz p1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    .line 717
    :cond_0
    const-string v1, "[setDataRoaming]- fail, return -1"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 718
    const/4 v1, -0x1

    .line 723
    :goto_0
    return v1

    .line 720
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 721
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "data_roaming"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDataRoaming]- roaming:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setDefaultName(Landroid/content/Context;JLjava/lang/String;)I
    .locals 17
    .parameter "ctx"
    .parameter "simInfoId"
    .parameter "name"

    .prologue
    .line 796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDefaultName]+ simInfoId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 797
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 798
    const-string v2, "[setDefaultName]- simInfoId <= 0, return -1"

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 799
    const/4 v13, -0x1

    .line 823
    :goto_0
    return v13

    .line 801
    :cond_0
    const v2, 0x205008e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 802
    .local v8, defaultName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 803
    .local v12, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 804
    .local v15, uri:Landroid/net/Uri;
    if-eqz p3, :cond_1

    .line 805
    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-wide/from16 v4, p1

    invoke-static/range {v2 .. v7}, Lcom/mediatek/telephony/SimInfoManager;->setDisplayNameEx(Landroid/content/Context;Ljava/lang/String;JJ)I

    move-result v13

    .line 806
    .local v13, result:I
    if-lez v13, :cond_1

    .line 807
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDefaultName]- name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 811
    .end local v13           #result:I
    :cond_1
    invoke-static/range {p0 .. p3}, Lcom/mediatek/telephony/SimInfoManager;->getAppropriateIndex(Landroid/content/Context;JLjava/lang/String;)I

    move-result v10

    .line 812
    .local v10, index:I
    invoke-static {v10}, Lcom/mediatek/telephony/SimInfoManager;->getSuffixFromIndex(I)Ljava/lang/String;

    move-result-object v14

    .line 813
    .local v14, suffix:Ljava/lang/String;
    new-instance v16, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 816
    .local v16, value:Landroid/content/ContentValues;
    const-string v2, "ro.operator.optr"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 817
    .local v11, optr:Ljava/lang/String;
    if-eqz v11, :cond_2

    const-string v2, "OP01"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 818
    move-object v9, v8

    .line 821
    .local v9, displayName:Ljava/lang/String;
    :goto_1
    const-string v2, "display_name"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDefaultName]- name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 823
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    goto/16 :goto_0

    .line 820
    .end local v9           #displayName:Ljava/lang/String;
    :cond_2
    if-nez p3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9       #displayName:Ljava/lang/String;
    :goto_2
    goto :goto_1

    .end local v9           #displayName:Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2
.end method

.method public static setDefaultNameEx(Landroid/content/Context;JLjava/lang/String;J)I
    .locals 17
    .parameter "ctx"
    .parameter "simInfoId"
    .parameter "name"
    .parameter "nameSource"

    .prologue
    .line 835
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDefaultNameEx]+ simInfoId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " source:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 836
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 837
    const-string v2, "[setDefaultNameEx]- simInfoId <= 0, return -1"

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 838
    const/4 v13, -0x1

    .line 864
    :goto_0
    return v13

    .line 840
    :cond_0
    const v2, 0x205008e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 841
    .local v8, defaultName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 842
    .local v12, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 843
    .local v15, uri:Landroid/net/Uri;
    if-eqz p3, :cond_1

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-wide/from16 v4, p1

    move-wide/from16 v6, p4

    .line 844
    invoke-static/range {v2 .. v7}, Lcom/mediatek/telephony/SimInfoManager;->setDisplayNameEx(Landroid/content/Context;Ljava/lang/String;JJ)I

    move-result v13

    .line 845
    .local v13, result:I
    if-lez v13, :cond_1

    .line 846
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDefaultNameEx]- name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set, source:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 850
    .end local v13           #result:I
    :cond_1
    invoke-static/range {p0 .. p3}, Lcom/mediatek/telephony/SimInfoManager;->getAppropriateIndex(Landroid/content/Context;JLjava/lang/String;)I

    move-result v10

    .line 851
    .local v10, index:I
    invoke-static {v10}, Lcom/mediatek/telephony/SimInfoManager;->getSuffixFromIndex(I)Ljava/lang/String;

    move-result-object v14

    .line 852
    .local v14, suffix:Ljava/lang/String;
    new-instance v16, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 855
    .local v16, value:Landroid/content/ContentValues;
    const-string v2, "ro.operator.optr"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 856
    .local v11, optr:Ljava/lang/String;
    if-eqz v11, :cond_2

    const-string v2, "OP01"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 857
    move-object v9, v8

    .line 861
    .local v9, displayName:Ljava/lang/String;
    :goto_1
    const-string v2, "display_name"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const-string v2, "name_source"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 863
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDefaultNameEx]- name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set, source:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 864
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    goto/16 :goto_0

    .line 859
    .end local v9           #displayName:Ljava/lang/String;
    :cond_2
    if-nez p3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9       #displayName:Ljava/lang/String;
    :goto_2
    goto :goto_1

    .end local v9           #displayName:Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2
.end method

.method public static setDispalyNumberFormat(Landroid/content/Context;IJ)I
    .locals 4
    .parameter "ctx"
    .parameter "format"
    .parameter "simInfoId"

    .prologue
    const/4 v3, 0x0

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDispalyNumberFormat]+ format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " simInfoId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 696
    if-ltz p1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    .line 697
    :cond_0
    const-string v1, "[setDispalyNumberFormat]- fail, return -1"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 698
    const/4 v1, -0x1

    .line 703
    :goto_0
    return v1

    .line 700
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 701
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "display_number_format"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDispalyNumberFormat]- format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setDisplayName(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 11
    .parameter "ctx"
    .parameter "displayName"
    .parameter "simInfoId"

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setDisplayName]+ name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " simInfoId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 579
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_2

    .line 580
    :cond_0
    const-string v0, "[setDisplayName]- fail, return -1"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 581
    const/4 v0, -0x1

    .line 604
    :cond_1
    :goto_0
    return v0

    .line 584
    :cond_2
    const-string v0, "ro.operator.optr"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 585
    .local v7, optr:Ljava/lang/String;
    const-string v0, "OP01"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 586
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    const-string v3, "display_name=?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 589
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 590
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 591
    const-string v0, "[setDisplayName]- name exist, return -2"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    const/4 v0, -0x2

    .line 596
    if-eqz v6, :cond_1

    .line 597
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 596
    :cond_3
    if-eqz v6, :cond_4

    .line 597
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 601
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_4
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 602
    .local v8, value:Landroid/content/ContentValues;
    const-string v0, "display_name"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setDisplayName]- displayName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v8, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 596
    .end local v8           #value:Landroid/content/ContentValues;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 597
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static setDisplayNameEx(Landroid/content/Context;Ljava/lang/String;JJ)I
    .locals 9
    .parameter "ctx"
    .parameter "displayName"
    .parameter "simInfoId"
    .parameter "source"

    .prologue
    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setDisplayNameEx]+  name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " simInfoId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 618
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_2

    .line 619
    :cond_0
    const-string v0, "[setDisplayNameEx]- fail, return -1"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 620
    const/4 v0, -0x1

    .line 644
    :cond_1
    :goto_0
    return v0

    .line 623
    :cond_2
    const-string v0, "ro.operator.optr"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 624
    .local v7, optr:Ljava/lang/String;
    const-string v0, "OP01"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 625
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "display_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 628
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 629
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 630
    const-string v0, "[setDisplayNameEx]- name exist, return -2"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    const/4 v0, -0x2

    .line 635
    if-eqz v6, :cond_1

    .line 636
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 635
    :cond_3
    if-eqz v6, :cond_4

    .line 636
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 640
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_4
    new-instance v8, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 641
    .local v8, value:Landroid/content/ContentValues;
    const-string v0, "display_name"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v0, "name_source"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setDisplayNameEx]- displayName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " set, source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 635
    .end local v8           #value:Landroid/content/ContentValues;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 636
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static setNumber(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 4
    .parameter "ctx"
    .parameter "number"
    .parameter "simInfoId"

    .prologue
    const/4 v3, 0x0

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setNumber]+ number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " simInfoId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 656
    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    .line 657
    :cond_0
    const-string v1, "[setNumber]- fail, return -1"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 658
    const/4 v1, -0x1

    .line 663
    :goto_0
    return v1

    .line 660
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 661
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setNumber]- number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setOperatorById(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 4
    .parameter "ctx"
    .parameter "operator"
    .parameter "simInfoId"

    .prologue
    const/4 v3, 0x0

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setOperatorById]+ operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " simInfoId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 559
    if-nez p1, :cond_0

    .line 560
    const-string v1, "[setOperatorById]- null operator, return -1"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 561
    const/4 v1, -0x1

    .line 566
    :goto_0
    return v1

    .line 563
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 564
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "operator"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setOperatorById]- operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setWapPush(Landroid/content/Context;IJ)I
    .locals 1
    .parameter "ctx"
    .parameter "enable"
    .parameter "simInfoId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 733
    const-string v0, "[setWapPush] Sould not use WapPush, return -1"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 734
    const/4 v0, -0x1

    return v0
.end method
