.class public Lorg/xwalk/core/internal/XWalkViewInternal;
.super Landroid/widget/FrameLayout;
.source "XWalkViewInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/internal/XWalkViewInternal$XWalkActivityStateListener;
    }
.end annotation

.annotation build Lorg/xwalk/core/internal/XWalkAPI;
    createExternally = true
    extendClass = Landroid/widget/FrameLayout;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final INPUT_FILE_REQUEST_CODE:I = 0x1

.field private static final PATH_PREFIX:Ljava/lang/String; = "file:"

.field static final PLAYSTORE_DETAIL_URI:Ljava/lang/String; = "market://details?id="

.field public static final RELOAD_IGNORE_CACHE:I = 0x1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field public static final RELOAD_NORMAL:I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static sInitialized:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityStateListener:Lorg/xwalk/core/internal/XWalkViewInternal$XWalkActivityStateListener;

.field private mCameraPhotoPath:Ljava/lang/String;

.field private mContent:Lorg/xwalk/core/internal/XWalkContent;

.field private mContext:Landroid/content/Context;

.field private mFilePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mIsHidden:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    const-class v0, Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/internal/XWalkViewInternal;->$assertionsDisabled:Z

    .line 169
    const-class v0, Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/xwalk/core/internal/XWalkViewInternal;->TAG:Ljava/lang/String;

    .line 172
    sput-boolean v1, Lorg/xwalk/core/internal/XWalkViewInternal;->sInitialized:Z

    return-void

    :cond_0
    move v0, v1

    .line 149
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        postWrapperLines = {
            "        addView((FrameLayout)bridge, new FrameLayout.LayoutParams(",
            "                FrameLayout.LayoutParams.MATCH_PARENT,",
            "                FrameLayout.LayoutParams.MATCH_PARENT));",
            "        removeViewAt(0);"
        }
        preWrapperLines = {
            "        super(${param1}, null);",
            "        SurfaceView surfaceView = new SurfaceView(${param1});",
            "        surfaceView.setLayoutParams(new ViewGroup.LayoutParams(0, 0));",
            "        addView(surfaceView);"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 219
    invoke-direct {p0, p1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 221
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 222
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mActivity:Landroid/app/Activity;

    .line 223
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    .line 225
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->init(Landroid/content/Context;Landroid/app/Activity;)V

    .line 226
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->initXWalkContent(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        postWrapperLines = {
            "        addView((FrameLayout)bridge, new FrameLayout.LayoutParams(",
            "                FrameLayout.LayoutParams.MATCH_PARENT,",
            "                FrameLayout.LayoutParams.MATCH_PARENT));",
            "        removeViewAt(0);"
        }
        preWrapperLines = {
            "        super(${param1}, null);",
            "        SurfaceView surfaceView = new SurfaceView(${param1});",
            "        surfaceView.setLayoutParams(new ViewGroup.LayoutParams(0, 0));",
            "        addView(surfaceView);"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 274
    invoke-direct {p0, p1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 276
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 278
    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mActivity:Landroid/app/Activity;

    .line 279
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    .line 281
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->init(Landroid/content/Context;Landroid/app/Activity;)V

    .line 282
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->initXWalkContent(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 283
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        postWrapperLines = {
            "        addView((FrameLayout)bridge, new FrameLayout.LayoutParams(",
            "                FrameLayout.LayoutParams.MATCH_PARENT,",
            "                FrameLayout.LayoutParams.MATCH_PARENT));",
            "        removeViewAt(0);"
        }
        preWrapperLines = {
            "        super(${param1}, ${param2});",
            "        SurfaceView surfaceView = new SurfaceView(${param1});",
            "        surfaceView.setLayoutParams(new ViewGroup.LayoutParams(0, 0));",
            "        addView(surfaceView);"
        }
    .end annotation

    .prologue
    .line 246
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 248
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 249
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mActivity:Landroid/app/Activity;

    .line 250
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    .line 252
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->init(Landroid/content/Context;Landroid/app/Activity;)V

    .line 253
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;->initXWalkContent(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 254
    return-void
.end method

.method static synthetic access$000(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/app/Activity;I)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # I

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;->onActivityStateChange(Landroid/app/Activity;I)V

    return-void
.end method

.method private static checkThreadSafety()V
    .locals 3

    .prologue
    .line 996
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 997
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: A XWalkViewInternal method was called on thread \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "All XWalkViewInternal methods must be called on the UI thread. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 1001
    .local v0, "throwable":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1003
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method private createImageFile()Ljava/io/File;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1180
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 1181
    .local v2, "state":Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1182
    sget-object v6, Lorg/xwalk/core/internal/XWalkViewInternal;->TAG:Ljava/lang/String;

    const-string v7, "External storage is not mounted."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    :goto_0
    return-object v5

    .line 1187
    :cond_0
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd_HHmmss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1188
    .local v4, "timeStamp":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JPEG_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1189
    .local v1, "imageFileName":Ljava/lang/String;
    sget-object v6, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v6}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 1191
    .local v3, "storageDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1193
    :cond_1
    :try_start_0
    const-string v6, ".jpg"

    invoke-static {v1, v6, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 1194
    :catch_0
    move-exception v0

    .line 1196
    .local v0, "ex":Ljava/io/IOException;
    sget-object v6, Lorg/xwalk/core/internal/XWalkViewInternal;->TAG:Ljava/lang/String;

    const-string v7, "Unable to create Image File"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private deleteImageFile()Z
    .locals 4

    .prologue
    .line 1202
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mCameraPhotoPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mCameraPhotoPath:Ljava/lang/String;

    const-string v3, "file:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1203
    :cond_0
    const/4 v2, 0x0

    .line 1207
    :goto_0
    return v2

    .line 1205
    :cond_1
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mCameraPhotoPath:Ljava/lang/String;

    const-string v3, "file:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v1, v2, v3

    .line 1206
    .local v1, "filePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1207
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0
.end method

.method private static init(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 286
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkViewInternal;->sInitialized:Z

    if-eqz v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 288
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lorg/xwalk/core/internal/XWalkViewDelegate;->init(Landroid/content/Context;Landroid/content/Context;)V

    .line 292
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatusManager;->init(Landroid/app/Application;)V

    .line 296
    invoke-static {p1}, Lorg/chromium/net/NetworkChangeNotifier;->init(Landroid/content/Context;)Lorg/chromium/net/NetworkChangeNotifier;

    .line 297
    invoke-static {v1}, Lorg/chromium/net/NetworkChangeNotifier;->setAutoDetectConnectivityState(Z)V

    .line 301
    invoke-static {p1}, Lorg/chromium/base/ApplicationStatusManager;->informActivityStarted(Landroid/app/Activity;)V

    .line 303
    sput-boolean v1, Lorg/xwalk/core/internal/XWalkViewInternal;->sInitialized:Z

    goto :goto_0
.end method

.method private initXWalkContent(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 337
    new-instance v2, Lorg/xwalk/core/internal/XWalkViewInternal$XWalkActivityStateListener;

    invoke-direct {v2, p0, p0}, Lorg/xwalk/core/internal/XWalkViewInternal$XWalkActivityStateListener;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkViewInternal;)V

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mActivityStateListener:Lorg/xwalk/core/internal/XWalkViewInternal$XWalkActivityStateListener;

    .line 338
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mActivityStateListener:Lorg/xwalk/core/internal/XWalkViewInternal$XWalkActivityStateListener;

    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/chromium/base/ApplicationStatus;->registerStateListenerForActivity(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;Landroid/app/Activity;)V

    .line 341
    iput-boolean v4, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mIsHidden:Z

    .line 342
    new-instance v2, Lorg/xwalk/core/internal/XWalkContent;

    invoke-direct {v2, p1, p2, p0}, Lorg/xwalk/core/internal/XWalkContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/xwalk/core/internal/XWalkViewInternal;)V

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    .line 348
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v2}, Lorg/xwalk/core/internal/XWalkContent;->resumeTimers()V

    .line 350
    new-instance v2, Lorg/xwalk/core/internal/XWalkClient;

    invoke-direct {v2, p0}, Lorg/xwalk/core/internal/XWalkClient;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setXWalkClient(Lorg/xwalk/core/internal/XWalkClient;)V

    .line 353
    new-instance v2, Lorg/xwalk/core/internal/XWalkWebChromeClient;

    invoke-direct {v2, p0}, Lorg/xwalk/core/internal/XWalkWebChromeClient;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setXWalkWebChromeClient(Lorg/xwalk/core/internal/XWalkWebChromeClient;)V

    .line 357
    new-instance v2, Lorg/xwalk/core/internal/XWalkUIClientInternal;

    invoke-direct {v2, p0}, Lorg/xwalk/core/internal/XWalkUIClientInternal;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V

    .line 358
    new-instance v2, Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    invoke-direct {v2, p0}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V

    .line 360
    new-instance v2, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;

    invoke-direct {v2, p1}, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setDownloadListener(Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;)V

    .line 361
    new-instance v2, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;

    invoke-direct {v2, p1}, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setNavigationHandler(Lorg/xwalk/core/internal/XWalkNavigationHandler;)V

    .line 362
    new-instance v2, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;

    invoke-direct {v2, p1, p0}, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;-><init>(Landroid/content/Context;Lorg/xwalk/core/internal/XWalkViewInternal;)V

    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setNotificationService(Lorg/xwalk/core/internal/XWalkNotificationService;)V

    .line 364
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v2

    const-string v3, "disable-xwalk-extensions"

    invoke-virtual {v2, v3}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 365
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/xwalk/core/internal/extension/BuiltinXWalkExtensions;->load(Landroid/content/Context;Landroid/app/Activity;)V

    .line 370
    :goto_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkPathHelper;->initialize()V

    .line 371
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/xwalk/core/internal/XWalkPathHelper;->setCacheDirectory(Ljava/lang/String;)V

    .line 374
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "state":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 377
    :cond_0
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 378
    .local v0, "extCacheDir":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 379
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/xwalk/core/internal/XWalkPathHelper;->setExternalCacheDirectory(Ljava/lang/String;)V

    .line 382
    .end local v0    # "extCacheDir":Ljava/io/File;
    :cond_1
    return-void

    .line 367
    .end local v1    # "state":Ljava/lang/String;
    :cond_2
    const-string v2, "enable-extensions"

    invoke-static {v2, v4}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->setValue(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private onActivityStateChange(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newState"    # I

    .prologue
    .line 1105
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkViewInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1106
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1125
    :goto_0
    return-void

    .line 1108
    :pswitch_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->onShow()V

    goto :goto_0

    .line 1111
    :pswitch_1
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->pauseTimers()V

    goto :goto_0

    .line 1114
    :pswitch_2
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->resumeTimers()V

    goto :goto_0

    .line 1117
    :pswitch_3
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->onDestroy()V

    goto :goto_0

    .line 1120
    :pswitch_4
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->onHide()V

    goto :goto_0

    .line 1106
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 509
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 512
    :goto_0
    return-void

    .line 510
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 511
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContent;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method canGoBack()Z
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 954
    :goto_0
    return v0

    .line 953
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 954
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->canGoBack()Z

    move-result v0

    goto :goto_0
.end method

.method canGoForward()Z
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 966
    :goto_0
    return v0

    .line 965
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 966
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->canGoForward()Z

    move-result v0

    goto :goto_0
.end method

.method public canZoomIn()Z
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 913
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 915
    :goto_0
    return v0

    .line 914
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 915
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->canZoomIn()Z

    move-result v0

    goto :goto_0
.end method

.method public canZoomOut()Z
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 925
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 927
    :goto_0
    return v0

    .line 926
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 927
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->canZoomOut()Z

    move-result v0

    goto :goto_0
.end method

.method public clearCache(Z)V
    .locals 1
    .param p1, "includeDiskFiles"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 535
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 538
    :goto_0
    return-void

    .line 536
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 537
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->clearCache(Z)V

    goto :goto_0
.end method

.method clearHistory()V
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 979
    :goto_0
    return-void

    .line 977
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 978
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->clearHistory()V

    goto :goto_0
.end method

.method public completeWindowCreation(Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 2
    .param p1, "newXWalkView"    # Lorg/xwalk/core/internal/XWalkViewInternal;

    .prologue
    .line 333
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/xwalk/core/internal/XWalkContent;->supplyContentsForPopup(Lorg/xwalk/core/internal/XWalkContent;)V

    .line 334
    return-void

    .line 333
    :cond_0
    iget-object v0, p1, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    goto :goto_0
.end method

.method destroy()V
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 987
    :goto_0
    return-void

    .line 983
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mActivityStateListener:Lorg/xwalk/core/internal/XWalkViewInternal$XWalkActivityStateListener;

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->unregisterActivityStateListener(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;)V

    .line 984
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mActivityStateListener:Lorg/xwalk/core/internal/XWalkViewInternal$XWalkActivityStateListener;

    .line 985
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->destroy()V

    .line 986
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->disableRemoteDebugging()V

    goto :goto_0
.end method

.method disableRemoteDebugging()V
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 993
    :goto_0
    return-void

    .line 991
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 992
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->disableRemoteDebugging()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1088
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1093
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->hasEnteredFullscreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1094
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->leaveFullscreen()V

    .line 1101
    :goto_0
    return v0

    .line 1096
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1097
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->goBack()V

    goto :goto_0

    .line 1101
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public enableRemoteDebugging()V
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 850
    :goto_0
    return-void

    .line 848
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 849
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->enableRemoteDebugging()V

    goto :goto_0
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 522
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 524
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContent;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method

.method public getAPIVersion()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 730
    const-string v0, "5.0"

    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mActivity:Landroid/app/Activity;

    .line 321
    :goto_0
    return-object v0

    .line 315
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 316
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    .line 320
    :cond_1
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkViewInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 321
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentID()I
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 948
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getRoutingID()I

    move-result v0

    goto :goto_0
.end method

.method public getNavigationHistory()Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 494
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 496
    :goto_0
    return-object v0

    .line 495
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 496
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getNavigationHistory()Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    move-result-object v0

    goto :goto_0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 483
    :goto_0
    return-object v0

    .line 482
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 483
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemoteDebuggingUrl()Landroid/net/Uri;
    .locals 3
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 860
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v2, :cond_1

    .line 865
    :cond_0
    :goto_0
    return-object v1

    .line 861
    :cond_1
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 862
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v2}, Lorg/xwalk/core/internal/XWalkContent;->getRemoteDebuggingUrl()Ljava/lang/String;

    move-result-object v0

    .line 863
    .local v0, "wsUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 865
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public getSettings()Lorg/xwalk/core/internal/XWalkSettings;
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 828
    :goto_0
    return-object v0

    .line 827
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 828
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getSettings()Lorg/xwalk/core/internal/XWalkSettings;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 469
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 471
    :goto_0
    return-object v0

    .line 470
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 471
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 458
    :goto_0
    return-object v0

    .line 457
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 458
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getXWalkContentForTest()Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getContentViewCoreForTest()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    return-object v0
.end method

.method public getXWalkVersion()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 741
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 742
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getXWalkVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method goBack()V
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 961
    :goto_0
    return-void

    .line 959
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 960
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->goBack()V

    goto :goto_0
.end method

.method goForward()V
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 973
    :goto_0
    return-void

    .line 971
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 972
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->goForward()V

    goto :goto_0
.end method

.method public hasEnteredFullscreen()Z
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 547
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 549
    :goto_0
    return v0

    .line 548
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 549
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->hasEnteredFullscreen()Z

    move-result v0

    goto :goto_0
.end method

.method isOwnerActivityRunning()Z
    .locals 2

    .prologue
    .line 1006
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/base/ApplicationStatus;->getStateForActivity(Landroid/app/Activity;)I

    move-result v0

    .line 1007
    .local v0, "status":I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    .line 1008
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public leaveFullscreen()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 559
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 562
    :goto_0
    return-void

    .line 560
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 561
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->exitFullscreen()V

    goto :goto_0
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 401
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 403
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContent;->loadUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadAppFromManifest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 420
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 423
    :goto_0
    return-void

    .line 421
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 422
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContent;->loadAppFromManifest(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method navigateTo(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1012
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1014
    :goto_0
    return-void

    .line 1013
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->navigateTo(I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 651
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v2, :cond_0

    .line 680
    :goto_0
    return-void

    .line 652
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_6

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mFilePathCallback:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_6

    .line 653
    const/4 v1, 0x0

    .line 656
    .local v1, "results":Landroid/net/Uri;
    const/4 v2, -0x1

    if-ne v2, p2, :cond_5

    .line 658
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_3

    .line 661
    :cond_1
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mCameraPhotoPath:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 662
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mCameraPhotoPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 675
    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mFilePathCallback:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 676
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mFilePathCallback:Landroid/webkit/ValueCallback;

    goto :goto_0

    .line 665
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, "dataString":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 667
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 669
    :cond_4
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->deleteImageFile()Z

    goto :goto_1

    .line 671
    .end local v0    # "dataString":Ljava/lang/String;
    :cond_5
    if-nez p2, :cond_2

    .line 672
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->deleteImageFile()Z

    goto :goto_1

    .line 679
    .end local v1    # "results":Landroid/net/Uri;
    :cond_6
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v2, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkContent;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 939
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 636
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->destroy()V

    .line 637
    return-void
.end method

.method public onHide()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 608
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mIsHidden:Z

    if-eqz v0, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->onPause()V

    .line 610
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mIsHidden:Z

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 692
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 693
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->onNewIntent(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onShow()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 623
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mIsHidden:Z

    if-nez v0, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->onResume()V

    .line 625
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mIsHidden:Z

    goto :goto_0
.end method

.method public pauseTimers()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 576
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 579
    :goto_0
    return-void

    .line 577
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 578
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->pauseTimers()V

    goto :goto_0
.end method

.method public reload(I)V
    .locals 1
    .param p1, "mode"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 435
    :goto_0
    return-void

    .line 433
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 434
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->reload(I)V

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "inState"    # Landroid/os/Bundle;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 717
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v1, :cond_1

    .line 719
    :cond_0
    :goto_0
    return v0

    .line 718
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v1, p1}, Lorg/xwalk/core/internal/XWalkContent;->restoreState(Landroid/os/Bundle;)Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resumeTimers()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 593
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 596
    :goto_0
    return-void

    .line 594
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 595
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->resumeTimers()V

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 704
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 706
    :goto_0
    return v0

    .line 705
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->saveState(Landroid/os/Bundle;)Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    .line 706
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAcceptLanguages(Ljava/lang/String;)V
    .locals 1
    .param p1, "acceptLanguages"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 815
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getSettings()Lorg/xwalk/core/internal/XWalkSettings;

    move-result-object v0

    .line 816
    .local v0, "settings":Lorg/xwalk/core/internal/XWalkSettings;
    if-nez v0, :cond_0

    .line 819
    :goto_0
    return-void

    .line 817
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 818
    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettings;->setAcceptLanguages(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 777
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 780
    :goto_0
    return-void

    .line 778
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 779
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setDownloadListener(Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;)V
    .locals 1
    .param p1, "listener"    # Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1060
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1063
    :goto_0
    return-void

    .line 1061
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1062
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setDownloadListener(Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;)V

    goto :goto_0
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 2
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 788
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 789
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 793
    :goto_0
    return-void

    .line 791
    :cond_0
    sget-object v0, Lorg/xwalk/core/internal/XWalkViewInternal;->TAG:Ljava/lang/String;

    const-string v1, "LAYER_TYPE_SOFTWARE is not supported by XwalkView"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setNavigationHandler(Lorg/xwalk/core/internal/XWalkNavigationHandler;)V
    .locals 1
    .param p1, "handler"    # Lorg/xwalk/core/internal/XWalkNavigationHandler;

    .prologue
    .line 1069
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1072
    :goto_0
    return-void

    .line 1070
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1071
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setNavigationHandler(Lorg/xwalk/core/internal/XWalkNavigationHandler;)V

    goto :goto_0
.end method

.method public setNetworkAvailable(Z)V
    .locals 1
    .param p1, "networkUp"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 837
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 840
    :goto_0
    return-void

    .line 838
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 839
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setNetworkAvailable(Z)V

    goto :goto_0
.end method

.method public setNotificationService(Lorg/xwalk/core/internal/XWalkNotificationService;)V
    .locals 1
    .param p1, "service"    # Lorg/xwalk/core/internal/XWalkNotificationService;

    .prologue
    .line 1078
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1081
    :goto_0
    return-void

    .line 1079
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1080
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setNotificationService(Lorg/xwalk/core/internal/XWalkNotificationService;)V

    goto :goto_0
.end method

.method setOverlayVideoMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1017
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setOverlayVideoMode(Z)V

    .line 1018
    return-void
.end method

.method public setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V
    .locals 1
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkResourceClientInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        reservable = true
    .end annotation

    .prologue
    .line 766
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 769
    :goto_0
    return-void

    .line 767
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 768
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V

    goto :goto_0
.end method

.method public setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V
    .locals 1
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkUIClientInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        reservable = true
    .end annotation

    .prologue
    .line 753
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 756
    :goto_0
    return-void

    .line 754
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 755
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V

    goto :goto_0
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 802
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getSettings()Lorg/xwalk/core/internal/XWalkSettings;

    move-result-object v0

    .line 803
    .local v0, "settings":Lorg/xwalk/core/internal/XWalkSettings;
    if-nez v0, :cond_0

    .line 806
    :goto_0
    return-void

    .line 804
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 805
    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setXWalkClient(Lorg/xwalk/core/internal/XWalkClient;)V
    .locals 1
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkClient;

    .prologue
    .line 1037
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1040
    :goto_0
    return-void

    .line 1038
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1039
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setXWalkClient(Lorg/xwalk/core/internal/XWalkClient;)V

    goto :goto_0
.end method

.method public setXWalkWebChromeClient(Lorg/xwalk/core/internal/XWalkWebChromeClient;)V
    .locals 1
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkWebChromeClient;

    .prologue
    .line 1046
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1049
    :goto_0
    return-void

    .line 1047
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1048
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setXWalkWebChromeClient(Lorg/xwalk/core/internal/XWalkWebChromeClient;)V

    goto :goto_0
.end method

.method public setZOrderOnTop(Z)V
    .locals 1
    .param p1, "onTop"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1028
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1030
    :goto_0
    return-void

    .line 1029
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setZOrderOnTop(Z)V

    goto :goto_0
.end method

.method public showFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "uploadFile":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const/4 v9, 0x1

    .line 1139
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mFilePathCallback:Landroid/webkit/ValueCallback;

    .line 1141
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1142
    .local v6, "takePictureIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1144
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->createImageFile()Ljava/io/File;

    move-result-object v4

    .line 1146
    .local v4, "photoFile":Ljava/io/File;
    if-eqz v4, :cond_2

    .line 1147
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mCameraPhotoPath:Ljava/lang/String;

    .line 1148
    const-string v7, "PhotoPath"

    iget-object v8, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mCameraPhotoPath:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1149
    const-string v7, "output"

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1156
    .end local v4    # "photoFile":Ljava/io/File;
    :cond_0
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1157
    .local v2, "contentSelectionIntent":Landroid/content/Intent;
    const-string v7, "android.intent.category.OPENABLE"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1158
    const-string v7, "*/*"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1160
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1161
    .local v0, "camcorder":Landroid/content/Intent;
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1163
    .local v5, "soundRecorder":Landroid/content/Intent;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1164
    .local v3, "extraIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    if-eqz v6, :cond_1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1165
    :cond_1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.CHOOSER"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1169
    .local v1, "chooserIntent":Landroid/content/Intent;
    const-string v7, "android.intent.extra.INTENT"

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1170
    const-string v7, "android.intent.extra.TITLE"

    const-string v8, "Choose an action"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1171
    const-string v8, "android.intent.extra.INITIAL_INTENTS"

    const/4 v7, 0x0

    new-array v7, v7, [Landroid/content/Intent;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/os/Parcelable;

    invoke-virtual {v1, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1173
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v1, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1174
    return v9

    .line 1152
    .end local v0    # "camcorder":Landroid/content/Intent;
    .end local v1    # "chooserIntent":Landroid/content/Intent;
    .end local v2    # "contentSelectionIntent":Landroid/content/Intent;
    .end local v3    # "extraIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v5    # "soundRecorder":Landroid/content/Intent;
    .restart local v4    # "photoFile":Ljava/io/File;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 446
    :goto_0
    return-void

    .line 444
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 445
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->stopLoading()V

    goto :goto_0
.end method

.method public zoomBy(F)V
    .locals 1
    .param p1, "factor"    # F
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 901
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 904
    :goto_0
    return-void

    .line 902
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 903
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->zoomBy(F)V

    goto :goto_0
.end method

.method public zoomIn()Z
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 875
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 877
    :goto_0
    return v0

    .line 876
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 877
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->zoomIn()Z

    move-result v0

    goto :goto_0
.end method

.method public zoomOut()Z
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 887
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 889
    :goto_0
    return v0

    .line 888
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 889
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->zoomOut()Z

    move-result v0

    goto :goto_0
.end method
