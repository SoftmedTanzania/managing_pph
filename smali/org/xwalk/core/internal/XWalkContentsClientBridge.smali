.class Lorg/xwalk/core/internal/XWalkContentsClientBridge;
.super Lorg/xwalk/core/internal/XWalkContentsClient;
.source "XWalkContentsClientBridge.java"

# interfaces
.implements Lorg/chromium/content/browser/ContentViewDownloadDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/internal/XWalkContentsClientBridge$5;,
        Lorg/xwalk/core/internal/XWalkContentsClientBridge$InterceptNavigationDelegateImpl;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "xwalk"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NEW_ICON_DOWNLOAD:I = 0x65

.field private static final NEW_XWALKVIEW_CREATED:I = 0x64

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDownloadListener:Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;

.field private mFavicon:Landroid/graphics/Bitmap;

.field private mInterceptNavigationDelegate:Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;

.field private mIsFullscreen:Z

.field private mLoadStatus:Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

.field private mLoadingUrl:Ljava/lang/String;

.field protected mNativeContentsClientBridge:J

.field private mNavigationHandler:Lorg/xwalk/core/internal/XWalkNavigationHandler;

.field private mNotificationService:Lorg/xwalk/core/internal/XWalkNotificationService;

.field private mPageLoadListener:Lorg/xwalk/core/internal/PageLoadListener;

.field private mPageScaleFactor:F

.field private mUiThreadHandler:Landroid/os/Handler;

.field private mXWalkClient:Lorg/xwalk/core/internal/XWalkClient;

.field private mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

.field private mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

.field private mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

