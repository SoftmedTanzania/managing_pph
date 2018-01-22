.class Lorg/chromium/content/browser/DeviceSensors;
.super Ljava/lang/Object;
.source "DeviceSensors.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxyImpl;,
        Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# static fields
.field static final DEVICE_LIGHT:I = 0x2

.field static final DEVICE_LIGHT_SENSORS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final DEVICE_MOTION:I = 0x1

.field static final DEVICE_MOTION_SENSORS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final DEVICE_ORIENTATION:I = 0x0

.field static final DEVICE_ORIENTATION_BACKUP_SENSORS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final DEVICE_ORIENTATION_DEFAULT_SENSORS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DeviceSensors"

.field private static sSingleton:Lorg/chromium/content/browser/DeviceSensors;

.field private static sSingletonLock:Ljava/lang/Object;


# instance fields
.field final mActiveSensors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field mDeviceLightIsActive:Z

.field mDeviceMotionIsActive:Z

.field mDeviceOrientationIsActive:Z

.field mDeviceOrientationSensors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceRotationMatrix:[F

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerLock:Ljava/lang/Object;

.field private mMagneticFieldVector:[F

.field private mNativePtr:J

.field private final mNativePtrLock:Ljava/lang/Object;

.field private mRotationAngles:[D

.field private mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

.field private mThread:Ljava/lang/Thread;

.field private mTruncatedRotationVector:[F

.field mUseBackupOrientationSensors:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->sSingletonLock:Ljava/lang/Object;

    .line 78
    new-array v0, v2, [Ljava/lang/Integer;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_DEFAULT_SENSORS:Ljava/util/Set;

    .line 81
    new-array v0, v4, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_BACKUP_SENSORS:Ljava/util/Set;

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    .line 88
    new-array v0, v2, [Ljava/lang/Integer;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_LIGHT_SENSORS:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mHandlerLock:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    .line 93
    sget-object v0, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_DEFAULT_SENSORS:Ljava/util/Set;

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    .line 94
    iput-boolean v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceLightIsActive:Z

    .line 95
    iput-boolean v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    .line 96
    iput-boolean v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    .line 97
    iput-boolean v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mUseBackupOrientationSensors:Z

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mAppContext:Landroid/content/Context;

    .line 101
    return-void
.end method

.method public static computeDeviceOrientationFromRotationMatrix([F[D)[D
    .locals 9
    .param p0, "matrixR"    # [F
    .param p1, "values"    # [D
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x7

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 329
    array-length v0, p0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-object p1

    .line 331
    :cond_1
    const/16 v0, 0x8

    aget v0, p0, v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 332
    aget v0, p0, v6

    neg-float v0, v0

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 333
    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    aput-wide v0, p1, v6

    .line 334
    const/4 v0, 0x6

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    const/16 v2, 0x8

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v8

    .line 359
    :goto_1
    aget-wide v0, p1, v7

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 360
    aget-wide v0, p1, v7

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v0, v2

    aput-wide v0, p1, v7

    goto :goto_0

    .line 335
    :cond_2
    const/16 v0, 0x8

    aget v0, p0, v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    .line 336
    aget v0, p0, v6

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 337
    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    neg-double v0, v0

    aput-wide v0, p1, v6

    .line 338
    aget-wide v2, p1, v6

    aget-wide v0, p1, v6

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_3

    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    :goto_2
    add-double/2addr v0, v2

    aput-wide v0, p1, v6

    .line 339
    const/4 v0, 0x6

    aget v0, p0, v0

    float-to-double v0, v0

    const/16 v2, 0x8

    aget v2, p0, v2

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v8

    goto :goto_1

    .line 338
    :cond_3
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    goto :goto_2

    .line 341
    :cond_4
    const/4 v0, 0x6

    aget v0, p0, v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    .line 342
    aget v0, p0, v6

    neg-float v0, v0

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 343
    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    aput-wide v0, p1, v6

    .line 344
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    aput-wide v0, p1, v8

    goto/16 :goto_1

    .line 345
    :cond_5
    const/4 v0, 0x6

    aget v0, p0, v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_7

    .line 346
    aget v0, p0, v6

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 347
    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    neg-double v0, v0

    aput-wide v0, p1, v6

    .line 348
    aget-wide v2, p1, v6

    aget-wide v0, p1, v6

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_6

    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    :goto_3
    add-double/2addr v0, v2

    aput-wide v0, p1, v6

    .line 349
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    aput-wide v0, p1, v8

    goto/16 :goto_1

    .line 348
    :cond_6
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    goto :goto_3

    .line 352
    :cond_7
    const/4 v0, 0x3

    aget v0, p0, v0

    float-to-double v0, v0

    aget v2, p0, v7

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 353
    aget v0, p0, v5

    cmpl-float v0, v0, v4

    if-lez v0, :cond_8

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    :goto_4
    aput-wide v0, p1, v6

    .line 354
    const-wide/16 v0, 0x0

    aput-wide v0, p1, v8

    goto/16 :goto_1

    .line 353
    :cond_8
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_4
.end method

.method private ensureRotationStructuresAllocated()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceRotationMatrix:[F

    if-nez v0, :cond_0

    .line 425
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceRotationMatrix:[F

    .line 427
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    if-nez v0, :cond_1

    .line 428
    const/4 v0, 0x3

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    .line 430
    :cond_1
    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 4

    .prologue
    .line 521
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 522
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 523
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DeviceMotionAndOrientation"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 524
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 525
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mHandler:Landroid/os/Handler;

    .line 527
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mHandler:Landroid/os/Handler;

    monitor-exit v2

    return-object v1

    .line 528
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getInstance(Landroid/content/Context;)Lorg/chromium/content/browser/DeviceSensors;
    .locals 2
    .param p0, "appContext"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 533
    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->sSingletonLock:Ljava/lang/Object;

    monitor-enter v1

    .line 534
    :try_start_0
    sget-object v0, Lorg/chromium/content/browser/DeviceSensors;->sSingleton:Lorg/chromium/content/browser/DeviceSensors;

    if-nez v0, :cond_0

    .line 535
    new-instance v0, Lorg/chromium/content/browser/DeviceSensors;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/DeviceSensors;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->sSingleton:Lorg/chromium/content/browser/DeviceSensors;

    .line 537
    :cond_0
    sget-object v0, Lorg/chromium/content/browser/DeviceSensors;->sSingleton:Lorg/chromium/content/browser/DeviceSensors;

    monitor-exit v1

    return-object v0

    .line 538
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getOrientationFromGeomagneticVectors([F[F)V
    .locals 8
    .param p1, "acceleration"    # [F
    .param p2, "magnetic"    # [F

    .prologue
    .line 376
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceRotationMatrix:[F

    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    invoke-static {v0, v1}, Lorg/chromium/content/browser/DeviceSensors;->computeDeviceOrientationFromRotationMatrix([F[D)[D

    .line 384
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/content/browser/DeviceSensors;->gotOrientation(DDD)V

    goto :goto_0
.end method

.method private getOrientationFromRotationVector([F)V
    .locals 8
    .param p1, "rotationVector"    # [F

    .prologue
    .line 367
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceRotationMatrix:[F

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 368
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceRotationMatrix:[F

    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    invoke-static {v0, v1}, Lorg/chromium/content/browser/DeviceSensors;->computeDeviceOrientationFromRotationMatrix([F[D)[D

    .line 370
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/content/browser/DeviceSensors;->gotOrientation(DDD)V

    .line 373
    return-void
.end method

.method private getSensorManagerProxy()Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;
    .locals 3

    .prologue
    .line 390
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    .line 401
    :goto_0
    return-object v1

    .line 394
    :cond_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 395
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mAppContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 398
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    if-eqz v0, :cond_1

    .line 399
    new-instance v1, Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxyImpl;

    invoke-direct {v1, v0}, Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxyImpl;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    .line 401
    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    goto :goto_0
.end method

.method private native nativeGotAcceleration(JDDD)V
.end method

.method private native nativeGotAccelerationIncludingGravity(JDDD)V
.end method

.method private native nativeGotLight(JD)V
.end method

.method private native nativeGotOrientation(JDDD)V
.end method

.method private native nativeGotRotationRate(JDDD)V
.end method

.method private registerForSensorType(II)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "rateInMicroseconds"    # I

    .prologue
    .line 470
    invoke-direct {p0}, Lorg/chromium/content/browser/DeviceSensors;->getSensorManagerProxy()Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    move-result-object v0

    .line 471
    .local v0, "sensorManager":Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;
    if-nez v0, :cond_0

    .line 472
    const/4 v1, 0x0

    .line 474
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/DeviceSensors;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, p0, p1, p2, v1}, Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;->registerListener(Landroid/hardware/SensorEventListener;IILandroid/os/Handler;)Z

    move-result v1

    goto :goto_0
.end method

.method private registerSensors(Ljava/util/Set;IZ)Z
    .locals 6
    .param p2, "rateInMicroseconds"    # I
    .param p3, "failOnMissingSensor"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;IZ)Z"
        }
    .end annotation

    .prologue
    .line 441
    .local p1, "sensorTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 442
    .local v3, "sensorsToActivate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 443
    const/4 v4, 0x0

    .line 445
    .local v4, "success":Z
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 446
    .local v2, "sensorType":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, p2}, Lorg/chromium/content/browser/DeviceSensors;->registerForSensorType(II)Z

    move-result v1

    .line 447
    .local v1, "result":Z
    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    .line 449
    invoke-direct {p0, v3}, Lorg/chromium/content/browser/DeviceSensors;->unregisterSensors(Ljava/lang/Iterable;)V

    .line 450
    const/4 v4, 0x0

    .line 457
    .end local v1    # "result":Z
    .end local v2    # "sensorType":Ljava/lang/Integer;
    .end local v4    # "success":Z
    :cond_1
    return v4

    .line 452
    .restart local v1    # "result":Z
    .restart local v2    # "sensorType":Ljava/lang/Integer;
    .restart local v4    # "success":Z
    :cond_2
    if-eqz v1, :cond_0

    .line 453
    iget-object v5, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 454
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private setEventTypeActive(IZ)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "value"    # Z

    .prologue
    .line 410
    packed-switch p1, :pswitch_data_0

    .line 421
    :goto_0
    return-void

    .line 412
    :pswitch_0
    iput-boolean p2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    goto :goto_0

    .line 415
    :pswitch_1
    iput-boolean p2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    goto :goto_0

    .line 418
    :pswitch_2
    iput-boolean p2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceLightIsActive:Z

    goto :goto_0

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private unregisterSensors(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p1, "sensorTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 462
    .local v1, "sensorType":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    invoke-direct {p0}, Lorg/chromium/content/browser/DeviceSensors;->getSensorManagerProxy()Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, v3}, Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;->unregisterListener(Landroid/hardware/SensorEventListener;I)V

    .line 464
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 467
    .end local v1    # "sensorType":Ljava/lang/Integer;
    :cond_1
    return-void
.end method


# virtual methods
.method public getNumberActiveDeviceMotionSensors()I
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 151
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 152
    .local v0, "deviceMotionSensors":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 153
    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method protected gotAcceleration(DDD)V
    .locals 11
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 486
    iget-object v10, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v10

    .line 487
    :try_start_0
    iget-wide v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 488
    iget-wide v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lorg/chromium/content/browser/DeviceSensors;->nativeGotAcceleration(JDDD)V

    .line 490
    :cond_0
    monitor-exit v10

    .line 491
    return-void

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected gotAccelerationIncludingGravity(DDD)V
    .locals 11
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 494
    iget-object v10, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v10

    .line 495
    :try_start_0
    iget-wide v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 496
    iget-wide v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lorg/chromium/content/browser/DeviceSensors;->nativeGotAccelerationIncludingGravity(JDDD)V

    .line 498
    :cond_0
    monitor-exit v10

    .line 499
    return-void

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected gotLight(D)V
    .locals 7
    .param p1, "value"    # D

    .prologue
    .line 510
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v1

    .line 511
    :try_start_0
    iget-wide v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 512
    iget-wide v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    invoke-direct {p0, v2, v3, p1, p2}, Lorg/chromium/content/browser/DeviceSensors;->nativeGotLight(JD)V

    .line 514
    :cond_0
    monitor-exit v1

    .line 515
    return-void

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected gotOrientation(DDD)V
    .locals 11
    .param p1, "alpha"    # D
    .param p3, "beta"    # D
    .param p5, "gamma"    # D

    .prologue
    .line 478
    iget-object v10, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v10

    .line 479
    :try_start_0
    iget-wide v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 480
    iget-wide v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lorg/chromium/content/browser/DeviceSensors;->nativeGotOrientation(JDDD)V

    .line 482
    :cond_0
    monitor-exit v10

    .line 483
    return-void

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected gotRotationRate(DDD)V
    .locals 11
    .param p1, "alpha"    # D
    .param p3, "beta"    # D
    .param p5, "gamma"    # D

    .prologue
    .line 502
    iget-object v10, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v10

    .line 503
    :try_start_0
    iget-wide v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 504
    iget-wide v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lorg/chromium/content/browser/DeviceSensors;->nativeGotRotationRate(JDDD)V

    .line 506
    :cond_0
    monitor-exit v10

    .line 507
    return-void

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isUsingBackupSensorsForOrientation()Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 158
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mUseBackupOrientationSensors:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 217
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 221
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/DeviceSensors;->sensorChanged(I[F)V

    .line 222
    return-void
.end method

.method sensorChanged(I[F)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "values"    # [F
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 226
    packed-switch p1, :pswitch_data_0

    .line 280
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 228
    :pswitch_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    if-eqz v0, :cond_1

    .line 229
    aget v0, p2, v2

    float-to-double v2, v0

    aget v0, p2, v1

    float-to-double v4, v0

    aget v0, p2, v6

    float-to-double v6, v0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/content/browser/DeviceSensors;->gotAccelerationIncludingGravity(DDD)V

    .line 231
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mUseBackupOrientationSensors:Z

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mMagneticFieldVector:[F

    invoke-direct {p0, p2, v0}, Lorg/chromium/content/browser/DeviceSensors;->getOrientationFromGeomagneticVectors([F[F)V

    goto :goto_0

    .line 236
    :pswitch_2
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    if-eqz v0, :cond_0

    .line 237
    aget v0, p2, v2

    float-to-double v2, v0

    aget v0, p2, v1

    float-to-double v4, v0

    aget v0, p2, v6

    float-to-double v6, v0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/content/browser/DeviceSensors;->gotAcceleration(DDD)V

    goto :goto_0

    .line 241
    :pswitch_3
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    if-eqz v0, :cond_0

    .line 242
    aget v0, p2, v2

    float-to-double v2, v0

    aget v0, p2, v1

    float-to-double v4, v0

    aget v0, p2, v6

    float-to-double v6, v0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/content/browser/DeviceSensors;->gotRotationRate(DDD)V

    goto :goto_0

    .line 246
    :pswitch_4
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    if-eqz v0, :cond_0

    .line 247
    array-length v0, p2

    if-le v0, v3, :cond_3

    .line 252
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mTruncatedRotationVector:[F

    if-nez v0, :cond_2

    .line 253
    new-array v0, v3, [F

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mTruncatedRotationVector:[F

    .line 255
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mTruncatedRotationVector:[F

    invoke-static {p2, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mTruncatedRotationVector:[F

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/DeviceSensors;->getOrientationFromRotationVector([F)V

    goto :goto_0

    .line 258
    :cond_3
    invoke-direct {p0, p2}, Lorg/chromium/content/browser/DeviceSensors;->getOrientationFromRotationVector([F)V

    goto :goto_0

    .line 263
    :pswitch_5
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mUseBackupOrientationSensors:Z

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mMagneticFieldVector:[F

    if-nez v0, :cond_4

    .line 265
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mMagneticFieldVector:[F

    .line 267
    :cond_4
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mMagneticFieldVector:[F

    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mMagneticFieldVector:[F

    array-length v1, v1

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 272
    :pswitch_6
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceLightIsActive:Z

    if-eqz v0, :cond_0

    .line 273
    aget v0, p2, v2

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/DeviceSensors;->gotLight(D)V

    goto/16 :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method setSensorManagerProxy(Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;)V
    .locals 0
    .param p1, "sensorManagerProxy"    # Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 406
    iput-object p1, p0, Lorg/chromium/content/browser/DeviceSensors;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    .line 407
    return-void
.end method

.method public start(JII)Z
    .locals 7
    .param p1, "nativePtr"    # J
    .param p3, "eventType"    # I
    .param p4, "rateInMicroseconds"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "success":Z
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v2

    .line 118
    packed-switch p3, :pswitch_data_0

    .line 138
    :try_start_0
    const-string v3, "DeviceSensors"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown event type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    monitor-exit v2

    .line 145
    :goto_0
    return v1

    .line 120
    :pswitch_0
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    const/4 v3, 0x1

    invoke-direct {p0, v1, p4, v3}, Lorg/chromium/content/browser/DeviceSensors;->registerSensors(Ljava/util/Set;IZ)Z

    move-result v0

    .line 122
    if-nez v0, :cond_0

    .line 123
    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_BACKUP_SENSORS:Ljava/util/Set;

    iput-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    .line 124
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    const/4 v3, 0x1

    invoke-direct {p0, v1, p4, v3}, Lorg/chromium/content/browser/DeviceSensors;->registerSensors(Ljava/util/Set;IZ)Z

    move-result v0

    .line 126
    iput-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mUseBackupOrientationSensors:Z

    .line 128
    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/DeviceSensors;->ensureRotationStructuresAllocated()V

    .line 141
    :goto_1
    if-eqz v0, :cond_1

    .line 142
    iput-wide p1, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    .line 143
    const/4 v1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/chromium/content/browser/DeviceSensors;->setEventTypeActive(IZ)V

    .line 145
    :cond_1
    monitor-exit v2

    move v1, v0

    goto :goto_0

    .line 132
    :pswitch_1
    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    const/4 v3, 0x0

    invoke-direct {p0, v1, p4, v3}, Lorg/chromium/content/browser/DeviceSensors;->registerSensors(Ljava/util/Set;IZ)Z

    move-result v0

    .line 133
    goto :goto_1

    .line 135
    :pswitch_2
    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_LIGHT_SENSORS:Ljava/util/Set;

    const/4 v3, 0x1

    invoke-direct {p0, v1, p4, v3}, Lorg/chromium/content/browser/DeviceSensors;->registerSensors(Ljava/util/Set;IZ)Z

    move-result v0

    .line 136
    goto :goto_1

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public stop(I)V
    .locals 6
    .param p1, "eventType"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 172
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 173
    .local v1, "sensorsToRemainActive":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v3

    .line 174
    packed-switch p1, :pswitch_data_0

    .line 200
    :try_start_0
    const-string v2, "DeviceSensors"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown event type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    monitor-exit v3

    .line 212
    :goto_0
    return-void

    .line 176
    :pswitch_0
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    if-eqz v2, :cond_0

    .line 177
    sget-object v2, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 179
    :cond_0
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceLightIsActive:Z

    if-eqz v2, :cond_1

    .line 180
    sget-object v2, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_LIGHT_SENSORS:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 204
    :cond_1
    :goto_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 205
    .local v0, "sensorsToDeactivate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 206
    invoke-direct {p0, v0}, Lorg/chromium/content/browser/DeviceSensors;->unregisterSensors(Ljava/lang/Iterable;)V

    .line 207
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lorg/chromium/content/browser/DeviceSensors;->setEventTypeActive(IZ)V

    .line 208
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 209
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    .line 211
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v0    # "sensorsToDeactivate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 184
    :pswitch_1
    :try_start_1
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    if-eqz v2, :cond_3

    .line 185
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 187
    :cond_3
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceLightIsActive:Z

    if-eqz v2, :cond_1

    .line 188
    sget-object v2, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_LIGHT_SENSORS:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 192
    :pswitch_2
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    if-eqz v2, :cond_4

    .line 193
    sget-object v2, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 195
    :cond_4
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    if-eqz v2, :cond_1

    .line 196
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
