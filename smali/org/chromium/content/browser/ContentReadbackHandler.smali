.class public abstract Lorg/chromium/content/browser/ContentReadbackHandler;
.super Ljava/lang/Object;
.source "ContentReadbackHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ContentReadbackHandler$GetBitmapCallback;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mGetBitmapRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/chromium/content/browser/ContentReadbackHandler$GetBitmapCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeContentReadbackHandler:J

.field private mNextReadbackId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lorg/chromium/content/browser/ContentReadbackHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ContentReadbackHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lorg/chromium/content/browser/ContentReadbackHandler;->mNextReadbackId:I

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentReadbackHandler;->mGetBitmapRequests:Landroid/util/SparseArray;

    .line 44
    return-void
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeGetCompositorBitmap(JIJ)V
.end method

.method private native nativeGetContentBitmap(JIFLandroid/graphics/Bitmap$Config;FFFFLjava/lang/Object;)V
.end method

.method private native nativeInit()J
.end method

.method private notifyGetBitmapFinished(ILandroid/graphics/Bitmap;I)V
    .locals 4
    .param p1, "readbackId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "response"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 64
    iget-object v1, p0, Lorg/chromium/content/browser/ContentReadbackHandler;->mGetBitmapRequests:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ContentReadbackHandler$GetBitmapCallback;

    .line 65
    .local v0, "callback":Lorg/chromium/content/browser/ContentReadbackHandler$GetBitmapCallback;
    if-eqz v0, :cond_1

    .line 66
    iget-object v1, p0, Lorg/chromium/content/browser/ContentReadbackHandler;->mGetBitmapRequests:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 67
    invoke-interface {v0, p2, p3}, Lorg/chromium/content/browser/ContentReadbackHandler$GetBitmapCallback;->onFinishGetBitmap(Landroid/graphics/Bitmap;I)V

    .line 72
    :cond_0
    return-void

    .line 70
    :cond_1
    sget-boolean v1, Lorg/chromium/content/browser/ContentReadbackHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Readback finished for unregistered Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 57
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentReadbackHandler;->mNativeContentReadbackHandler:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/ContentReadbackHandler;->mNativeContentReadbackHandler:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentReadbackHandler;->nativeDestroy(J)V

    .line 58
    :cond_0
    iput-wide v2, p0, Lorg/chromium/content/browser/ContentReadbackHandler;->mNativeContentReadbackHandler:J

    .line 59
    return-void
.end method

.method public getCompositorBitmapAsync(Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/content/browser/ContentReadbackHandler$GetBitmapCallback;)V
    .locals 6
    .param p1, "windowAndroid"    # Lorg/chromium/ui/base/WindowAndroid;
    .param p2, "callback"    # Lorg/chromium/content/browser/ContentReadbackHandler$GetBitmapCallback;

    .prologue
    .line 107
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentReadbackHandler;->readyForReadback()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-interface {p2, v0, v1}, Lorg/chromium/content/browser/ContentReadbackHandler$GetBitmapCallback;->onFinishGetBitmap(Landroid/graphics/Bitmap;I)V

    .line 117
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 113
    iget v3, p0, Lorg/chromium/content/browser/ContentReadbackHandler;->mNextReadbackId:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lorg/chromium/content/browser/ContentReadbackHandler;->mNextReadbackId:I

    .line 114
    .local v3, "readbackId":I
    iget-object v0, p0, Lorg/chromium/content/browser/ContentReadbackHandler;->mGetBitmapRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    iget-wide v1, p0, Lorg/chromium/content/browser/ContentReadbackHandler;->mNativeContentReadbackHandler:J

    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getNativePointer()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/ContentReadbackHandler;->nativeGetCompositorBitmap(JIJ)V

    goto :goto_0
.end method

.method public getContentBitmapAsync(FLandroid/graphics/Rect;Lorg/chromium/content/browser/ContentViewCore;Landroid/graphics/Bitmap$Config;Lorg/chromium/content/browser/ContentReadbackHandler$GetBitmapCallback;)V
    .locals 14
    .param p1, "scale"    # F
    .param p2, "srcRect"    # Landroid/graphics/Rect;
    .param p3, "view"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p4, "config"    # Landroid/graphics/Bitmap$Config;
    .param p5, "callback"    # Lorg/chromium/content/browser/ContentReadbackHandler$GetBitmapCallback;

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentReadbackHandler;->readyForReadback()Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    const/4 v2, 0x0

    const/4 v3, 0x2

    move-object/from16 v0, p5

    invoke-interface {v0, v2, v3}, Lorg/chromium/content/browser/ContentReadbackHandler$GetBitmapCallback;->onFinishGetBitmap(Landroid/graphics/Bitmap;I)V

    .line 98
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 93
    iget v6, p0, Lorg/chromium/content/browser/ContentReadbackHandler;->mNextReadbackId:I

    add-int/lit8 v2, v6, 0x1

    iput v2, p0, Lorg/chromium/content/browser/ContentReadbackHandler;->mNextReadbackId:I

    .line 94
    .local v6, "readbackId":I
    iget-object v2, p0, Lorg/chromium/content/browser/ContentReadbackHandler;->mGetBitmapRequests:Landroid/util/SparseArray;

    move-object/from16 v0, p5

    invoke-virtual {v2, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    iget-wide v4, p0, Lorg/chromium/content/browser/ContentReadbackHandler;->mNativeContentReadbackHandler:J

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v2

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v10, v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v11, v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v12, v2

    move-object v3, p0

    move v7, p1

    move-object/from16 v8, p4

    move-object/from16 v13, p3

    invoke-direct/range {v3 .. v13}, Lorg/chromium/content/browser/ContentReadbackHandler;->nativeGetContentBitmap(JIFLandroid/graphics/Bitmap$Config;FFFFLjava/lang/Object;)V

    goto :goto_0
.end method

.method public initNativeContentReadbackHandler()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentReadbackHandler;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/ContentReadbackHandler;->mNativeContentReadbackHandler:J

    .line 51
    return-void
.end method

.method protected abstract readyForReadback()Z
.end method
