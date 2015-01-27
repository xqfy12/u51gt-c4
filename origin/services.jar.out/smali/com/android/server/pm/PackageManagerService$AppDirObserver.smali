.class final Lcom/android/server/pm/PackageManagerService$AppDirObserver;
.super Landroid/os/FileObserver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppDirObserver"
.end annotation


# instance fields
.field private final mIsRom:Z

.field private final mIsVendor:Z

.field private final mRootDir:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZZ)V
    .locals 0
    .parameter
    .parameter "path"
    .parameter "mask"
    .parameter "isrom"
    .parameter "isvendor"

    .prologue
    .line 5975
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 5976
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 5977
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    .line 5978
    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsRom:Z

    .line 5979
    iput-boolean p5, p0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsVendor:Z

    .line 5980
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 30
    .parameter "event"
    .parameter "path"

    .prologue
    .line 5983
    const/16 v28, 0x0

    .line 5984
    .local v28, removedPackage:Ljava/lang/String;
    const/16 v27, -0x1

    .line 5985
    .local v27, removedAppId:I
    const/4 v10, 0x0

    .line 5986
    .local v10, removedUsers:[I
    const/4 v12, 0x0

    .line 5987
    .local v12, addedPackage:Ljava/lang/String;
    const/16 v17, -0x1

    .line 5988
    .local v17, addedAppId:I
    const/16 v16, 0x0

    .line 5991
    .local v16, addedUsers:[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v11

    .line 5992
    const/16 v19, 0x0

    .line 5993
    .local v19, fullPathStr:Ljava/lang/String;
    const/4 v4, 0x0

    .line 5994
    .local v4, fullPath:Ljava/io/File;
    if-eqz p2, :cond_0

    .line 5995
    :try_start_0
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5996
    .end local v4           #fullPath:Ljava/io/File;
    .local v18, fullPath:Ljava/io/File;
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result-object v19

    move-object/from16 v4, v18

    .line 5999
    .end local v18           #fullPath:Ljava/io/File;
    .restart local v4       #fullPath:Ljava/io/File;
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$1700()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6000
    const-string v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " changed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6002
    :cond_1
    #calls: Lcom/android/server/pm/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageManagerService;->access$1800(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 6003
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$1700()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6004
    const-string v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring change of non-package file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6005
    :cond_2
    monitor-exit v11

    .line 6125
    :cond_3
    :goto_0
    return-void

    .line 6010
    :cond_4
    #calls: Lcom/android/server/pm/PackageManagerService;->ignoreCodePath(Ljava/lang/String;)Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService;->access$1900(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6011
    monitor-exit v11

    goto :goto_0

    .line 6110
    :catchall_0
    move-exception v3

    :goto_1
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 6015
    :cond_5
    move/from16 v0, p1

    and-int/lit16 v3, v0, 0x88

    if-eqz v3, :cond_9

    .line 6016
    :try_start_3
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2000()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6017
    const-string v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<laixiangwu> HashMap :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mChivinAPkHashMap:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$2100(Lcom/android/server/pm/PackageManagerService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6018
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mChivinAPkHashMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$2100(Lcom/android/server/pm/PackageManagerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 6019
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2000()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 6020
    const-string v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> laixiangwu <== detect apk from adb push :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6022
    :cond_7
    new-instance v24, Landroid/content/pm/PackageParser;

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 6023
    .local v24, packageParser:Landroid/content/pm/PackageParser;
    new-instance v29, Ljava/io/File;

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6024
    .local v29, sourceFile:Ljava/io/File;
    new-instance v22, Landroid/util/DisplayMetrics;

    invoke-direct/range {v22 .. v22}, Landroid/util/DisplayMetrics;-><init>()V

    .line 6025
    .local v22, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual/range {v22 .. v22}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 6026
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v5, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v20

    .line 6029
    .local v20, mAppInfo:Landroid/content/pm/PackageParser$Package;
    const/16 v24, 0x0

    .line 6030
    if-eqz v20, :cond_9

    .line 6031
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mChivinAPkHashMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$2100(Lcom/android/server/pm/PackageManagerService;)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 6032
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mChivinAPkHashMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$2100(Lcom/android/server/pm/PackageManagerService;)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/Uri;

    .line 6033
    .local v21, mChivinUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v5}, Lcom/android/server/pm/PackageManagerService;->replaceToChivinApk(Ljava/lang/String;Ljava/lang/String;)V

    .line 6035
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2000()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 6036
    const-string v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<laixiangwu> install apk from adb push :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6038
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mChivinAPkHashMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$2100(Lcom/android/server/pm/PackageManagerService;)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6040
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mChivinAPkHashMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$2100(Lcom/android/server/pm/PackageManagerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 6041
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v5, "/system/chivin/install_status"

    invoke-virtual {v3, v5}, Lcom/android/server/pm/PackageManagerService;->removeChivinApk(Ljava/lang/String;)V

    .line 6050
    .end local v20           #mAppInfo:Landroid/content/pm/PackageParser$Package;
    .end local v21           #mChivinUri:Landroid/net/Uri;
    .end local v22           #metrics:Landroid/util/DisplayMetrics;
    .end local v24           #packageParser:Landroid/content/pm/PackageParser;
    .end local v29           #sourceFile:Ljava/io/File;
    :cond_9
    const/16 v23, 0x0

    .line 6051
    .local v23, p:Landroid/content/pm/PackageParser$Package;
    const/16 v26, 0x0

    .line 6053
    .local v26, ps:Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6054
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    move-object/from16 v23, v0

    .line 6055
    if-eqz v23, :cond_a

    .line 6056
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, v23

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v26, v0

    .line 6057
    if-eqz v26, :cond_f

    .line 6058
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v3

    const/4 v6, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v6}, Lcom/android/server/pm/PackageSettingBase;->queryInstalledUsers([IZ)[I

    move-result-object v10

    .line 6063
    :cond_a
    :goto_2
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v16

    .line 6064
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6065
    move/from16 v0, p1

    and-int/lit16 v3, v0, 0x248

    if-eqz v3, :cond_b

    .line 6066
    if-eqz v26, :cond_b

    .line 6067
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v5, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v3, v0, v5}, Lcom/android/server/pm/PackageManagerService;->removePackageLI(Lcom/android/server/pm/PackageSetting;Z)V

    .line 6068
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 6069
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move/from16 v27, v0

    .line 6073
    :cond_b
    move/from16 v0, p1

    and-int/lit16 v3, v0, 0x88

    if-eqz v3, :cond_d

    .line 6074
    if-nez v23, :cond_d

    .line 6075
    const/16 v25, 0x6

    .line 6077
    .local v25, parseFlag:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsRom:Z

    if-eqz v3, :cond_10

    .line 6078
    or-int/lit8 v25, v25, 0x41

    .line 6084
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    or-int/lit8 v5, v25, 0x2

    or-int/lit8 v5, v5, 0x4

    const/16 v6, 0x61

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #calls: Lcom/android/server/pm/PackageManagerService;->scanPackageLI(Ljava/io/File;IIJLandroid/os/UserHandle;)Landroid/content/pm/PackageParser$Package;
    invoke-static/range {v3 .. v9}, Lcom/android/server/pm/PackageManagerService;->access$2200(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;IIJLandroid/os/UserHandle;)Landroid/content/pm/PackageParser$Package;

    move-result-object v23

    .line 6089
    if-eqz v23, :cond_d

    .line 6096
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 6097
    :try_start_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v23

    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_11

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, v23

    #calls: Lcom/android/server/pm/PackageManagerService;->updatePermissionsLPw(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)V
    invoke-static {v6, v8, v0, v3}, Lcom/android/server/pm/PackageManagerService;->access$2300(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)V

    .line 6099
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 6100
    :try_start_7
    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 6101
    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v17

    .line 6107
    .end local v25           #parseFlag:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 6108
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 6109
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 6110
    :try_start_9
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 6112
    if-eqz v28, :cond_e

    .line 6113
    new-instance v7, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v7, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 6114
    .local v7, extras:Landroid/os/Bundle;
    const-string v3, "android.intent.extra.UID"

    move/from16 v0, v27

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6115
    const-string v3, "android.intent.extra.DATA_REMOVED"

    const/4 v5, 0x0

    invoke-virtual {v7, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6116
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, v28

    invoke-static/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 6119
    .end local v7           #extras:Landroid/os/Bundle;
    :cond_e
    if-eqz v12, :cond_3

    .line 6120
    new-instance v7, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v7, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 6121
    .restart local v7       #extras:Landroid/os/Bundle;
    const-string v3, "android.intent.extra.UID"

    move/from16 v0, v17

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6122
    const-string v11, "android.intent.action.PACKAGE_ADDED"

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v13, v7

    invoke-static/range {v11 .. v16}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    goto/16 :goto_0

    .line 6060
    .end local v7           #extras:Landroid/os/Bundle;
    :cond_f
    :try_start_a
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v10

    goto/16 :goto_2

    .line 6064
    :catchall_1
    move-exception v3

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v3

    .line 6080
    .restart local v25       #parseFlag:I
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/pm/PackageManagerService$AppDirObserver;->mIsVendor:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v3, :cond_c

    .line 6081
    move/from16 v0, v25

    or-int/lit16 v0, v0, 0x180

    move/from16 v25, v0

    goto/16 :goto_3

    .line 6097
    :cond_11
    const/4 v3, 0x0

    goto :goto_4

    .line 6099
    :catchall_2
    move-exception v3

    :try_start_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 6109
    .end local v25           #parseFlag:I
    :catchall_3
    move-exception v3

    :try_start_e
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 6110
    .end local v4           #fullPath:Ljava/io/File;
    .end local v23           #p:Landroid/content/pm/PackageParser$Package;
    .end local v26           #ps:Lcom/android/server/pm/PackageSetting;
    .restart local v18       #fullPath:Ljava/io/File;
    :catchall_4
    move-exception v3

    move-object/from16 v4, v18

    .end local v18           #fullPath:Ljava/io/File;
    .restart local v4       #fullPath:Ljava/io/File;
    goto/16 :goto_1
.end method
