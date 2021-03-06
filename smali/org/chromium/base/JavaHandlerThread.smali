.class Lorg/chromium/base/JavaHandlerThread;
.super Ljava/lang/Object;
.source "JavaHandlerThread.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "base::android"
.end annotation


# instance fields
.field final mThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/base/JavaHandlerThread;->mThread:Landroid/os/HandlerThread;

    .line 22
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/base/JavaHandlerThread;JJ)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/base/JavaHandlerThread;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/base/JavaHandlerThread;->nativeInitializeThread(JJ)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/base/JavaHandlerThread;JJ)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/base/JavaHandlerThread;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/base/JavaHandlerThread;->nativeStopThread(JJ)V

    return-void
.end method

.method private static create(Ljava/lang/String;)Lorg/chromium/base/JavaHandlerThread;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lorg/chromium/base/JavaHandlerThread;

    invoke-direct {v0, p0}, Lorg/chromium/base/JavaHandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private native nativeInitializeThread(JJ)V
.end method

.method private native nativeStopThread(JJ)V
.end method

.method private start(JJ)V
    .locals 7
    .param p1, "nativeThread"    # J
    .param p3, "nativeEvent"    # J
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lorg/chromium/base/JavaHandlerThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 32
    new-instance v6, Landroid/os/Handler;

    iget-object v0, p0, Lorg/chromium/base/JavaHandlerThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lorg/chromium/base/JavaHandlerThread$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/chromium/base/JavaHandlerThread$1;-><init>(Lorg/chromium/base/JavaHandlerThread;JJ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    return-void
.end method

.method private stop(JJ)V
    .locals 9
    .param p1, "nativeThread"    # J
    .param p3, "nativeEvent"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    const/4 v6, 0x1

    .line 44
    .local v6, "quitSafely":Z
    :goto_0
    new-instance v7, Landroid/os/Handler;

    iget-object v0, p0, Lorg/chromium/base/JavaHandlerThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lorg/chromium/base/JavaHandlerThread$2;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/chromium/base/JavaHandlerThread$2;-><init>(Lorg/chromium/base/JavaHandlerThread;JJZ)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    if-eqz v6, :cond_0

    iget-object v0, p0, Lorg/chromium/base/JavaHandlerThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 52
    :cond_0
    return-void

    .line 43
    .end local v6    # "quitSafely":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method