.field private mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->$assertionsDisabled:Z

    .line 55
    const-class v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->TAG:Ljava/lang/String;

    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 1
    .param p1, "xwView"    # Lorg/xwalk/core/internal/XWalkViewInternal;

    .prologue
    .line 105
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClient;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mIsFullscreen:Z

    .line 76
    sget-object v0, Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;->FINISHED:Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLoadStatus:Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLoadingUrl:Ljava/lang/String;

    .line 106
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    .line 107
    new-instance v0, Lorg/chromium/net/DefaultAndroidKeyStore;

    invoke-direct {v0}, Lorg/chromium/net/DefaultAndroidKeyStore;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLocalKeyStore:Lorg/chromium/net/DefaultAndroidKeyStore;

    .line 108
    new-instance v0, Lorg/xwalk/core/internal/ClientCertLookupTable;

    invoke-direct {v0}, Lorg/xwalk/core/internal/ClientCertLookupTable;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLookupTable:Lorg/xwalk/core/internal/ClientCertLookupTable;

    .line 109
    new-instance v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$InterceptNavigationDelegateImpl;

    invoke-direct {v0, p0, p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge$InterceptNavigationDelegateImpl;-><init>(Lorg/xwalk/core/internal/XWalkContentsClientBridge;Lorg/xwalk/core/internal/XWalkContentsClient;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mInterceptNavigationDelegate:Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;

    .line 111
    new-instance v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$1;

    invoke-direct {v0, p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge$1;-><init>(Lorg/xwalk/core/internal/XWalkContentsClientBridge;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mUiThreadHandler:Landroid/os/Handler;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lorg/xwalk/core/internal/XWalkContentsClientBridge;)Lorg/xwalk/core/internal/XWalkNavigationHandler;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNavigationHandler:Lorg/xwalk/core/internal/XWalkNavigationHandler;

    return-object v0
.end method

.method static synthetic access$100(Lorg/xwalk/core/internal/XWalkContentsClientBridge;)Lorg/xwalk/core/internal/XWalkViewInternal;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    return-object v0
.end method

.method static synthetic access$200(Lorg/xwalk/core/internal/XWalkContentsClientBridge;JLjava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContentsClientBridge;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->nativeDownloadIcon(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lorg/xwalk/core/internal/XWalkContentsClientBridge;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mUiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lorg/xwalk/core/internal/XWalkContentsClientBridge;JIII)V
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContentsClientBridge;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 52
    invoke-direct/range {p0 .. p5}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->nativeOnFilesNotSelected(JIII)V

    return-void
.end method

.method static synthetic access$500(Lorg/xwalk/core/internal/XWalkContentsClientBridge;JIIILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContentsClientBridge;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct/range {p0 .. p7}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->nativeOnFilesSelected(JIIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lorg/xwalk/core/internal/XWalkContentsClientBridge;ZI)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContentsClientBridge;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->proceedSslError(ZI)V

    return-void
.end method

.method private allowCertificateError(I[BLjava/lang/String;I)Z
    .locals 4
    .param p1, "certError"    # I
    .param p2, "derBytes"    # [B
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "id"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 641
    invoke-static {p2}, Lorg/xwalk/core/internal/SslUtil;->getCertificateFromDerBytes([B)Landroid/net/http/SslCertificate;

    move-result-object v1

    .line 642
    .local v1, "cert":Landroid/net/http/SslCertificate;
    if-nez v1, :cond_0

    .line 644
    const/4 v3, 0x0

    .line 654
    :goto_0
    return v3

    .line 646
    :cond_0
    invoke-static {p1, v1, p3}, Lorg/xwalk/core/internal/SslUtil;->sslErrorFromNetErrorCode(ILandroid/net/http/SslCertificate;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v2

    .line 647
    .local v2, "sslError":Landroid/net/http/SslError;
    new-instance v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$4;

    invoke-direct {v0, p0, p4}, Lorg/xwalk/core/internal/XWalkContentsClientBridge$4;-><init>(Lorg/xwalk/core/internal/XWalkContentsClientBridge;I)V

    .line 653
    .local v0, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0, v2}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->onReceivedSslError(Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V

    .line 654
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private cancelNotification(I)V
    .locals 1
    .param p1, "notificationId"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 761
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNotificationService:Lorg/xwalk/core/internal/XWalkNotificationService;

    invoke-interface {v0, p1}, Lorg/xwalk/core/internal/XWalkNotificationService;->cancelNotification(I)V

    .line 762
    return-void
.end method

.method private handleJsAlert(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "id"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 710
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    new-instance v6, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;

    invoke-direct {v6, p0, p3}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;-><init>(Lorg/xwalk/core/internal/XWalkContentsClientBridge;I)V

    .line 713
    .local v6, "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    sget-object v2, Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;->JAVASCRIPT_ALERT:Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;

    const-string v5, ""

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJavascriptModalDialog(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z

    .line 717
    .end local v6    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;
    :cond_0
    return-void
.end method

.method private handleJsBeforeUnload(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "id"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 743
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    new-instance v6, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;

    invoke-direct {v6, p0, p3}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;-><init>(Lorg/xwalk/core/internal/XWalkContentsClientBridge;I)V

    .line 746
    .local v6, "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    sget-object v2, Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;->JAVASCRIPT_BEFOREUNLOAD:Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;

    const-string v5, ""

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJavascriptModalDialog(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z

    .line 750
    .end local v6    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;
    :cond_0
    return-void
.end method

.method private handleJsConfirm(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "id"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 721
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    new-instance v6, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;

    invoke-direct {v6, p0, p3}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;-><init>(Lorg/xwalk/core/internal/XWalkContentsClientBridge;I)V

    .line 724
    .local v6, "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    sget-object v2, Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;->JAVASCRIPT_CONFIRM:Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;

    const-string v5, ""

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJavascriptModalDialog(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z

    .line 728
    .end local v6    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;
    :cond_0
    return-void
.end method

.method private handleJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;
    .param p4, "id"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 732
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    new-instance v6, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;

    invoke-direct {v6, p0, p4}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;-><init>(Lorg/xwalk/core/internal/XWalkContentsClientBridge;I)V

    .line 735
    .local v6, "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    sget-object v2, Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;->JAVASCRIPT_PROMPT:Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJavascriptModalDialog(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z

    .line 739
    .end local v6    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;
    :cond_0
    return-void
.end method

.method private isOwnerActivityRunning()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkViewInternal;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeCancelJsResult(JI)V
.end method

.method private native nativeConfirmJsResult(JILjava/lang/String;)V
.end method

.method private native nativeDownloadIcon(JLjava/lang/String;)V
.end method

.method private native nativeExitFullscreen(JJ)V
.end method

.method private native nativeNotificationClicked(JI)V
.end method

.method private native nativeNotificationClosed(JIZ)V
.end method

.method private native nativeNotificationDisplayed(JI)V
.end method

.method private native nativeOnFilesNotSelected(JIII)V
.end method

.method private native nativeOnFilesSelected(JIIILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeProceedSslError(JZI)V
.end method

.method private native nativeProvideClientCertificateResponse(JI[[BLorg/chromium/net/AndroidPrivateKey;)V
.end method

.method private proceedSslError(ZI)V
    .locals 4
    .param p1, "proceed"    # Z
    .param p2, "id"    # I

    .prologue
    .line 704
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 706
    :goto_0
    return-void

    .line 705
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->nativeProceedSslError(JZI)V

    goto :goto_0
.end method

.method private selectClientCertificate(I[Ljava/lang/String;[[BLjava/lang/String;I)V
    .locals 13
    .param p1, "id"    # I
    .param p2, "keyTypes"    # [Ljava/lang/String;
    .param p3, "encodedPrincipals"    # [[B
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 660
    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 661
    sget-boolean v3, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-wide v4, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 663
    :cond_0
    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLookupTable:Lorg/xwalk/core/internal/ClientCertLookupTable;

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v3, v0, v1}, Lorg/xwalk/core/internal/ClientCertLookupTable;->getCertData(Ljava/lang/String;I)Lorg/xwalk/core/internal/ClientCertLookupTable$Cert;

    move-result-object v2

    .line 665
    .local v2, "cert":Lorg/xwalk/core/internal/ClientCertLookupTable$Cert;
    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLookupTable:Lorg/xwalk/core/internal/ClientCertLookupTable;

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v3, v0, v1}, Lorg/xwalk/core/internal/ClientCertLookupTable;->isDenied(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 666
    iget-wide v4, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    const/4 v7, 0x0

    check-cast v7, [[B

    const/4 v8, 0x0

    move-object v3, p0

    move v6, p1

    invoke-direct/range {v3 .. v8}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->nativeProvideClientCertificateResponse(JI[[BLorg/chromium/net/AndroidPrivateKey;)V

    .line 701
    .end local v2    # "cert":Lorg/xwalk/core/internal/ClientCertLookupTable$Cert;
    :cond_1
    :goto_0
    return-void

    .line 671
    .restart local v2    # "cert":Lorg/xwalk/core/internal/ClientCertLookupTable$Cert;
    :cond_2
    if-eqz v2, :cond_3

    .line 672
    iget-wide v4, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    iget-object v7, v2, Lorg/xwalk/core/internal/ClientCertLookupTable$Cert;->certChain:[[B

    iget-object v8, v2, Lorg/xwalk/core/internal/ClientCertLookupTable$Cert;->privateKey:Lorg/chromium/net/AndroidPrivateKey;

    move-object v3, p0

    move v6, p1

    invoke-direct/range {v3 .. v8}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->nativeProvideClientCertificateResponse(JI[[BLorg/chromium/net/AndroidPrivateKey;)V

    goto :goto_0

    .line 679
    :cond_3
    const/4 v12, 0x0

    .line 681
    .local v12, "principals":[Ljava/security/Principal;
    move-object/from16 v0, p3

    array-length v3, v0

    if-lez v3, :cond_4

    .line 682
    move-object/from16 v0, p3

    array-length v3, v0

    new-array v12, v3, [Ljavax/security/auth/x500/X500Principal;

    .line 684
    const/4 v11, 0x0

    .local v11, "n":I
    :goto_1
    move-object/from16 v0, p3

    array-length v3, v0

    if-ge v11, v3, :cond_4

    .line 686
    :try_start_0
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    aget-object v4, p3, v11

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    aput-object v3, v12, v11
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 687
    :catch_0
    move-exception v9

    .line 688
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while decoding issuers list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-wide v4, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    const/4 v7, 0x0

    check-cast v7, [[B

    const/4 v8, 0x0

    move-object v3, p0

    move v6, p1

    invoke-direct/range {v3 .. v8}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->nativeProvideClientCertificateResponse(JI[[BLorg/chromium/net/AndroidPrivateKey;)V

    goto :goto_0

    .line 697
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .end local v11    # "n":I
    :cond_4
    new-instance v10, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v10, p0, p1, v0, v1}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;-><init>(Lorg/xwalk/core/internal/XWalkContentsClientBridge;ILjava/lang/String;I)V

    .line 699
    .local v10, "handler":Lorg/xwalk/core/internal/ClientCertRequestInternal;
    invoke-virtual {p0, v10}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->onReceivedClientCertRequest(Lorg/xwalk/core/internal/ClientCertRequestInternal;)V

    goto :goto_0
.end method

.method private setNativeContentsClientBridge(J)V
    .locals 1
    .param p1, "nativeContentsClientBridge"    # J
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 629
    iput-wide p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    .line 630
    return-void
.end method

.method private showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "replaceId"    # Ljava/lang/String;
    .param p4, "icon"    # Landroid/graphics/Bitmap;
    .param p5, "notificationId"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 755
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNotificationService:Lorg/xwalk/core/internal/XWalkNotificationService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/xwalk/core/internal/XWalkNotificationService;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 757
    return-void
.end method


# virtual methods
.method cancelJsResult(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 770
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 772
    :goto_0
    return-void

    .line 771
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    invoke-direct {p0, v0, v1, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->nativeCancelJsResult(JI)V

    goto :goto_0
.end method

.method confirmJsResult(ILjava/lang/String;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "prompt"    # Ljava/lang/String;

    .prologue
    .line 765
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 767
    :goto_0
    return-void

    .line 766
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->nativeConfirmJsResult(JILjava/lang/String;)V

    goto :goto_0
.end method

.method public didFinishLoad(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 513
    return-void
.end method

.method public doUpdateVisitedHistory(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isReload"    # Z

    .prologue
    .line 236
    return-void
.end method

.method exitFullscreen(J)V
    .locals 5
    .param p1, "nativeWebContents"    # J

    .prologue
    .line 775
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 777
    :goto_0
    return-void

    .line 776
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->nativeExitFullscreen(JJ)V

    goto :goto_0
.end method

.method public getContentVideoViewClient()Lorg/chromium/content/browser/ContentVideoViewClient;
    .locals 3

    .prologue
    .line 618
    new-instance v0, Lorg/xwalk/core/internal/XWalkContentVideoViewClient;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-direct {v0, p0, v1, v2}, Lorg/xwalk/core/internal/XWalkContentVideoViewClient;-><init>(Lorg/xwalk/core/internal/XWalkContentsClient;Landroid/app/Activity;Lorg/xwalk/core/internal/XWalkViewInternal;)V

    return-object v0
.end method

.method public getInterceptNavigationDelegate()Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mInterceptNavigationDelegate:Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    return-void
.end method

.method public getXWalkWebChromeClient()Lorg/xwalk/core/internal/XWalkWebChromeClient;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;

    return-object v0
.end method

.method public hasEnteredFullscreen()Z
    .locals 1

    .prologue
    .line 532
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mIsFullscreen:Z

    return v0
.end method

.method public notificationClicked(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 785
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 787
    :goto_0
    return-void

    .line 786
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    invoke-direct {p0, v0, v1, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->nativeNotificationClicked(JI)V

    goto :goto_0
.end method

.method public notificationClosed(IZ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "byUser"    # Z

    .prologue
    .line 790
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 792
    :goto_0
    return-void

    .line 791
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->nativeNotificationClosed(JIZ)V

    goto :goto_0
.end method

.method public notificationDisplayed(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 780
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 782
    :goto_0
    return-void

    .line 781
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    invoke-direct {p0, v0, v1, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->nativeNotificationDisplayed(JI)V

    goto :goto_0
.end method

.method public onCloseWindow()V
    .locals 2

    .prologue
    .line 469
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJavascriptCloseWindow(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    .line 472
    :cond_0
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 7
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 290
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkClient:Lorg/xwalk/core/internal/XWalkClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 311
    :goto_0
    return v0

    .line 291
    :cond_1
    sget-object v5, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;->DEBUG:Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    .line 293
    .local v5, "consoleMessageType":Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v6

    .line 294
    .local v6, "messageLevel":Landroid/webkit/ConsoleMessage$MessageLevel;
    sget-object v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$5;->$SwitchMap$android$webkit$ConsoleMessage$MessageLevel:[I

    invoke-virtual {v6}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 308
    sget-object v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->TAG:Ljava/lang/String;

    const-string v1, "Unknown message level, defaulting to DEBUG"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :goto_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v3

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onConsoleMessage(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;ILjava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;)Z

    move-result v0

    goto :goto_0

    .line 296
    :pswitch_0
    sget-object v5, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;->INFO:Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    .line 297
    goto :goto_1

    .line 299
    :pswitch_1
    sget-object v5, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;->LOG:Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    .line 300
    goto :goto_1

    .line 302
    :pswitch_2
    sget-object v5, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;->WARNING:Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    .line 303
    goto :goto_1

    .line 305
    :pswitch_3
    sget-object v5, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;->ERROR:Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    .line 306
    goto :goto_1

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateWindow(ZZ)Z
    .locals 4
    .param p1, "isDialog"    # Z
    .param p2, "isUserGesture"    # Z

    .prologue
    .line 441
    if-eqz p1, :cond_0

    const/4 v2, 0x0

    .line 457
    :goto_0
    return v2

    .line 443
    :cond_0
    sget-object v1, Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;->BY_JAVASCRIPT:Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;

    .line 445
    .local v1, "initiator":Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;
    if-eqz p2, :cond_1

    .line 446
    sget-object v1, Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;->BY_USER_GESTURE:Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;

    .line 449
    :cond_1
    new-instance v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$2;

    invoke-direct {v0, p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge$2;-><init>(Lorg/xwalk/core/internal/XWalkContentsClientBridge;)V

    .line 457
    .local v0, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Lorg/xwalk/core/internal/XWalkViewInternal;>;"
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v2, v3, v1, v0}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onCreateWindowRequested(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;Landroid/webkit/ValueCallback;)Z

    move-result v2

    goto :goto_0
.end method

.method public onDangerousDownload(Ljava/lang/String;I)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "downloadId"    # I

    .prologue
    .line 810
    return-void
.end method

.method public onDidChangeThemeColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 255
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onDidChangeThemeColor(Lorg/xwalk/core/internal/XWalkViewInternal;I)V

    .line 258
    :cond_0
    return-void
.end method

.method public onDocumentLoadedInFrame(J)V
    .locals 3
    .param p1, "frameId"    # J

    .prologue
    .line 262
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onDocumentLoadedInFrame(Lorg/xwalk/core/internal/XWalkViewInternal;J)V

    .line 265
    :cond_0
    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 433
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mDownloadListener:Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;

    if-eqz v0, :cond_0

    .line 434
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mDownloadListener:Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 437
    :cond_0
    return-void
.end method

.method public onDownloadStarted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 807
    return-void
.end method

.method public onFindResultReceived(IIZ)V
    .locals 0
    .param p1, "activeMatchOrdinal"    # I
    .param p2, "numberOfMatches"    # I
    .param p3, "isDoneCounting"    # Z

    .prologue
    .line 359
    return-void
.end method

.method public onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p1, "dontResend"    # Landroid/os/Message;
    .param p2, "resend"    # Landroid/os/Message;

    .prologue
    .line 424
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 425
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkWebChromeClient;->onGeolocationPermissionsHidePrompt()V

    .line 354
    :cond_0
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lorg/xwalk/core/internal/XWalkGeolocationPermissions$Callback;)V
    .locals 1
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Lorg/xwalk/core/internal/XWalkGeolocationPermissions$Callback;

    .prologue
    .line 344
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkWebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lorg/xwalk/core/internal/XWalkGeolocationPermissions$Callback;)V

    .line 347
    :cond_0
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkWebChromeClient;->onHideCustomView()V

    .line 502
    :cond_0
    return-void
.end method

.method public onIconAvailable(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 823
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mUiThreadHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 824
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v1, v2, p1, v0}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onIconAvailable(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Landroid/os/Message;)V

    .line 825
    return-void
.end method

.method public onLoadResource(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 283
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkClient:Lorg/xwalk/core/internal/XWalkClient;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkClient:Lorg/xwalk/core/internal/XWalkClient;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1}, Lorg/xwalk/core/internal/XWalkClient;->onLoadResource(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    .line 286
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 188
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNotificationService:Lorg/xwalk/core/internal/XWalkNotificationService;

    invoke-interface {v0, p1}, Lorg/xwalk/core/internal/XWalkNotificationService;->maybeHandleIntent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public onNewPicture(Landroid/graphics/Picture;)V
    .locals 0
    .param p1, "picture"    # Landroid/graphics/Picture;

    .prologue
    .line 363
    return-void
.end method

.method public onPageFinished(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 376
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mPageLoadListener:Lorg/xwalk/core/internal/PageLoadListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mPageLoadListener:Lorg/xwalk/core/internal/PageLoadListener;

    invoke-interface {v0, p1}, Lorg/xwalk/core/internal/PageLoadListener;->onPageFinished(Ljava/lang/String;)V

    .line 378
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    if-eqz v0, :cond_2

    .line 379
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLoadStatus:Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    sget-object v1, Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;->CANCELLED:Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLoadingUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 380
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLoadingUrl:Ljava/lang/String;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLoadStatus:Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    invoke-virtual {v0, v1, v2, v3}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onPageLoadStopped(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;)V

    .line 384
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLoadingUrl:Ljava/lang/String;

    .line 390
    :cond_2
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->onResourceLoadFinished(Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :cond_3
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLoadStatus:Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    invoke-virtual {v0, v1, p1, v2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onPageLoadStopped(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;)V

    goto :goto_1
.end method

.method public onPageStarted(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 367
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLoadingUrl:Ljava/lang/String;

    .line 369
    sget-object v0, Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;->FINISHED:Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLoadStatus:Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    .line 370
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onPageLoadStarted(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    .line 372
    :cond_0
    return-void
.end method

.method public onProgressChanged(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 240
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onProgressChanged(Lorg/xwalk/core/internal/XWalkViewInternal;I)V

    .line 243
    :cond_0
    return-void
.end method

.method public onReceivedClientCertRequest(Lorg/xwalk/core/internal/ClientCertRequestInternal;)V
    .locals 2
    .param p1, "handler"    # Lorg/xwalk/core/internal/ClientCertRequestInternal;

    .prologue
    .line 336
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedClientCertRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/ClientCertRequestInternal;)V

    .line 339
    :cond_0
    return-void
.end method

.method public onReceivedError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 400
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLoadingUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLoadingUrl:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    sget-object v0, Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;->FAILED:Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLoadStatus:Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    .line 404
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedLoadError(Lorg/xwalk/core/internal/XWalkViewInternal;ILjava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_1
    return-void
.end method

.method public onReceivedHttpAuthRequest(Lorg/xwalk/core/internal/XWalkHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "handler"    # Lorg/xwalk/core/internal/XWalkHttpAuthHandler;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "realm"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkClient:Lorg/xwalk/core/internal/XWalkClient;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkClient:Lorg/xwalk/core/internal/XWalkClient;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkClient;->onReceivedHttpAuthRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_0
    return-void
.end method

.method public onReceivedIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 476
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1}, Lorg/xwalk/core/internal/XWalkWebChromeClient;->onReceivedIcon(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/graphics/Bitmap;)V

    .line 479
    :cond_0
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mFavicon:Landroid/graphics/Bitmap;

    .line 480
    return-void
.end method

.method public onReceivedIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 829
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onReceivedIcon(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 830
    return-void
.end method

.method public onReceivedLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/String;

    .prologue
    .line 332
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V
    .locals 2
    .param p2, "error"    # Landroid/net/http/SslError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/net/http/SslError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 325
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedSslError(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V

    .line 328
    :cond_0
    return-void
.end method

.method public onRendererResponsive()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkClient:Lorg/xwalk/core/internal/XWalkClient;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkClient:Lorg/xwalk/core/internal/XWalkClient;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkClient;->onRendererResponsive(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    .line 420
    :cond_0
    return-void
.end method

.method public onRendererUnresponsive()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkClient:Lorg/xwalk/core/internal/XWalkClient;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkClient:Lorg/xwalk/core/internal/XWalkClient;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkClient;->onRendererUnresponsive(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    .line 413
    :cond_0
    return-void
.end method

.method public onRequestFocus()V
    .locals 2

    .prologue
    .line 462
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onRequestFocus(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    .line 465
    :cond_0
    return-void
.end method

.method public onResourceLoadFinished(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 276
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onLoadFinished(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    .line 279
    :cond_0
    return-void
.end method

.method public onResourceLoadStarted(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 269
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onLoadStarted(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    .line 272
    :cond_0
    return-void
.end method

.method public onScaleChangedScaled(FF)V
    .locals 2
    .param p1, "oldScale"    # F
    .param p2, "newScale"    # F

    .prologue
    .line 506
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onScaleChanged(Lorg/xwalk/core/internal/XWalkViewInternal;FF)V

    .line 509
    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "requestedOrientation"    # I
    .param p3, "callback"    # Lorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;

    .prologue
    .line 492
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkWebChromeClient;->onShowCustomView(Landroid/view/View;ILorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;)V

    .line 495
    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Lorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Lorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;

    .prologue
    .line 484
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkWebChromeClient;->onShowCustomView(Landroid/view/View;Lorg/xwalk/core/internal/XWalkWebChromeClient$CustomViewCallback;)V

    .line 487
    :cond_0
    return-void
.end method

.method protected onStopLoading()V
    .locals 1

    .prologue
    .line 395
    sget-object v0, Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;->CANCELLED:Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLoadStatus:Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    .line 396
    return-void
.end method

.method public onTitleChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 517
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onReceivedTitle(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    .line 520
    :cond_0
    return-void
.end method

.method public onToggleFullscreen(Z)V
    .locals 2
    .param p1, "enterFullscreen"    # Z

    .prologue
    .line 524
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mIsFullscreen:Z

    .line 526
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onFullscreenToggled(Lorg/xwalk/core/internal/XWalkViewInternal;Z)V

    .line 528
    :cond_0
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 225
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onUnhandledKeyEvent(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/view/KeyEvent;)V

    .line 228
    :cond_0
    return-void
.end method

.method public onWebLayoutPageScaleFactorChanged(F)V
    .locals 2
    .param p1, "pageScaleFactor"    # F
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 814
    iget v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mPageScaleFactor:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    .line 819
    :goto_0
    return-void

    .line 816
    :cond_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mPageScaleFactor:F

    .line 817
    .local v0, "oldPageScaleFactor":F
    iput p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mPageScaleFactor:F

    .line 818
    iget v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mPageScaleFactor:F

    invoke-virtual {p0, v0, v1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->onScaleChanged(FF)V

    goto :goto_0
.end method

.method public provideClientCertificateResponse(I[[BLorg/chromium/net/AndroidPrivateKey;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "certChain"    # [[B
    .param p3, "androidKey"    # Lorg/chromium/net/AndroidPrivateKey;

    .prologue
    .line 623
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNativeContentsClientBridge:J

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->nativeProvideClientCertificateResponse(JI[[BLorg/chromium/net/AndroidPrivateKey;)V

    .line 624
    return-void
.end method

.method registerPageLoadListener(Lorg/xwalk/core/internal/PageLoadListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/xwalk/core/internal/PageLoadListener;

    .prologue
    .line 178
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mPageLoadListener:Lorg/xwalk/core/internal/PageLoadListener;

    .line 179
    return-void
.end method

.method public requestHttpGetDownload(Lorg/chromium/content/browser/DownloadInfo;)V
    .locals 8
    .param p1, "downloadInfo"    # Lorg/chromium/content/browser/DownloadInfo;

    .prologue
    .line 800
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mDownloadListener:Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;

    if-eqz v0, :cond_0

    .line 801
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mDownloadListener:Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;

    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getContentDisposition()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/chromium/content/browser/DownloadInfo;->getContentLength()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 804
    :cond_0
    return-void
.end method

.method setDownloadListener(Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;)V
    .locals 0
    .param p1, "listener"    # Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;

    .prologue
    .line 795
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mDownloadListener:Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;

    .line 796
    return-void
.end method

.method public setNavigationHandler(Lorg/xwalk/core/internal/XWalkNavigationHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xwalk/core/internal/XWalkNavigationHandler;

    .prologue
    .line 174
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNavigationHandler:Lorg/xwalk/core/internal/XWalkNavigationHandler;

    .line 175
    return-void
.end method

.method public setNotificationService(Lorg/xwalk/core/internal/XWalkNotificationService;)V
    .locals 1
    .param p1, "service"    # Lorg/xwalk/core/internal/XWalkNotificationService;

    .prologue
    .line 182
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNotificationService:Lorg/xwalk/core/internal/XWalkNotificationService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNotificationService:Lorg/xwalk/core/internal/XWalkNotificationService;

    invoke-interface {v0}, Lorg/xwalk/core/internal/XWalkNotificationService;->shutdown()V

    .line 183
    :cond_0
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNotificationService:Lorg/xwalk/core/internal/XWalkNotificationService;

    .line 184
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNotificationService:Lorg/xwalk/core/internal/XWalkNotificationService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mNotificationService:Lorg/xwalk/core/internal/XWalkNotificationService;

    invoke-interface {v0, p0}, Lorg/xwalk/core/internal/XWalkNotificationService;->setBridge(Lorg/xwalk/core/internal/XWalkContentsClientBridge;)V

    .line 185
    :cond_1
    return-void
.end method

.method public setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V
    .locals 2
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 151
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-direct {v0, v1}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    goto :goto_0
.end method

.method public setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V
    .locals 2
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkUIClientInternal;

    .prologue
    .line 141
    if-eqz p1, :cond_0

    .line 142
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-direct {v0, v1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    goto :goto_0
.end method

.method public setXWalkClient(Lorg/xwalk/core/internal/XWalkClient;)V
    .locals 0
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkClient;

    .prologue
    .line 170
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkClient:Lorg/xwalk/core/internal/XWalkClient;

    .line 171
    return-void
.end method

.method public setXWalkWebChromeClient(Lorg/xwalk/core/internal/XWalkWebChromeClient;)V
    .locals 0
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkWebChromeClient;

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {p1, p0}, Lorg/xwalk/core/internal/XWalkWebChromeClient;->setContentsClient(Lorg/xwalk/core/internal/XWalkContentsClient;)V

    .line 162
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkWebChromeClient:Lorg/xwalk/core/internal/XWalkWebChromeClient;

    goto :goto_0
.end method

.method public shouldCreateWebContents(Ljava/lang/String;)Z
    .locals 1
    .param p1, "contentUrl"    # Ljava/lang/String;

    .prologue
    .line 537
    const/4 v0, 0x1

    return v0
.end method

.method public shouldInterceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "overridden":Z
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v1, v2, p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->shouldOverrideKeyEvent(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 217
    :cond_0
    if-nez v0, :cond_1

    .line 218
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkContentsClient;->shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 220
    .end local v0    # "overridden":Z
    :cond_1
    return v0
.end method

.method public shouldOverrideRunFileChooser(IIILjava/lang/String;Z)Z
    .locals 6
    .param p1, "processId"    # I
    .param p2, "renderId"    # I
    .param p3, "modeFlags"    # I
    .param p4, "acceptTypes"    # Ljava/lang/String;
    .param p5, "capture"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 544
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->isOwnerActivityRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 613
    :goto_0
    return v2

    .line 569
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkContentsClientBridge$3;-><init>(Lorg/xwalk/core/internal/XWalkContentsClientBridge;III)V

    .line 604
    .local v0, "uploadFile":Lorg/xwalk/core/internal/XWalkContentsClientBridge$1UriCallback;
    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkUIClient:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-static {p5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v0, p4, v5}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->openFileChooser(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iput-boolean v1, v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$1UriCallback;->syncCallFinished:Z

    .line 610
    iget-boolean v3, v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$1UriCallback;->syncNullReceived:Z

    if-eqz v3, :cond_1

    .line 611
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-static {p5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p4, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->showFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 613
    :cond_1
    iget-boolean v3, v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$1UriCallback;->syncNullReceived:Z

    if-nez v3, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public shouldOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkResourceClient:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, v1, p1}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->shouldOverrideUrlLoading(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)Z

    move-result v0

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
