.class Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;
.super Lcom/android/server/pm/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsecInstallArgs"
.end annotation


# static fields
.field static final PUBLIC_RES_FILE_NAME:Ljava/lang/String; = "res.zip"

.field static final RES_FILE_NAME:Ljava/lang/String; = "pkg.apk"


# instance fields
.field cid:Ljava/lang/String;

.field libraryPath:Ljava/lang/String;

.field packagePath:Ljava/lang/String;

.field resourcePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/net/Uri;Ljava/lang/String;ZZ)V
    .locals 7
    .parameter
    .parameter "packageURI"
    .parameter "cid"
    .parameter "isExternal"
    .parameter "isForwardLocked"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 7841
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 7842
    if-eqz p4, :cond_1

    const/16 v1, 0x8

    :goto_0
    if-eqz p5, :cond_0

    const/4 v0, 0x1

    :cond_0
    or-int v3, v1, v0

    move-object v0, p0

    move-object v1, p2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;)V

    .line 7845
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    .line 7846
    return-void

    :cond_1
    move v1, v0

    .line 7842
    goto :goto_0
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .locals 7
    .parameter
    .parameter "params"

    .prologue
    .line 7814
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 7815
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getPackageUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver;

    iget v3, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->flags:I

    iget-object v4, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getManifestDigest()Landroid/content/pm/ManifestDigest;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;)V

    .line 7818
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 10
    .parameter
    .parameter "fullCodePath"
    .parameter "fullResourcePath"
    .parameter "nativeLibraryPath"
    .parameter "isExternal"
    .parameter "isForwardLocked"

    .prologue
    .line 7821
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 7822
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p5, :cond_0

    const/16 v0, 0x8

    move v3, v0

    :goto_0
    if-eqz p6, :cond_1

    const/4 v0, 0x1

    :goto_1
    or-int/2addr v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;)V

    .line 7826
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 7827
    .local v7, eidx:I
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 7828
    .local v9, subStr1:Ljava/lang/String;
    const-string v0, "/"

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 7829
    .local v8, sidx:I
    add-int/lit8 v0, v8, 0x1

    invoke-virtual {v9, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    .line 7830
    invoke-direct {p0, v9}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setCachePath(Ljava/lang/String;)V

    .line 7831
    return-void

    .line 7822
    .end local v7           #eidx:I
    .end local v8           #sidx:I
    .end local v9           #subStr1:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    move v3, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Z)V
    .locals 7
    .parameter
    .parameter "cid"
    .parameter "isForwardLocked"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7833
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 7834
    #calls: Lcom/android/server/pm/PackageManagerService;->isAsecExternal(Ljava/lang/String;)Z
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerService;->access$4100(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    :goto_0
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    or-int v3, v2, v0

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;)V

    .line 7837
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    .line 7838
    invoke-static {p2}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setCachePath(Ljava/lang/String;)V

    .line 7839
    return-void

    :cond_1
    move v2, v0

    .line 7834
    goto :goto_0
.end method

.method static synthetic access$4900(Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 7805
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isExternal()Z

    move-result v0

    return v0
.end method

.method private cleanUp()V
    .locals 2

    .prologue
    .line 8016
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_SD_INSTALL:Z

    if-eqz v0, :cond_0

    const-string v0, "PackageManager"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8019
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 8020
    return-void
.end method

.method private final isExternal()Z
    .locals 1

    .prologue
    .line 7863
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCachePath(Ljava/lang/String;)V
    .locals 3
    .parameter "newCachePath"

    .prologue
    .line 7975
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7976
    .local v0, cachePath:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "lib"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->libraryPath:Ljava/lang/String;

    .line 7977
    new-instance v1, Ljava/io/File;

    const-string v2, "pkg.apk"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    .line 7979
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->isFwdLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7980
    new-instance v1, Ljava/io/File;

    const-string v2, "res.zip"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->resourcePath:Ljava/lang/String;

    .line 7984
    :goto_0
    return-void

    .line 7982
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->resourcePath:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method checkFreeStorage(Lcom/android/internal/app/IMediaContainerService;)Z
    .locals 5
    .parameter "imcs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 7854
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.android.defcontainer"

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 7856
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->isFwdLocked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/android/internal/app/IMediaContainerService;->checkExternalFreeStorage(Landroid/net/Uri;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 7858
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 7856
    return v0

    .line 7858
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    throw v0
.end method

.method cleanUpResourcesLI()V
    .locals 5

    .prologue
    .line 8023
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v1

    .line 8025
    .local v1, sourceFile:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/Installer;->rmdex(Ljava/lang/String;)I

    move-result v0

    .line 8026
    .local v0, retCode:I
    if-gez v0, :cond_0

    .line 8027
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t remove dex file for package:  at location "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", retcode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8032
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cleanUp()V

    .line 8033
    return-void
.end method

.method copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .locals 10
    .parameter "imcs"
    .parameter "temp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 7867
    if-eqz p2, :cond_0

    .line 7868
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->createCopyFile()V

    .line 7879
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.android.defcontainer"

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 7881
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #calls: Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$4200(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pkg.apk"

    const-string v5, "res.zip"

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->isExternal()Z

    move-result v6

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->isFwdLocked()Z

    move-result v7

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/app/IMediaContainerService;->copyResourceToContainer(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 7884
    .local v8, newCachePath:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 7887
    if-eqz v8, :cond_1

    .line 7888
    invoke-direct {p0, v8}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setCachePath(Ljava/lang/String;)V

    move v0, v9

    .line 7891
    :goto_1
    return v0

    .line 7874
    .end local v8           #newCachePath:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    goto :goto_0

    .line 7884
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v9}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    throw v0

    .line 7891
    .restart local v8       #newCachePath:Ljava/lang/String;
    :cond_1
    const/16 v0, -0x12

    goto :goto_1
.end method

.method createCopyFile()V
    .locals 1

    .prologue
    .line 7849
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getTempContainerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    .line 7850
    return-void
.end method

.method doPostCopy(I)I
    .locals 3
    .parameter "uid"

    .prologue
    .line 8073
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->isFwdLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8074
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v1

    const-string v2, "pkg.apk"

    invoke-static {v0, v1, v2}, Lcom/android/internal/content/PackageHelper;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8077
    :cond_0
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to finalize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8078
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 8079
    const/16 v0, -0x12

    .line 8083
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method doPostDeleteLI(Z)Z
    .locals 3
    .parameter "delete"

    .prologue
    .line 8047
    const/4 v1, 0x0

    .line 8048
    .local v1, ret:Z
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v0

    .line 8049
    .local v0, mounted:Z
    if-eqz v0, :cond_0

    .line 8051
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    move-result v1

    .line 8053
    :cond_0
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 8054
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cleanUpResourcesLI()V

    .line 8056
    :cond_1
    return v1
.end method

.method doPostInstall(II)I
    .locals 6
    .parameter "status"
    .parameter "uid"

    .prologue
    .line 7987
    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    .line 7988
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cleanUp()V

    .line 8012
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 7992
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->isFwdLocked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7993
    invoke-static {p2}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v0

    .line 7994
    .local v0, groupOwner:I
    const-string v2, "pkg.apk"

    .line 8000
    .local v2, protectedFile:Ljava/lang/String;
    :goto_1
    const/16 v3, 0x2710

    if-lt p2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/android/internal/content/PackageHelper;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 8002
    :cond_2
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to finalize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8003
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 8004
    const/16 p1, -0x12

    goto :goto_0

    .line 7996
    .end local v0           #groupOwner:I
    .end local v2           #protectedFile:Ljava/lang/String;
    :cond_3
    const/4 v0, -0x1

    .line 7997
    .restart local v0       #groupOwner:I
    const/4 v2, 0x0

    .restart local v2       #protectedFile:Ljava/lang/String;
    goto :goto_1

    .line 8007
    :cond_4
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v1

    .line 8008
    .local v1, mounted:Z
    if-nez v1, :cond_0

    .line 8009
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #calls: Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$4200(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    goto :goto_0
.end method

.method doPreCopy()I
    .locals 4

    .prologue
    .line 8061
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->isFwdLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8062
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v2, "com.android.defcontainer"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "pkg.apk"

    invoke-static {v0, v1, v2}, Lcom/android/internal/content/PackageHelper;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8064
    const/16 v0, -0x12

    .line 8068
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method doPreInstall(I)I
    .locals 5
    .parameter "status"

    .prologue
    .line 7911
    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    .line 7913
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 7926
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 7915
    .restart local p1
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v0

    .line 7916
    .local v0, mounted:Z
    if-nez v0, :cond_0

    .line 7917
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #calls: Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$4200(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-static {v2, v3, v4}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 7919
    .local v1, newCachePath:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 7920
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setCachePath(Ljava/lang/String;)V

    goto :goto_0

    .line 7922
    :cond_2
    const/16 p1, -0x12

    goto :goto_0
.end method

.method doRename(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "status"
    .parameter "pkgName"
    .parameter "oldCodePath"

    .prologue
    const/4 v2, 0x0

    .line 7931
    const-string v3, "/pkg.apk"

    #calls: Lcom/android/server/pm/PackageManagerService;->getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p3, p2, v3}, Lcom/android/server/pm/PackageManagerService;->access$3800(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7932
    .local v0, newCacheId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 7933
    .local v1, newCachePath:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7935
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7936
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to unmount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " before renaming"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7971
    :goto_0
    return v2

    .line 7940
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/android/internal/content/PackageHelper;->renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 7941
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to rename "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " which might be stale. Will try to clean up."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7944
    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7945
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Very strange. Cannot clean up stale container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7949
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/android/internal/content/PackageHelper;->renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 7950
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to rename "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " inspite of cleaning it up."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7955
    :cond_2
    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 7956
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mounting container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7957
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    #calls: Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$4200(Lcom/android/server/pm/PackageManagerService;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-static {v0, v3, v4}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 7962
    :goto_1
    if-nez v1, :cond_4

    .line 7963
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get cache path for  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7960
    :cond_3
    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 7966
    :cond_4
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Succesfully renamed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at new path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7969
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    .line 7970
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->setCachePath(Ljava/lang/String;)V

    .line 7971
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method getCodePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7897
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->packagePath:Ljava/lang/String;

    return-object v0
.end method

.method getNativeLibraryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7907
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->libraryPath:Ljava/lang/String;

    return-object v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8043
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->getAsecPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7902
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->resourcePath:Ljava/lang/String;

    return-object v0
.end method

.method matchContainer(Ljava/lang/String;)Z
    .locals 1
    .parameter "app"

    .prologue
    .line 8036
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8037
    const/4 v0, 0x1

    .line 8039
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
