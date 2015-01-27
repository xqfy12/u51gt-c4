.class abstract Landroid/view/HardwareRenderer$GlRenderer;
.super Landroid/view/HardwareRenderer;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "GlRenderer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;
    }
.end annotation


# static fields
.field static final FUNCTOR_PROCESS_DELAY:I = 0x4

.field static final SURFACE_STATE_ERROR:I = 0x0

.field static final SURFACE_STATE_SUCCESS:I = 0x1

.field static final SURFACE_STATE_UPDATED:I = 0x2

.field static sDirtyRegions:Z

.field static final sDirtyRegionsRequested:Z

.field static sEgl:Ljavax/microedition/khronos/egl/EGL10;

.field static sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field static final sEglContextStorage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/opengl/ManagedEGLContext;",
            ">;"
        }
    .end annotation
.end field

.field static sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field static final sEglLock:[Ljava/lang/Object;


# instance fields
.field mCanvas:Landroid/view/HardwareCanvas;

.field final mDebugDirtyRegions:Z

.field mDebugPaint:Landroid/graphics/Paint;

.field private mDestroyed:Z

.field mDirtyRegionsEnabled:Z

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field mEglThread:Ljava/lang/Thread;

.field mFrameCount:J

.field private final mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

.field mGl:Ljavax/microedition/khronos/opengles/GL;

.field final mGlVersion:I

.field mHeight:I

.field mProfileCurrentFrame:I

.field final mProfileData:[F

.field final mProfileEnabled:Z

.field final mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mRedrawClip:Landroid/graphics/Rect;

.field final mShowOverdraw:Z

.field private final mSurfaceSize:[I

.field final mTranslucent:Z

.field mUpdateDirtyRegions:Z

.field final mVsyncDisabled:Z

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 669
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    sput-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglLock:[Ljava/lang/Object;

    .line 672
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglContextStorage:Ljava/lang/ThreadLocal;

    .line 689
    const-string v1, "debug.hwui.render_dirty_regions"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, dirtyProperty:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    .line 692
    sget-boolean v1, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    sput-boolean v1, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegionsRequested:Z

    .line 693
    return-void
.end method

.method constructor <init>(IZ)V
    .locals 9
    .parameter "glVersion"
    .parameter "translucent"

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 718
    invoke-direct {p0}, Landroid/view/HardwareRenderer;-><init>()V

    .line 670
    iput v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    iput v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    .line 703
    const/4 v3, -0x3

    iput v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    .line 713
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    .line 715
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mSurfaceSize:[I

    .line 716
    new-instance v3, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    invoke-direct {v3, p0}, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;-><init>(Landroid/view/HardwareRenderer$GlRenderer;)V

    iput-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    .line 719
    iput p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGlVersion:I

    .line 720
    iput-boolean p2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mTranslucent:Z

    .line 724
    const-string v3, "debug.hwui.disable_vsync"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 725
    .local v2, property:Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mVsyncDisabled:Z

    .line 726
    iget-boolean v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mVsyncDisabled:Z

    if-eqz v3, :cond_0

    .line 727
    const-string v3, "HardwareRenderer"

    const-string v4, "Disabling v-sync"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_0
    const-string v3, "debug.hwui.profile"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 731
    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    .line 732
    iget-boolean v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v3, :cond_1

    .line 733
    const-string v3, "HardwareRenderer"

    const-string v4, "Profiling hardware renderer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_1
    iget-boolean v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v3, :cond_4

    .line 737
    const-string v3, "debug.hwui.profile.maxframes"

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 739
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 740
    .local v1, maxProfileFrames:I
    mul-int/lit8 v3, v1, 0x3

    new-array v3, v3, [F

    iput-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    .line 741
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 742
    iget-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    add-int/lit8 v7, v0, 0x2

    const/high16 v8, -0x4080

    aput v8, v6, v7

    aput v8, v4, v5

    aput v8, v3, v0

    .line 741
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 745
    :cond_2
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 751
    .end local v0           #i:I
    .end local v1           #maxProfileFrames:I
    :goto_1
    const-string v3, "debug.hwui.show_dirty_regions"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 752
    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDirtyRegions:Z

    .line 753
    iget-boolean v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDirtyRegions:Z

    if-eqz v3, :cond_3

    .line 754
    const-string v3, "HardwareRenderer"

    const-string v4, "Debugging dirty regions"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_3
    const-string v3, "debug.hwui.show_overdraw"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mShowOverdraw:Z

    .line 759
    return-void

    .line 747
    :cond_4
    iput-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    .line 748
    iput-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/view/HardwareRenderer$GlRenderer;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 659
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/HardwareRenderer$GlRenderer;Landroid/view/View$AttachInfo;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 659
    invoke-direct {p0, p1, p2}, Landroid/view/HardwareRenderer$GlRenderer;->handleFunctorStatus(Landroid/view/View$AttachInfo;I)V

    return-void
.end method

.method private checkEglErrorsForced()V
    .locals 4

    .prologue
    .line 807
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 808
    .local v0, error:I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 811
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EGL error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const/16 v1, 0x300e

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Landroid/view/HardwareRenderer$GlRenderer;->fallback(Z)V

    .line 814
    :cond_0
    return-void

    .line 812
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 19

    .prologue
    .line 920
    const/4 v2, 0x1

    new-array v11, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 921
    .local v11, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 v2, 0x1

    new-array v7, v2, [I

    .line 922
    .local v7, configsCount:[I
    sget-boolean v2, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/HardwareRenderer$GlRenderer;->getConfig(Z)[I

    move-result-object v4

    .line 925
    .local v4, configSpec:[I
    const-string v2, "debug.hwui.print_config"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 926
    .local v16, debug:Ljava/lang/String;
    const-string v2, "all"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 927
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 929
    const/4 v2, 0x0

    aget v2, v7, v2

    new-array v5, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 930
    .local v5, debugConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v6, 0x0

    aget v6, v7, v6

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 933
    move-object v14, v5

    .local v14, arr$:[Ljavax/microedition/khronos/egl/EGLConfig;
    array-length v0, v14

    move/from16 v18, v0

    .local v18, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    aget-object v15, v14, v17

    .line 934
    .local v15, config:Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v15}, Landroid/view/HardwareRenderer$GlRenderer;->printConfig(Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 933
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 938
    .end local v5           #debugConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v14           #arr$:[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v15           #config:Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v17           #i$:I
    .end local v18           #len$:I
    :cond_0
    sget-object v8, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v9, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v12, 0x1

    move-object v10, v4

    move-object v13, v7

    invoke-interface/range {v8 .. v13}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 939
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "eglChooseConfig failed "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v6

    invoke-static {v6}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 941
    :cond_1
    const/4 v2, 0x0

    aget v2, v7, v2

    if-lez v2, :cond_3

    .line 942
    const-string v2, "choice"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 943
    const/4 v2, 0x0

    aget-object v2, v11, v2

    invoke-static {v2}, Landroid/view/HardwareRenderer$GlRenderer;->printConfig(Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 945
    :cond_2
    const/4 v2, 0x0

    aget-object v2, v11, v2

    .line 948
    :goto_1
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private createSurface(Landroid/view/Surface;)Z
    .locals 6
    .parameter "surface"

    .prologue
    .line 1107
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, p1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1109
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v2, :cond_2

    .line 1110
    :cond_0
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1111
    .local v0, error:I
    const/16 v1, 0x300b

    if-ne v0, v1, :cond_1

    .line 1112
    const-string v1, "HardwareRenderer"

    const-string v2, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    const/4 v1, 0x0

    .line 1126
    .end local v0           #error:I
    :goto_0
    return v1

    .line 1115
    .restart local v0       #error:I
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createWindowSurface failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1119
    .end local v0           #error:I
    :cond_2
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1120
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglMakeCurrent failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1124
    :cond_3
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->enableDirtyRegions()V

    .line 1126
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private enableDirtyRegions()V
    .locals 2

    .prologue
    .line 1019
    sget-boolean v0, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    if-eqz v0, :cond_1

    .line 1020
    invoke-static {}, Landroid/view/HardwareRenderer$GlRenderer;->preserveBackBuffer()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDirtyRegionsEnabled:Z

    if-nez v0, :cond_0

    .line 1021
    const-string v0, "HardwareRenderer"

    const-string v1, "Backbuffer cannot be preserved"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_0
    :goto_0
    return-void

    .line 1023
    :cond_1
    sget-boolean v0, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegionsRequested:Z

    if-eqz v0, :cond_0

    .line 1030
    invoke-static {}, Landroid/view/HardwareRenderer$GlRenderer;->isBackBufferPreserved()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDirtyRegionsEnabled:Z

    goto :goto_0
.end method

.method private fallback(Z)V
    .locals 2
    .parameter "fallback"

    .prologue
    .line 817
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->destroy(Z)V

    .line 818
    if-eqz p1, :cond_0

    .line 820
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer;->setRequested(Z)V

    .line 821
    const-string v0, "HardwareRenderer"

    const-string v1, "Mountain View, we\'ve had a problem here. Switching back to software rendering."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_0
    return-void
.end method

.method private handleFunctorStatus(Landroid/view/View$AttachInfo;I)V
    .locals 4
    .parameter "attachInfo"
    .parameter "status"

    .prologue
    .line 1349
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1351
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 1358
    :cond_0
    :goto_0
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1360
    :cond_1
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1361
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    iput-object p1, v0, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;->attachInfo:Landroid/view/View$AttachInfo;

    .line 1362
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    const-wide/16 v2, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1364
    :cond_2
    return-void

    .line 1353
    :cond_3
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRootImpl;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    .line 1354
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method private static printConfig(Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 5
    .parameter "config"

    .prologue
    const/4 v4, 0x0

    .line 952
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 954
    .local v0, value:[I
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EGL configuration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3024

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 957
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  RED_SIZE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3023

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 960
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  GREEN_SIZE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3022

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 963
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  BLUE_SIZE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3021

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 966
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ALPHA_SIZE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3025

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 969
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  DEPTH_SIZE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3026

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 972
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  STENCIL_SIZE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3032

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 975
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  SAMPLE_BUFFERS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3031

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 978
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  SAMPLES = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3033

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 981
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  SURFACE_TYPE = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/16 v3, 0x3027

    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 984
    const-string v1, "HardwareRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  CONFIG_CAVEAT = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    return-void
.end method


# virtual methods
.method attachFunctor(Landroid/view/View$AttachInfo;I)Z
    .locals 4
    .parameter "attachInfo"
    .parameter "functor"

    .prologue
    .line 1375
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_0

    .line 1376
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    invoke-virtual {v0, p2}, Landroid/view/HardwareCanvas;->attachFunctor(I)V

    .line 1377
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    iput-object p1, v0, Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;->attachInfo:Landroid/view/View$AttachInfo;

    .line 1378
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1379
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFunctorsRunnable:Landroid/view/HardwareRenderer$GlRenderer$FunctorsRunnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1380
    const/4 v0, 0x1

    .line 1382
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canDraw()Z
    .locals 1

    .prologue
    .line 1159
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkCurrent()I
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1393
    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 1394
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hardware acceleration can only be used with a single UI thread.\nOriginal thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Current thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1399
    :cond_0
    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v4, 0x3059

    invoke-interface {v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1401
    :cond_1
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1402
    const-string v2, "HardwareRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglMakeCurrent failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    invoke-direct {p0, v0}, Landroid/view/HardwareRenderer$GlRenderer;->fallback(Z)V

    move v0, v1

    .line 1414
    :cond_2
    :goto_0
    return v0

    .line 1407
    :cond_3
    iget-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mUpdateDirtyRegions:Z

    if-eqz v0, :cond_4

    .line 1408
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->enableDirtyRegions()V

    .line 1409
    iput-boolean v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mUpdateDirtyRegions:Z

    .line 1411
    :cond_4
    const/4 v0, 0x2

    goto :goto_0
.end method

.method checkEglErrors()V
    .locals 1

    .prologue
    .line 801
    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkEglErrorsForced()V

    .line 804
    :cond_0
    return-void
.end method

.method abstract createCanvas()Landroid/view/HardwareCanvas;
.end method

.method createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 5
    .parameter "egl"
    .parameter "eglDisplay"
    .parameter "eglConfig"

    .prologue
    .line 1037
    const/4 v2, 0x3

    new-array v0, v2, [I

    const/4 v2, 0x0

    const/16 v3, 0x3098

    aput v3, v0, v2

    const/4 v2, 0x1

    iget v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGlVersion:I

    aput v3, v0, v2

    const/4 v2, 0x2

    const/16 v3, 0x3038

    aput v3, v0, v2

    .line 1039
    .local v0, attribs:[I
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGlVersion:I

    if-eqz v3, :cond_1

    .end local v0           #attribs:[I
    :goto_0
    invoke-interface {p1, p2, p3, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    .line 1041
    .local v1, context:Ljavax/microedition/khronos/egl/EGLContext;
    if-eqz v1, :cond_0

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v2, :cond_2

    .line 1043
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create an EGL context. eglCreateContext failed with error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1039
    .end local v1           #context:Ljavax/microedition/khronos/egl/EGLContext;
    .restart local v0       #attribs:[I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1047
    .end local v0           #attribs:[I
    .restart local v1       #context:Ljavax/microedition/khronos/egl/EGLContext;
    :cond_2
    return-object v1
.end method

.method createEglSurface(Landroid/view/Surface;)Ljavax/microedition/khronos/opengles/GL;
    .locals 2
    .parameter "surface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 989
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    .line 990
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "egl not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 992
    :cond_0
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v0, :cond_1

    .line 993
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDisplay not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 995
    :cond_1
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_2

    .line 996
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 998
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_3

    .line 999
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HardwareRenderer cannot be used from multiple threads"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1004
    :cond_3
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->destroySurface()V

    .line 1007
    invoke-direct {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->createSurface(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1008
    const/4 v0, 0x0

    .line 1013
    :goto_0
    return-object v0

    .line 1011
    :cond_4
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->initCaches()V

    .line 1013
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    goto :goto_0
.end method

.method abstract createManagedContext(Ljavax/microedition/khronos/egl/EGLContext;)Landroid/opengl/ManagedEGLContext;
.end method

.method destroy(Z)V
    .locals 3
    .parameter "full"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1052
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_0

    .line 1053
    iput-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    .line 1061
    :cond_0
    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDestroyed:Z

    if-eqz v0, :cond_2

    .line 1062
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/HardwareRenderer;->setEnabled(Z)V

    .line 1071
    :goto_0
    return-void

    .line 1066
    :cond_2
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->destroySurface()V

    .line 1067
    invoke-virtual {p0, v1}, Landroid/view/HardwareRenderer;->setEnabled(Z)V

    .line 1069
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDestroyed:Z

    .line 1070
    iput-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL;

    goto :goto_0
.end method

.method destroySurface()V
    .locals 5

    .prologue
    .line 1074
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 1075
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1076
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1077
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1079
    :cond_0
    return-void
.end method

.method detachFunctor(I)V
    .locals 1
    .parameter "functor"

    .prologue
    .line 1368
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    invoke-virtual {v0, p1}, Landroid/view/HardwareCanvas;->detachFunctor(I)V

    .line 1371
    :cond_0
    return-void
.end method

.method draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;Landroid/graphics/Rect;)Z
    .locals 23
    .parameter "view"
    .parameter "attachInfo"
    .parameter "callbacks"
    .parameter "dirty"

    .prologue
    .line 1190
    invoke-virtual/range {p0 .. p0}, Landroid/view/HardwareRenderer$GlRenderer;->canDraw()Z

    move-result v18

    if-eqz v18, :cond_15

    .line 1191
    invoke-virtual/range {p0 .. p0}, Landroid/view/HardwareRenderer$GlRenderer;->hasDirtyRegions()Z

    move-result v18

    if-nez v18, :cond_0

    .line 1192
    const/16 p4, 0x0

    .line 1194
    :cond_0
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1195
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p2

    iput-wide v0, v2, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 1197
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x20

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 1199
    invoke-virtual/range {p0 .. p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkCurrent()I

    move-result v16

    .line 1200
    .local v16, surfaceState:I
    if-eqz v16, :cond_15

    .line 1201
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    .line 1202
    .local v3, canvas:Landroid/view/HardwareCanvas;
    move-object/from16 v0, p2

    iput-object v3, v0, Landroid/view/View$AttachInfo;->mHardwareCanvas:Landroid/view/HardwareCanvas;

    .line 1204
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1209
    :cond_1
    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 1210
    const/16 p4, 0x0

    .line 1211
    const/16 v18, 0x0

    #calls: Landroid/view/HardwareRenderer;->beginFrame([I)V
    invoke-static/range {v18 .. v18}, Landroid/view/HardwareRenderer;->access$200([I)V

    .line 1226
    :cond_2
    :goto_0
    const/4 v13, 0x0

    .line 1227
    .local v13, saveCount:I
    const/4 v15, 0x0

    .line 1230
    .local v15, status:I
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v18, v0

    const/high16 v19, -0x8000

    and-int v18, v18, v19

    const/high16 v19, -0x8000

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    const/16 v18, 0x1

    :goto_1
    move/from16 v0, v18

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1232
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v18, v0

    const v19, 0x7fffffff

    and-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 1234
    const-wide/16 v9, 0x0

    .line 1235
    .local v9, getDisplayListStartTime:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 1236
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    .line 1237
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 1238
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    .line 1241
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 1244
    :cond_4
    invoke-virtual {v3}, Landroid/view/HardwareCanvas;->clearLayerUpdates()V

    .line 1247
    const-wide/16 v18, 0x8

    const-string v20, "getDisplayList"

    invoke-static/range {v18 .. v20}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1249
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 1251
    .local v4, displayList:Landroid/view/DisplayList;
    const-wide/16 v18, 0x8

    :try_start_2
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 1254
    const-wide/16 v18, 0x8

    const-string v20, "prepareFrame"

    invoke-static/range {v18 .. v20}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1256
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer$GlRenderer;->onPreDraw(Landroid/graphics/Rect;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v15

    .line 1258
    const-wide/16 v18, 0x8

    :try_start_4
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 1260
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    move-result v13

    .line 1261
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePreDraw(Landroid/view/HardwareCanvas;)V

    .line 1263
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 1264
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 1265
    .local v11, now:J
    sub-long v18, v11, v9

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x358637bd

    mul-float v17, v18, v19

    .line 1267
    .local v17, total:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    move/from16 v19, v0

    aput v17, v18, v19

    .line 1270
    .end local v11           #now:J
    .end local v17           #total:F
    :cond_5
    if-eqz v4, :cond_13

    .line 1271
    const-wide/16 v5, 0x0

    .line 1272
    .local v5, drawDisplayListStartTime:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 1273
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 1276
    :cond_6
    const-wide/16 v18, 0x8

    const-string v20, "drawDisplayList"

    invoke-static/range {v18 .. v20}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1278
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mRedrawClip:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v4, v0, v1}, Landroid/view/HardwareCanvas;->drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result v18

    or-int v15, v15, v18

    .line 1281
    const-wide/16 v18, 0x8

    :try_start_6
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 1284
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 1285
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 1286
    .restart local v11       #now:J
    sub-long v18, v11, v5

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x358637bd

    mul-float v17, v18, v19

    .line 1287
    .restart local v17       #total:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    aput v17, v18, v19

    .line 1290
    .end local v11           #now:J
    .end local v17           #total:F
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v15}, Landroid/view/HardwareRenderer$GlRenderer;->handleFunctorStatus(Landroid/view/View$AttachInfo;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1296
    .end local v5           #drawDisplayListStartTime:J
    :goto_2
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePostDraw(Landroid/view/HardwareCanvas;)V

    .line 1297
    invoke-virtual {v3, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1298
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1300
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x1

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    .line 1302
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDirtyRegions:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    if-nez v18, :cond_8

    .line 1304
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/HardwareRenderer$GlRenderer;->mDebugPaint:Landroid/graphics/Paint;

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const/high16 v19, 0x7fff

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 1308
    :cond_8
    if-eqz p4, :cond_9

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x1

    and-long v18, v18, v20

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_9

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1314
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/HardwareRenderer$GlRenderer;->onPostDraw()V

    .line 1316
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1318
    and-int/lit8 v18, v15, 0x4

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 1319
    const-wide/16 v7, 0x0

    .line 1320
    .local v7, eglSwapBuffersStartTime:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 1321
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 1324
    :cond_a
    sget-object v18, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v19, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1326
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 1327
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 1328
    .restart local v11       #now:J
    sub-long v18, v11, v7

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x358637bd

    mul-float v17, v18, v19

    .line 1329
    .restart local v17       #total:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x2

    aput v17, v18, v19

    .line 1332
    .end local v11           #now:J
    .end local v17           #total:F
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkEglErrors()V

    .line 1335
    .end local v7           #eglSwapBuffersStartTime:J
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    .line 1336
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1339
    :cond_d
    if-nez p4, :cond_14

    const/16 v18, 0x1

    .line 1343
    .end local v3           #canvas:Landroid/view/HardwareCanvas;
    .end local v4           #displayList:Landroid/view/DisplayList;
    .end local v9           #getDisplayListStartTime:J
    .end local v13           #saveCount:I
    .end local v15           #status:I
    .end local v16           #surfaceState:I
    :goto_3
    return v18

    .line 1213
    .restart local v3       #canvas:Landroid/view/HardwareCanvas;
    .restart local v16       #surfaceState:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/HardwareRenderer$GlRenderer;->mSurfaceSize:[I

    .line 1214
    .local v14, size:[I
    #calls: Landroid/view/HardwareRenderer;->beginFrame([I)V
    invoke-static {v14}, Landroid/view/HardwareRenderer;->access$200([I)V

    .line 1216
    const/16 v18, 0x1

    aget v18, v14, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    const/16 v18, 0x0

    aget v18, v14, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 1217
    :cond_f
    const/16 v18, 0x0

    aget v18, v14, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    .line 1218
    const/16 v18, 0x1

    aget v18, v14, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    .line 1220
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Canvas;->setViewport(II)V

    .line 1222
    const/16 p4, 0x0

    goto/16 :goto_0

    .line 1230
    .end local v14           #size:[I
    .restart local v13       #saveCount:I
    .restart local v15       #status:I
    :cond_10
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 1251
    .restart local v9       #getDisplayListStartTime:J
    :catchall_0
    move-exception v18

    const-wide/16 v19, 0x8

    :try_start_7
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    throw v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1296
    .end local v9           #getDisplayListStartTime:J
    :catchall_1
    move-exception v18

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePostDraw(Landroid/view/HardwareCanvas;)V

    .line 1297
    invoke-virtual {v3, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1298
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1300
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x1

    add-long v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    .line 1302
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugDirtyRegions:Z

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    if-nez v19, :cond_11

    .line 1304
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/HardwareRenderer$GlRenderer;->mDebugPaint:Landroid/graphics/Paint;

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/high16 v20, 0x7fff

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColor(I)V

    .line 1308
    :cond_11
    if-eqz p4, :cond_12

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x1

    and-long v19, v19, v21

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_12

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mDebugPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1296
    :cond_12
    throw v18

    .line 1258
    .restart local v4       #displayList:Landroid/view/DisplayList;
    .restart local v9       #getDisplayListStartTime:J
    :catchall_2
    move-exception v18

    const-wide/16 v19, 0x8

    :try_start_8
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    throw v18

    .line 1281
    .restart local v5       #drawDisplayListStartTime:J
    :catchall_3
    move-exception v18

    const-wide/16 v19, 0x8

    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    throw v18

    .line 1293
    .end local v5           #drawDisplayListStartTime:J
    :cond_13
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_2

    .line 1339
    :cond_14
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 1343
    .end local v3           #canvas:Landroid/view/HardwareCanvas;
    .end local v4           #displayList:Landroid/view/DisplayList;
    .end local v9           #getDisplayListStartTime:J
    .end local v13           #saveCount:I
    .end local v15           #status:I
    .end local v16           #surfaceState:I
    :cond_15
    const/16 v18, 0x0

    goto/16 :goto_3
.end method

.method dumpGfxInfo(Ljava/io/PrintWriter;)V
    .locals 7
    .parameter "pw"

    .prologue
    const/4 v2, 0x0

    .line 763
    iget-boolean v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileEnabled:Z

    if-eqz v1, :cond_1

    .line 764
    const-string v1, "\n\tDraw\tProcess\tExecute\n"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 766
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 768
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 769
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    aget v1, v1, v0

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 776
    :cond_0
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    array-length v1, v1

    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 781
    .end local v0           #i:I
    :cond_1
    return-void

    .line 772
    .restart local v0       #i:I
    :cond_2
    :try_start_1
    const-string v1, "\t%3.2f\t%3.2f\t%3.2f\n"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    add-int/lit8 v5, v0, 0x2

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 774
    iget-object v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    add-int/lit8 v5, v0, 0x2

    const/high16 v6, -0x4080

    aput v6, v4, v5

    aput v6, v2, v3

    aput v6, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 768
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 778
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method getCanvas()Landroid/view/HardwareCanvas;
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    return-object v0
.end method

.method abstract getConfig(Z)[I
.end method

.method getFrameCount()J
    .locals 2

    .prologue
    .line 785
    iget-wide v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mFrameCount:J

    return-wide v0
.end method

.method getHeight()I
    .locals 1

    .prologue
    .line 1150
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    return v0
.end method

.method getWidth()I
    .locals 1

    .prologue
    .line 1145
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    return v0
.end method

.method hasDirtyRegions()Z
    .locals 1

    .prologue
    .line 792
    iget-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDirtyRegionsEnabled:Z

    return v0
.end method

.method abstract initCaches()V
.end method

.method initialize(Landroid/view/Surface;)Z
    .locals 5
    .parameter "surface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 828
    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isRequested()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 829
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->initializeEgl()V

    .line 830
    invoke-virtual {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->createEglSurface(Landroid/view/Surface;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v3

    iput-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL;

    .line 831
    iput-boolean v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mDestroyed:Z

    .line 836
    iget-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL;

    if-eqz v3, :cond_4

    .line 837
    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 838
    .local v0, err:I
    const/16 v3, 0x3000

    if-eq v0, v3, :cond_0

    .line 839
    invoke-virtual {p0, v1}, Landroid/view/HardwareRenderer$GlRenderer;->destroy(Z)V

    .line 840
    invoke-virtual {p0, v2}, Landroid/view/HardwareRenderer;->setRequested(Z)V

    .line 852
    :goto_0
    iget-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v3, :cond_3

    .line 855
    .end local v0           #err:I
    :goto_1
    return v1

    .line 842
    .restart local v0       #err:I
    :cond_0
    iget-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-nez v3, :cond_1

    .line 843
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->createCanvas()Landroid/view/HardwareCanvas;

    move-result-object v3

    iput-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    .line 845
    :cond_1
    iget-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v3, :cond_2

    .line 846
    invoke-virtual {p0, v1}, Landroid/view/HardwareRenderer;->setEnabled(Z)V

    goto :goto_0

    .line 848
    :cond_2
    const-string v3, "HardwareRenderer"

    const-string v4, "Hardware accelerated Canvas could not be created"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v1, v2

    .line 852
    goto :goto_1

    .end local v0           #err:I
    :cond_4
    move v1, v2

    .line 855
    goto :goto_1
.end method

.method initializeEgl()V
    .locals 6

    .prologue
    .line 870
    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglLock:[Ljava/lang/Object;

    monitor-enter v3

    .line 871
    :try_start_0
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v2, :cond_3

    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v2, :cond_3

    .line 872
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    sput-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 875
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    sput-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 877
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v4, :cond_0

    .line 878
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eglGetDisplay failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    invoke-static {v5}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 905
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 883
    :cond_0
    const/4 v2, 0x2

    :try_start_1
    new-array v1, v2, [I

    .line 884
    .local v1, version:[I
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v4, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v4, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 885
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eglInitialize failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    invoke-static {v5}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 889
    :cond_1
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkEglErrorsForced()V

    .line 891
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    sput-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 892
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v2, :cond_3

    .line 894
    sget-boolean v2, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    if-eqz v2, :cond_2

    .line 895
    const/4 v2, 0x0

    sput-boolean v2, Landroid/view/HardwareRenderer$GlRenderer;->sDirtyRegions:Z

    .line 896
    invoke-direct {p0}, Landroid/view/HardwareRenderer$GlRenderer;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    sput-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 897
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v2, :cond_3

    .line 898
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "eglConfig not initialized"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 901
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "eglConfig not initialized"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 905
    .end local v1           #version:[I
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 907
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglContextStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/ManagedEGLContext;

    .line 908
    .local v0, managedContext:Landroid/opengl/ManagedEGLContext;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/opengl/ManagedEGLContext;->getContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 909
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglThread:Ljava/lang/Thread;

    .line 911
    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v2, :cond_4

    .line 912
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Landroid/view/HardwareRenderer$GlRenderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/HardwareRenderer$GlRenderer;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 913
    sget-object v2, Landroid/view/HardwareRenderer$GlRenderer;->sEglContextStorage:Ljava/lang/ThreadLocal;

    iget-object v3, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {p0, v3}, Landroid/view/HardwareRenderer$GlRenderer;->createManagedContext(Ljavax/microedition/khronos/egl/EGLContext;)Landroid/opengl/ManagedEGLContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 915
    :cond_4
    return-void

    .line 908
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method invalidate(Landroid/view/Surface;)V
    .locals 6
    .parameter "surface"

    .prologue
    const/4 v5, 0x1

    .line 1085
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1087
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 1088
    sget-object v0, Landroid/view/HardwareRenderer$GlRenderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Landroid/view/HardwareRenderer$GlRenderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1089
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1090
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer;->setEnabled(Z)V

    .line 1093
    :cond_0
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1094
    invoke-direct {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->createSurface(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1104
    :cond_1
    :goto_0
    return-void

    .line 1098
    :cond_2
    iput-boolean v5, p0, Landroid/view/HardwareRenderer$GlRenderer;->mUpdateDirtyRegions:Z

    .line 1100
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_1

    .line 1101
    invoke-virtual {p0, v5}, Landroid/view/HardwareRenderer;->setEnabled(Z)V

    goto :goto_0
.end method

.method onPostDraw()V
    .locals 0

    .prologue
    .line 1167
    return-void
.end method

.method onPreDraw(Landroid/graphics/Rect;)I
    .locals 1
    .parameter "dirty"

    .prologue
    .line 1163
    const/4 v0, 0x0

    return v0
.end method

.method setup(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1136
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mCanvas:Landroid/view/HardwareCanvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->setViewport(II)V

    .line 1138
    iput p1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mWidth:I

    .line 1139
    iput p2, p0, Landroid/view/HardwareRenderer$GlRenderer;->mHeight:I

    .line 1141
    :cond_0
    return-void
.end method

.method updateSurface(Landroid/view/Surface;)V
    .locals 1
    .parameter "surface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 860
    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    invoke-virtual {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->createEglSurface(Landroid/view/Surface;)Ljavax/microedition/khronos/opengles/GL;

    .line 863
    :cond_0
    return-void
.end method

.method validate()Z
    .locals 1

    .prologue
    .line 1131
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$GlRenderer;->checkCurrent()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
