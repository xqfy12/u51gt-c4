.class public Landroid/provider/Telephony$SIMInfo;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SIMInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Telephony$SIMInfo$ErrorCode;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"


# instance fields
.field public mColor:I

.field public mDataRoaming:I

.field public mDispalyNumberFormat:I

.field public mDisplayName:Ljava/lang/String;

.field public mICCId:Ljava/lang/String;

.field public mNameSource:I

.field public mNumber:Ljava/lang/String;

.field public mOperator:Ljava/lang/String;

.field public mSimBackgroundDarkRes:I

.field public mSimBackgroundLightRes:I

.field public mSimBackgroundRes:I

.field public mSimId:J

.field public mSlot:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2630
    const-string v0, ""

    iput-object v0, p0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 2632
    const-string v0, ""

    iput-object v0, p0, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    .line 2633
    const/4 v0, 0x1

    iput v0, p0, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    .line 2635
    iput v1, p0, Landroid/provider/Telephony$SIMInfo;->mDataRoaming:I

    .line 2636
    const/4 v0, -0x1

    iput v0, p0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .line 2637
    sget-object v0, Landroid/provider/Telephony;->SIMBackgroundRes:[I

    aget v0, v0, v1

    iput v0, p0, Landroid/provider/Telephony$SIMInfo;->mSimBackgroundRes:I

    .line 2638
    const-string v0, ""

    iput-object v0, p0, Landroid/provider/Telephony$SIMInfo;->mOperator:Ljava/lang/String;

    .line 2641
    sget-object v0, Landroid/provider/Telephony;->SIMBackgroundDarkRes:[I

    aget v0, v0, v1

    iput v0, p0, Landroid/provider/Telephony$SIMInfo;->mSimBackgroundDarkRes:I

    .line 2642
    sget-object v0, Landroid/provider/Telephony;->SIMBackgroundLightRes:[I

    aget v0, v0, v1

    iput v0, p0, Landroid/provider/Telephony$SIMInfo;->mSimBackgroundLightRes:I

    .line 2646
    return-void
.end method

.method public static getAllSIMCount(Landroid/content/Context;)I
    .locals 8
    .parameter "ctx"

    .prologue
    .line 2875
    const-string v4, "[getAllSIMCount]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2877
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2878
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "getAllSimCountAdp"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2879
    .local v3, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 2880
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2881
    .local v1, count:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2887
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #count:Ljava/lang/Integer;
    .end local v3           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .line 2883
    :catch_0
    move-exception v2

    .line 2884
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for getAllSimCountAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2885
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2887
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static getAllSIMList(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2686
    const-string v5, "[getAllSIMList]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2688
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2689
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "getAllSimInfoListAdp"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2690
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 2691
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2698
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 2694
    :catch_0
    move-exception v1

    .line 2695
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for getAllSimInfoListAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2696
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    move-object v3, v4

    .line 2698
    goto :goto_0
.end method

.method private static getAppropriateIndex(Landroid/content/Context;JLjava/lang/String;)I
    .locals 19
    .parameter "ctx"
    .parameter "simId"
    .parameter "name"

    .prologue
    .line 3142
    const-string v2, "[getAppropriateIndex]"

    invoke-static {v2}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3143
    const v2, 0x205008e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3144
    .local v10, default_name:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v2, "display_name LIKE "

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3145
    .local v15, sb:Ljava/lang/StringBuilder;
    if-nez p3, :cond_1

    .line 3146
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

    .line 3150
    :goto_0
    const-string v2, " AND ("

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3151
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

    .line 3152
    const-string v2, ")"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3154
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

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

    .line 3156
    .local v9, cursor:Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3157
    .local v8, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v13, 0x1

    .line 3158
    .local v13, index:I
    if-eqz v9, :cond_3

    .line 3159
    :cond_0
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3160
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3162
    .local v11, display_name:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 3163
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    .line 3164
    .local v14, length:I
    const/4 v2, 0x2

    if-lt v14, v2, :cond_0

    .line 3165
    add-int/lit8 v2, v14, -0x2

    invoke-virtual {v11, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 3166
    .local v16, sub:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3167
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 3168
    .local v17, value:J
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3148
    .end local v8           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v11           #display_name:Ljava/lang/String;
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

    .line 3173
    .restart local v8       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v13       #index:I
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3175
    :cond_3
    const/4 v12, 0x1

    .local v12, i:I
    :goto_2
    const/16 v2, 0x63

    if-gt v12, v2, :cond_5

    .line 3176
    int-to-long v2, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3175
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 3179
    :cond_4
    move v13, v12

    .line 3183
    :cond_5
    return v13
.end method

.method public static getIdBySlot(Landroid/content/Context;I)J
    .locals 8
    .parameter "ctx"
    .parameter "slot"

    .prologue
    .line 2814
    const-string v4, "[getIdBySlot]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2816
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2817
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "getIdBySlotAdp"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2818
    .local v3, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 2819
    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 2820
    .local v2, id:Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 2826
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #id:Ljava/lang/Long;
    .end local v3           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-wide v4

    .line 2822
    :catch_0
    move-exception v1

    .line 2823
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for getIdBySlotAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2824
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2826
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public static getInsertedSIMCount(Landroid/content/Context;)I
    .locals 8
    .parameter "ctx"

    .prologue
    .line 2855
    const-string v4, "[getInsertedSIMCount]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2857
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2858
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "getInsertedSimCountAdp"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2859
    .local v3, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 2860
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2861
    .local v1, count:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2867
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #count:Ljava/lang/Integer;
    .end local v3           #method:Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .line 2863
    :catch_0
    move-exception v2

    .line 2864
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for getInsertedSimCountAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2865
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2867
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2659
    const-string v5, "[getInsertedSIMList]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2661
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2662
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "getInsertedSimInfoListAdp"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2663
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 2664
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2671
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 2667
    :catch_0
    move-exception v1

    .line 2668
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for getInsertedSimInfoListAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2669
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    move-object v3, v4

    .line 2671
    goto :goto_0
.end method

.method public static getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ctx"
    .parameter "iccId"

    .prologue
    const/4 v4, 0x0

    .line 2891
    const-string v5, "[getOperatorByIccId]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2893
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2894
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "getOperatorByIccIdAdp"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2895
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 2896
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2903
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 2899
    :catch_0
    move-exception v1

    .line 2900
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for getOperatorByIccIdAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2901
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    move-object v3, v4

    .line 2903
    goto :goto_0
.end method

.method public static getOperatorBySlot(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9
    .parameter "ctx"
    .parameter "slotId"

    .prologue
    const/4 v4, 0x0

    .line 2907
    const-string v5, "[getOperatorBySlot]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2909
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2910
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "getOperatorBySlotAdp"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2911
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 2912
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2919
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 2915
    :catch_0
    move-exception v1

    .line 2916
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for getOperatorBySlotAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2917
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    move-object v3, v4

    .line 2919
    goto :goto_0
.end method

.method public static getSIMInfoByICCId(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$SIMInfo;
    .locals 9
    .parameter "ctx"
    .parameter "iccid"

    .prologue
    const/4 v4, 0x0

    .line 2772
    const-string v5, "[getSIMInfoByICCId]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2774
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2775
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "getSimInfoByIccIdAdp"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2776
    .local v3, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 2777
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2784
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 2780
    :catch_0
    move-exception v1

    .line 2781
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for getSimInfoByIccIdAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2782
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    move-object v2, v4

    .line 2784
    goto :goto_0
.end method

.method public static getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;
    .locals 9
    .parameter "ctx"
    .parameter "SIMId"

    .prologue
    const/4 v4, 0x0

    .line 2708
    const-string v5, "[getSIMInfoById]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2710
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2711
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "getSimInfoByIdAdp"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2712
    .local v3, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 2713
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2720
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 2716
    :catch_0
    move-exception v1

    .line 2717
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for getSimInfoByIdAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2718
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    move-object v2, v4

    .line 2720
    goto :goto_0
.end method

.method public static getSIMInfoByName(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$SIMInfo;
    .locals 9
    .parameter "ctx"
    .parameter "SIMName"

    .prologue
    const/4 v4, 0x0

    .line 2730
    const-string v5, "[getSIMInfoByName]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2732
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2733
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "getSimInfoByNameAdp"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2734
    .local v3, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 2735
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2742
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 2738
    :catch_0
    move-exception v1

    .line 2739
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for getSimInfoByNameAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2740
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    move-object v2, v4

    .line 2742
    goto :goto_0
.end method

.method public static getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;
    .locals 9
    .parameter "ctx"
    .parameter "cardSlot"

    .prologue
    const/4 v4, 0x0

    .line 2751
    const-string v5, "[getSIMInfoBySlot]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2753
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2754
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "getSimInfoBySlotAdp"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2755
    .local v3, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 2756
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2763
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 2759
    :catch_0
    move-exception v1

    .line 2760
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for getSimInfoBySlotAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2761
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    move-object v2, v4

    .line 2763
    goto :goto_0
.end method

.method public static getSIMInfoInstance()Landroid/provider/Telephony$SIMInfo;
    .locals 2

    .prologue
    .line 2675
    const-string v1, "[getSIMInfoInstance]"

    invoke-static {v1}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2676
    new-instance v0, Landroid/provider/Telephony$SIMInfo;

    invoke-direct {v0}, Landroid/provider/Telephony$SIMInfo;-><init>()V

    .line 2677
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    return-object v0
.end method

.method public static getSlotById(Landroid/content/Context;J)I
    .locals 8
    .parameter "ctx"
    .parameter "SIMId"

    .prologue
    .line 2793
    const-string v4, "[getSlotById]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2795
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2796
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "getSlotByIdAdp"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2797
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 2798
    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2799
    .local v3, slot:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2805
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #slot:Ljava/lang/Integer;
    :goto_0
    return v4

    .line 2801
    :catch_0
    move-exception v1

    .line 2802
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for getSlotByIdAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2803
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2805
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static getSlotByName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .parameter "ctx"
    .parameter "SIMName"

    .prologue
    .line 2835
    const-string v4, "[getSlotByName]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2837
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2838
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "getSlotByNameAdp"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2839
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 2840
    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2841
    .local v3, slot:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2847
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #slot:Ljava/lang/Integer;
    :goto_0
    return v4

    .line 2843
    :catch_0
    move-exception v1

    .line 2844
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for getSlotByNameAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2845
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2847
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private static getSuffixFromIndex(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 3132
    const-string v0, "[getSuffixFromIndex]"

    invoke-static {v0}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3133
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 3134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3136
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 9
    .parameter "ctx"
    .parameter "ICCId"
    .parameter "slot"

    .prologue
    const/4 v4, 0x0

    .line 3084
    const-string v5, "[insertICCId]"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3086
    :try_start_0
    const-string v5, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3087
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "insertIccIdAdp"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3088
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3089
    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3096
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 3092
    :catch_0
    move-exception v1

    .line 3093
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "createInstance:got exception for insertIccIdAdp"

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3094
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    move-object v3, v4

    .line 3096
    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 3187
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMInfo]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    return-void
.end method

.method public static setColor(Landroid/content/Context;IJ)I
    .locals 8
    .parameter "ctx"
    .parameter "color"
    .parameter "SIMId"

    .prologue
    .line 3015
    const-string v4, "[setColor]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3017
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3018
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string/jumbo v4, "setColorAdp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3019
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3020
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3021
    .local v3, result:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3027
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #result:Ljava/lang/Integer;
    :goto_0
    return v4

    .line 3023
    :catch_0
    move-exception v1

    .line 3024
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setColorAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3025
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3027
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setDataRoaming(Landroid/content/Context;IJ)I
    .locals 8
    .parameter "ctx"
    .parameter "roaming"
    .parameter "SIMId"

    .prologue
    .line 3061
    const-string v4, "[setDataRoaming]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3063
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3064
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string/jumbo v4, "setDataRoamingAdp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3065
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3066
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3067
    .local v3, result:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3073
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #result:Ljava/lang/Integer;
    :goto_0
    return v4

    .line 3069
    :catch_0
    move-exception v1

    .line 3070
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setDataRoamingAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3071
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3073
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setDefaultName(Landroid/content/Context;JLjava/lang/String;)I
    .locals 8
    .parameter "ctx"
    .parameter "simId"
    .parameter "name"

    .prologue
    .line 3100
    const-string v4, "[setDefaultName]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3102
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3103
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string/jumbo v4, "setDefaultNameAdp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3104
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3105
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3106
    .local v3, result:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3112
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #result:Ljava/lang/Integer;
    :goto_0
    return v4

    .line 3108
    :catch_0
    move-exception v1

    .line 3109
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setDefaultNameAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3110
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3112
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setDefaultNameEx(Landroid/content/Context;JLjava/lang/String;J)I
    .locals 8
    .parameter "ctx"
    .parameter "simId"
    .parameter "name"
    .parameter "nameSource"

    .prologue
    .line 3116
    const-string v4, "[setDefaultNameEx]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3118
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3119
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string/jumbo v4, "setDefaultNameExAdp"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3120
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3121
    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3122
    .local v3, result:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3128
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #result:Ljava/lang/Integer;
    :goto_0
    return v4

    .line 3124
    :catch_0
    move-exception v1

    .line 3125
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setDefaultNameExAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3126
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3128
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setDispalyNumberFormat(Landroid/content/Context;IJ)I
    .locals 8
    .parameter "ctx"
    .parameter "format"
    .parameter "SIMId"

    .prologue
    .line 3038
    const-string v4, "[setDispalyNumberFormat]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3040
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3041
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string/jumbo v4, "setDispalyNumberFormatAdp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3042
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 3043
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3044
    .local v3, result:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3050
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #result:Ljava/lang/Integer;
    :goto_0
    return v4

    .line 3046
    :catch_0
    move-exception v1

    .line 3047
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setDispalyNumberFormatAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3048
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3050
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setDisplayName(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 8
    .parameter "ctx"
    .parameter "displayName"
    .parameter "SIMId"

    .prologue
    .line 2946
    const-string v4, "[setDisplayName]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2948
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2949
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string/jumbo v4, "setDisplayNameAdp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2950
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 2951
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2952
    .local v3, result:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2958
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #result:Ljava/lang/Integer;
    :goto_0
    return v4

    .line 2954
    :catch_0
    move-exception v1

    .line 2955
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setDisplayNameAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2956
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2958
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setDisplayNameEx(Landroid/content/Context;Ljava/lang/String;JJ)I
    .locals 8
    .parameter "ctx"
    .parameter "displayName"
    .parameter "SIMId"
    .parameter "Source"

    .prologue
    .line 2970
    const-string v4, "[setDisplayNameEx]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2972
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2973
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string/jumbo v4, "setDisplayNameExAdp"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2974
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 2975
    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2976
    .local v3, result:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2982
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #result:Ljava/lang/Integer;
    :goto_0
    return v4

    .line 2978
    :catch_0
    move-exception v1

    .line 2979
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setDisplayNameExAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2980
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2982
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setNumber(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 8
    .parameter "ctx"
    .parameter "number"
    .parameter "SIMId"

    .prologue
    .line 2992
    const-string v4, "[setNumber]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2994
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2995
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string/jumbo v4, "setNumberAdp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2996
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 2997
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2998
    .local v3, result:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3004
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #result:Ljava/lang/Integer;
    :goto_0
    return v4

    .line 3000
    :catch_0
    move-exception v1

    .line 3001
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setNumberAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 3002
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3004
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setOperatorById(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 8
    .parameter "ctx"
    .parameter "operator"
    .parameter "simId"

    .prologue
    .line 2923
    const-string v4, "[setOperatorById]"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2925
    :try_start_0
    const-string v4, "com.mediatek.telephony.SimInfoManagerAdp"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2926
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string/jumbo v4, "setOperatorByIdAdp"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2927
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 2928
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2929
    .local v3, result:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2935
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #result:Ljava/lang/Integer;
    :goto_0
    return v4

    .line 2931
    :catch_0
    move-exception v1

    .line 2932
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "createInstance:got exception for setOperatorByIdAdp"

    invoke-static {v4}, Landroid/provider/Telephony$SIMInfo;->logd(Ljava/lang/String;)V

    .line 2933
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2935
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method
