.class public Lcom/mediatek/telephony/DefaultVtSimSettings;
.super Ljava/lang/Object;
.source "DefaultVtSimSettings.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static get3GSimId()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 106
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DefaultVtSimSetting] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method public static setVtDefaultSim(Landroid/content/ContentResolver;[J[Z)V
    .locals 5
    .parameter "contentResolver"
    .parameter "simIdForSlot"
    .parameter "isSimInserted"

    .prologue
    const/4 v4, 0x0

    .line 63
    const-wide/16 v1, -0x5

    .line 64
    .local v1, nVTDefSIM:J
    invoke-static {}, Lcom/mediatek/telephony/DefaultVtSimSettings;->get3GSimId()I

    move-result v0

    .line 83
    .local v0, n3gSIMSlot:I
    aget-boolean v3, p2, v4

    if-eqz v3, :cond_0

    .line 84
    aget-wide v1, p1, v4

    .line 86
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVtDefaultSim -- nVTDefSIM : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/telephony/DefaultVtSimSettings;->logd(Ljava/lang/String;)V

    .line 87
    const-string v3, "video_call_sim_setting"

    invoke-static {p0, v3, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 90
    return-void
.end method
