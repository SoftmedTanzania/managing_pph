.class public Lorg/chromium/base/library_loader/LibraryLoader;
.super Ljava/lang/Object;
.source "LibraryLoader.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "base::android"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LibraryLoader"

.field private static volatile sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mCommandLineSwitched:Z

.field private volatile mInitialized:Z

.field private mIsUsingBrowserSharedRelros:Z

.field private mLibraryIsMappableInApk:Z

.field private final mLibraryProcessType:I

.field private mLibraryWasLoadedFromApk:Z

.field private mLoadAtFixedAddressFailed:Z

.field private mLoaded:Z

.field private mMapApkWithExecPermission:Z

.field private mProbeMapApkWithExecPermission:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/base/library_loader/LibraryLoader;->$assertionsDisabled:Z

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "libraryProcessType"    # I

    .prologue
    const/4 v0, 0x1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mProbeMapApkWithExecPermission:Z

    .line 86
    iput-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryIsMappableInApk:Z

    .line 111
    iput p1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryProcessType:I

    .line 112
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeForkAndPrefetchNativeLibrary()Z

    move-result v0

    return v0
.end method

.method private ensureCommandLineSwitchedAlreadyLocked()V
    .locals 1

    .prologue
    .line 392
    sget-boolean v0, Lorg/chromium/base/library_loader/LibraryLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 393
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mCommandLineSwitched:Z

    if-eqz v0, :cond_1

    .line 399
    :goto_0
    return-void

    .line 396
    :cond_1
    invoke-static {}, Lorg/chromium/base/CommandLine;->getJavaSwitchesOrNull()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeInitCommandLine([Ljava/lang/String;)V

    .line 397
    invoke-static {}, Lorg/chromium/base/CommandLine;->enableNativeProxy()V

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mCommandLineSwitched:Z

    goto :goto_0
.end method

.method public static get(I)Lorg/chromium/base/library_loader/LibraryLoader;
    .locals 3
    .param p0, "libraryProcessType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/base/library_loader/ProcessInitException;
        }
    .end annotation

    .prologue
    .line 99
    sget-object v1, Lorg/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_0
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    if-eqz v0, :cond_1

    .line 101
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    iget v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryProcessType:I

    if-ne v0, p0, :cond_0

    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    monitor-exit v1

    .line 106
    :goto_0
    return-object v0

    .line 102
    :cond_0
    new-instance v0, Lorg/chromium/base/library_loader/ProcessInitException;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lorg/chromium/base/library_loader/ProcessInitException;-><init>(I)V

    throw v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 105
    :cond_1
    :try_start_1
    new-instance v0, Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-direct {v0, p0}, Lorg/chromium/base/library_loader/LibraryLoader;-><init>(I)V

    sput-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 106
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private getLibraryLoadFromApkStatus(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 453
    sget-boolean v1, Lorg/chromium/base/library_loader/LibraryLoader;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isUsed()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 455
    :cond_0
    iget-boolean v1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryWasLoadedFromApk:Z

    if-eqz v1, :cond_3

    .line 456
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mMapApkWithExecPermission:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 474
    :cond_1
    :goto_0
    return v0

    .line 456
    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    .line 461
    :cond_3
    iget-boolean v1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryIsMappableInApk:Z

    if-nez v1, :cond_4

    .line 462
    const/4 v0, 0x4

    goto :goto_0

    .line 465
    :cond_4
    if-nez p1, :cond_5

    .line 466
    const-string v1, "LibraryLoader"

    const-string v2, "Unknown APK filename due to null context"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 470
    :cond_5
    iget-boolean v1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mProbeMapApkWithExecPermission:Z

    if-eqz v1, :cond_1

    .line 474
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mMapApkWithExecPermission:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getLibraryProcessType()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 497
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 498
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    iget v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryProcessType:I

    goto :goto_0
.end method

.method private initializeAlreadyLocked()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/base/library_loader/ProcessInitException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 403
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mCommandLineSwitched:Z

    if-nez v0, :cond_1

    .line 409
    invoke-static {}, Lorg/chromium/base/CommandLine;->getJavaSwitchesOrNull()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeInitCommandLine([Ljava/lang/String;)V

    .line 412
    :cond_1
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeLibraryLoaded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 413
    const-string v0, "LibraryLoader"

    const-string v1, "error calling nativeLibraryLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    new-instance v0, Lorg/chromium/base/library_loader/ProcessInitException;

    invoke-direct {v0, v2}, Lorg/chromium/base/library_loader/ProcessInitException;-><init>(I)V

    throw v0

    .line 419
    :cond_2
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mCommandLineSwitched:Z

    if-nez v0, :cond_3

    .line 420
    invoke-static {}, Lorg/chromium/base/CommandLine;->enableNativeProxy()V

    .line 421
    iput-boolean v2, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mCommandLineSwitched:Z

    .line 425
    :cond_3
    invoke-static {}, Lorg/chromium/base/TraceEvent;->registerNativeEnabledObserver()V

    .line 432
    iput-boolean v2, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mInitialized:Z

    goto :goto_0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    iget-boolean v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->mInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAlreadyLocked(Landroid/content/Context;Z)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shouldDeleteFallbackLibraries"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/base/library_loader/ProcessInitException;
        }
    .end annotation

    .prologue
    .line 228
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoaded:Z

    move/from16 v19, v0

    if-nez v19, :cond_10

    .line 229
    sget-boolean v19, Lorg/chromium/base/library_loader/LibraryLoader;->$assertionsDisabled:Z

    if-nez v19, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->mInitialized:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :catch_0
    move-exception v4

    .line 357
    .local v4, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v19, Lorg/chromium/base/library_loader/ProcessInitException;

    const/16 v20, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lorg/chromium/base/library_loader/ProcessInitException;-><init>(ILjava/lang/Throwable;)V

    throw v19

    .line 231
    .end local v4    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 232
    .local v12, "startTime":J
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isUsed()Z

    move-result v16

    .line 233
    .local v16, "useChromiumLinker":Z
    const/4 v5, 0x0

    .line 235
    .local v5, "fallbackWasUsed":Z
    if-eqz v16, :cond_11

    .line 236
    const/4 v2, 0x0

    .line 237
    .local v2, "apkFilePath":Ljava/lang/String;
    const/16 v17, 0x0

    .line 243
    .local v17, "useMapExecSupportFallback":Z
    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 244
    .local v11, "manufacturer":Ljava/lang/String;
    if-eqz v11, :cond_1

    sget-object v19, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "samsung"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 246
    const-string v19, "LibraryLoader"

    const-string v20, "Suppressed load from APK support check on this device"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/chromium/base/library_loader/LibraryLoader;->mProbeMapApkWithExecPermission:Z

    .line 252
    :cond_1
    if-eqz p1, :cond_5

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 254
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->mProbeMapApkWithExecPermission:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 255
    invoke-static {v2}, Lorg/chromium/base/library_loader/Linker;->checkMapExecSupport(Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/chromium/base/library_loader/LibraryLoader;->mMapApkWithExecPermission:Z

    .line 260
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->mMapApkWithExecPermission:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isInZipFile()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 261
    const-string v19, "LibraryLoader"

    const-string v20, "the no map executable support fallback will be used because memory mapping the APK file with executable permissions is not supported"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->enableNoMapExecSupportFallback()V

    .line 265
    const/16 v17, 0x1

    .line 272
    :cond_2
    :goto_1
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->prepareLibraryLoad()V

    .line 274
    sget-object v3, Lorg/chromium/base/library_loader/NativeLibraries;->LIBRARIES:[Ljava/lang/String;

    .local v3, "arr$":[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v8, :cond_d

    aget-object v10, v3, v6

    .line 278
    .local v10, "library":Ljava/lang/String;
    invoke-static {v10}, Lorg/chromium/base/library_loader/Linker;->isChromiumLinkerLibrary(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 274
    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 258
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "library":Ljava/lang/String;
    :cond_4
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/chromium/base/library_loader/LibraryLoader;->mMapApkWithExecPermission:Z

    goto :goto_0

    .line 268
    :cond_5
    const-string v19, "LibraryLoader"

    const-string v20, "could not check load from APK support due to null context"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 284
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v6    # "i$":I
    .restart local v8    # "len$":I
    .restart local v10    # "library":Ljava/lang/String;
    :cond_6
    const/16 v18, 0x0

    .line 285
    .local v18, "zipFilePath":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 286
    .local v9, "libFilePath":Ljava/lang/String;
    if-eqz v2, :cond_c

    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isInZipFile()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 288
    invoke-static {v2, v9}, Lorg/chromium/base/library_loader/Linker;->checkLibraryIsMappableInApk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 289
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryIsMappableInApk:Z

    .line 291
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryIsMappableInApk:Z

    move/from16 v19, v0

    if-nez v19, :cond_8

    if-eqz v17, :cond_b

    .line 294
    :cond_8
    move-object/from16 v18, v2

    .line 295
    const-string v20, "LibraryLoader"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Loading "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-eqz v17, :cond_a

    const-string v19, "using no map executable support fallback"

    :goto_4
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " from within "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :goto_5
    const/4 v7, 0x0

    .line 317
    .local v7, "isLoaded":Z
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isUsingBrowserSharedRelros()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 318
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/chromium/base/library_loader/LibraryLoader;->mIsUsingBrowserSharedRelros:Z
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    .line 320
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9}, Lorg/chromium/base/library_loader/LibraryLoader;->loadLibrary(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1

    .line 321
    const/4 v7, 0x1

    .line 329
    :cond_9
    :goto_6
    if-nez v7, :cond_3

    .line 330
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9}, Lorg/chromium/base/library_loader/LibraryLoader;->loadLibrary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 295
    .end local v7    # "isLoaded":Z
    :cond_a
    const-string v19, "directly"

    goto :goto_4

    .line 302
    :cond_b
    const-string v19, "LibraryLoader"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Loading "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " using unpack library fallback from within "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lorg/chromium/base/library_loader/LibraryLoaderHelper;->buildFallbackLibrary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 307
    const/4 v5, 0x1

    .line 308
    const-string v19, "LibraryLoader"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Built fallback library "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 312
    :cond_c
    const-string v19, "LibraryLoader"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Loading "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 322
    .restart local v7    # "isLoaded":Z
    :catch_1
    move-exception v4

    .line 323
    .restart local v4    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v19, "LibraryLoader"

    const-string v20, "Failed to load native library with shared RELRO, retrying without"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->disableSharedRelros()V

    .line 326
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/chromium/base/library_loader/LibraryLoader;->mLoadAtFixedAddressFailed:Z

    goto/16 :goto_6

    .line 334
    .end local v4    # "e":Ljava/lang/UnsatisfiedLinkError;
    .end local v7    # "isLoaded":Z
    .end local v9    # "libFilePath":Ljava/lang/String;
    .end local v10    # "library":Ljava/lang/String;
    .end local v18    # "zipFilePath":Ljava/lang/String;
    :cond_d
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->finishLibraryLoad()V

    .line 342
    .end local v2    # "apkFilePath":Ljava/lang/String;
    .end local v11    # "manufacturer":Ljava/lang/String;
    .end local v17    # "useMapExecSupportFallback":Z
    :cond_e
    if-nez v5, :cond_f

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    .line 344
    const-string v19, "fallback"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lorg/chromium/base/library_loader/LibraryLoaderHelper;->deleteLibrariesAsynchronously(Landroid/content/Context;Ljava/lang/String;)V

    .line 348
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 349
    .local v14, "stopTime":J
    const-string v19, "LibraryLoader"

    const-string v20, "Time to load native libraries: %d ms (timestamps %d-%d)"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    sub-long v24, v14, v12

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-wide/16 v24, 0x2710

    rem-long v24, v12, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-wide/16 v24, 0x2710

    rem-long v24, v14, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/chromium/base/library_loader/LibraryLoader;->mLoaded:Z
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_0

    .line 360
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "fallbackWasUsed":Z
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .end local v12    # "startTime":J
    .end local v14    # "stopTime":J
    .end local v16    # "useChromiumLinker":Z
    :cond_10
    const-string v19, "LibraryLoader"

    const-string v20, "Expected native library version number \"%s\",actual native library version number \"%s\""

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    sget-object v23, Lorg/chromium/base/library_loader/NativeLibraries;->sVersionNumber:Ljava/lang/String;

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeGetVersionNumber()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    sget-object v19, Lorg/chromium/base/library_loader/NativeLibraries;->sVersionNumber:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeGetVersionNumber()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_12

    .line 366
    new-instance v19, Lorg/chromium/base/library_loader/ProcessInitException;

    const/16 v20, 0x3

    invoke-direct/range {v19 .. v20}, Lorg/chromium/base/library_loader/ProcessInitException;-><init>(I)V

    throw v19

    .line 337
    .restart local v5    # "fallbackWasUsed":Z
    .restart local v12    # "startTime":J
    .restart local v16    # "useChromiumLinker":Z
    :cond_11
    :try_start_4
    sget-object v3, Lorg/chromium/base/library_loader/NativeLibraries;->LIBRARIES:[Ljava/lang/String;

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v8, v3

    .restart local v8    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_7
    if-ge v6, v8, :cond_e

    aget-object v10, v3, v6

    .line 338
    .restart local v10    # "library":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_0

    .line 337
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 368
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "fallbackWasUsed":Z
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "library":Ljava/lang/String;
    .end local v12    # "startTime":J
    .end local v16    # "useChromiumLinker":Z
    :cond_12
    return-void
.end method

.method private loadLibrary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "zipFilePath"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "libFilePath"    # Ljava/lang/String;

    .prologue
    .line 373
    invoke-static {p1, p2}, Lorg/chromium/base/library_loader/Linker;->loadLibrary(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    if-eqz p1, :cond_0

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryWasLoadedFromApk:Z

    .line 377
    :cond_0
    return-void
.end method

.method private static native nativeForkAndPrefetchNativeLibrary()Z
.end method

.method private native nativeGetVersionNumber()Ljava/lang/String;
.end method

.method private native nativeInitCommandLine([Ljava/lang/String;)V
.end method

.method private native nativeLibraryLoaded()Z
.end method

.method private native nativeRecordChromiumAndroidLinkerBrowserHistogram(ZZI)V
.end method

.method private native nativeRegisterChromiumAndroidLinkerRendererHistogram(ZZ)V
.end method

.method private recordBrowserProcessHistogram(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 443
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mIsUsingBrowserSharedRelros:Z

    iget-boolean v1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoadAtFixedAddressFailed:Z

    invoke-direct {p0, p1}, Lorg/chromium/base/library_loader/LibraryLoader;->getLibraryLoadFromApkStatus(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeRecordChromiumAndroidLinkerBrowserHistogram(ZZI)V

    .line 448
    :cond_0
    return-void
.end method


# virtual methods
.method public asyncPrefetchLibrariesToMemory(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    new-instance v0, Lorg/chromium/base/library_loader/LibraryLoader$1;

    invoke-direct {v0, p0}, Lorg/chromium/base/library_loader/LibraryLoader$1;-><init>(Lorg/chromium/base/library_loader/LibraryLoader;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/base/library_loader/LibraryLoader$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 221
    return-void
.end method

.method public ensureInitialized()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/base/library_loader/ProcessInitException;
        }
    .end annotation

    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/base/library_loader/LibraryLoader;->ensureInitialized(Landroid/content/Context;Z)V

    .line 123
    return-void
.end method

.method public ensureInitialized(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shouldDeleteFallbackLibraries"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/base/library_loader/ProcessInitException;
        }
    .end annotation

    .prologue
    .line 138
    sget-object v1, Lorg/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 141
    monitor-exit v1

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/chromium/base/library_loader/LibraryLoader;->loadAlreadyLocked(Landroid/content/Context;Z)V

    .line 144
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->initializeAlreadyLocked()V

    .line 145
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initialize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/base/library_loader/ProcessInitException;
        }
    .end annotation

    .prologue
    .line 191
    sget-object v1, Lorg/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->initializeAlreadyLocked()V

    .line 193
    monitor-exit v1

    .line 194
    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadNow()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/base/library_loader/ProcessInitException;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/base/library_loader/LibraryLoader;->loadNow(Landroid/content/Context;Z)V

    .line 163
    return-void
.end method

.method public loadNow(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shouldDeleteFallbackLibraries"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/base/library_loader/ProcessInitException;
        }
    .end annotation

    .prologue
    .line 180
    sget-object v1, Lorg/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 181
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/chromium/base/library_loader/LibraryLoader;->loadAlreadyLocked(Landroid/content/Context;Z)V

    .line 182
    monitor-exit v1

    .line 183
    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onNativeInitializationComplete(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 437
    invoke-direct {p0, p1}, Lorg/chromium/base/library_loader/LibraryLoader;->recordBrowserProcessHistogram(Landroid/content/Context;)V

    .line 438
    return-void
.end method

.method public registerRendererProcessHistogram(ZZ)V
    .locals 1
    .param p1, "requestedSharedRelro"    # Z
    .param p2, "loadAtFixedAddressFailed"    # Z

    .prologue
    .line 485
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    invoke-direct {p0, p1, p2}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeRegisterChromiumAndroidLinkerRendererHistogram(ZZ)V

    .line 489
    :cond_0
    return-void
.end method

.method public switchCommandLineForWebView()V
    .locals 2

    .prologue
    .line 383
    sget-object v1, Lorg/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 384
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->ensureCommandLineSwitchedAlreadyLocked()V

    .line 385
    monitor-exit v1

    .line 386
    return-void

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
