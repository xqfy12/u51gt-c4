.class Lcom/android/server/MountService$5;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .parameter

    .prologue
    .line 935
    iput-object p1, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 940
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 941
    .local v1, action:Ljava/lang/String;
    const-string v13, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 942
    const-string v13, "MountService"

    const-string v14, "MountService BOOT_COMPLETED!"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    const/4 v14, 0x1

    #setter for: Lcom/android/server/MountService;->mBootCompleted:Z
    invoke-static {v13, v14}, Lcom/android/server/MountService;->access$3002(Lcom/android/server/MountService;Z)Z

    .line 1004
    :goto_0
    return-void

    .line 946
    :cond_0
    const-string v13, "MountService"

    const-string v14, "MountService BOOT_IPO!"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :try_start_0
    const-string v13, "MountService"

    const-string v14, "Notify VOLD IPO startup"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v13}, Lcom/android/server/MountService;->access$3100(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v13

    const-string v14, "volume ipo startup"

    invoke-virtual {v13, v14}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    const/4 v14, 0x1

    #setter for: Lcom/android/server/MountService;->mFirstTime_SwapStateForSDSwapMountPoint:Z
    invoke-static {v13, v14}, Lcom/android/server/MountService;->access$3202(Lcom/android/server/MountService;Z)Z

    .line 955
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V
    invoke-static {v13}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)V

    .line 958
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v13}, Lcom/android/server/MountService;->access$3100(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v13

    const-string v14, "volume"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "list"

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v13

    const/16 v14, 0x6e

    invoke-static {v13, v14}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v10

    .line 961
    .local v10, vols:[Ljava/lang/String;
    move-object v2, v10

    .local v2, arr$:[Ljava/lang/String;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_2

    aget-object v11, v2, v4

    .line 962
    .local v11, volstr:Ljava/lang/String;
    const-string v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 964
    .local v9, tok:[Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v6, v9, v13

    .line 965
    .local v6, path:Ljava/lang/String;
    const-string v8, "removed"

    .line 968
    .local v8, state:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static {v13}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 969
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/StorageVolume;

    .line 970
    .local v12, volume:Landroid/os/storage/StorageVolume;
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 971
    if-nez v12, :cond_3

    .line 972
    :try_start_3
    const-string v13, "MountService"

    const-string v14, "Error processing initial volume state:  volume == null"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 961
    :cond_1
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 951
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #path:Ljava/lang/String;
    .end local v8           #state:Ljava/lang/String;
    .end local v9           #tok:[Ljava/lang/String;
    .end local v10           #vols:[Ljava/lang/String;
    .end local v11           #volstr:Ljava/lang/String;
    .end local v12           #volume:Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v3

    .line 952
    .local v3, e:Ljava/lang/Exception;
    const-string v13, "MountService"

    const-string v14, "Error reinit SD card while IPO"

    invoke-static {v13, v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 970
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #path:Ljava/lang/String;
    .restart local v8       #state:Ljava/lang/String;
    .restart local v9       #tok:[Ljava/lang/String;
    .restart local v10       #vols:[Ljava/lang/String;
    .restart local v11       #volstr:Ljava/lang/String;
    :catchall_0
    move-exception v13

    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 996
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #path:Ljava/lang/String;
    .end local v8           #state:Ljava/lang/String;
    .end local v9           #tok:[Ljava/lang/String;
    .end local v10           #vols:[Ljava/lang/String;
    .end local v11           #volstr:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 997
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v13, "MountService"

    const-string v14, "Error processing initial volume state"

    invoke-static {v13, v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1003
    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->handleSystemReady()V
    invoke-static {v13}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;)V

    goto/16 :goto_0

    .line 976
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #path:Ljava/lang/String;
    .restart local v8       #state:Ljava/lang/String;
    .restart local v9       #tok:[Ljava/lang/String;
    .restart local v10       #vols:[Ljava/lang/String;
    .restart local v11       #volstr:Ljava/lang/String;
    .restart local v12       #volume:Landroid/os/storage/StorageVolume;
    :cond_3
    const/4 v13, 0x2

    :try_start_6
    aget-object v13, v9, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 977
    .local v7, st:I
    if-nez v7, :cond_4

    .line 978
    const-string v8, "removed"

    .line 991
    :goto_4
    if-eqz v8, :cond_1

    .line 992
    const-string v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Updating valid state "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v13, v12, v8}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    goto :goto_3

    .line 979
    :cond_4
    const/4 v13, 0x1

    if-ne v7, v13, :cond_5

    .line 980
    const-string v8, "unmounted"

    goto :goto_4

    .line 981
    :cond_5
    const/4 v13, 0x4

    if-ne v7, v13, :cond_6

    .line 982
    const-string v8, "mounted"

    .line 983
    const-string v13, "MountService"

    const-string v14, "Media already mounted on daemon connection"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 984
    :cond_6
    const/4 v13, 0x7

    if-ne v7, v13, :cond_7

    .line 985
    const-string v8, "shared"

    .line 986
    const-string v13, "MountService"

    const-string v14, "Media shared on daemon connection"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 988
    :cond_7
    new-instance v13, Ljava/lang/Exception;

    const-string v14, "Unexpected state %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
.end method
