.class public abstract Lorg/chromium/content_public/browser/WebContentsObserver;
.super Ljava/lang/Object;
.source "WebContentsObserver.java"


# instance fields
.field private mWebContents:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/chromium/content_public/browser/WebContents;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1
    .param p1, "webContents"    # Lorg/chromium/content_public/browser/WebContents;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/content_public/browser/WebContentsObserver;->mWebContents:Ljava/lang/ref/WeakReference;

    .line 21
    invoke-interface {p1, p0}, Lorg/chromium/content_public/browser/WebContents;->addObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V

    .line 22
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 154
    iget-object v1, p0, Lorg/chromium/content_public/browser/WebContentsObserver;->mWebContents:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v1, p0, Lorg/chromium/content_public/browser/WebContentsObserver;->mWebContents:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/WebContents;

    .line 156
    .local v0, "webContents":Lorg/chromium/content_public/browser/WebContents;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/content_public/browser/WebContentsObserver;->mWebContents:Ljava/lang/ref/WeakReference;

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0, p0}, Lorg/chromium/content_public/browser/WebContents;->removeObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V

    goto :goto_0
.end method

.method public didAttachInterstitialPage()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public didChangeThemeColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 142
    return-void
.end method

.method public didCommitProvisionalLoadForFrame(JZLjava/lang/String;I)V
    .locals 0
    .param p1, "frameId"    # J
    .param p3, "isMainFrame"    # Z
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "transitionType"    # I

    .prologue
    .line 107
    return-void
.end method

.method public didDetachInterstitialPage()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public didFailLoad(ZZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "isProvisionalLoad"    # Z
    .param p2, "isMainFrame"    # Z
    .param p3, "errorCode"    # I
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 51
    return-void
.end method

.method public didFinishLoad(JLjava/lang/String;Z)V
    .locals 0
    .param p1, "frameId"    # J
    .param p3, "validatedUrl"    # Ljava/lang/String;
    .param p4, "isMainFrame"    # Z

    .prologue
    .line 115
    return-void
.end method

.method public didFirstVisuallyNonEmptyPaint()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public didNavigateAnyFrame(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    .line 76
    return-void
.end method

.method public didNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "isNavigationToDifferentPage"    # Z
    .param p4, "isFragmentNavigation"    # Z
    .param p5, "statusCode"    # I

    .prologue
    .line 63
    return-void
.end method

.method public didStartLoading(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 36
    return-void
.end method

.method public didStartNavigationToPendingEntry(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 148
    return-void
.end method

.method public didStartProvisionalLoadForFrame(JJZLjava/lang/String;ZZ)V
    .locals 0
    .param p1, "frameId"    # J
    .param p3, "parentFrameId"    # J
    .param p5, "isMainFrame"    # Z
    .param p6, "validatedUrl"    # Ljava/lang/String;
    .param p7, "isErrorPage"    # Z
    .param p8, "isIframeSrcdoc"    # Z

    .prologue
    .line 95
    return-void
.end method

.method public didStopLoading(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 42
    return-void
.end method

.method public documentAvailableInMainFrame()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public documentLoadedInFrame(J)V
    .locals 0
    .param p1, "frameId"    # J

    .prologue
    .line 121
    return-void
.end method

.method public navigationEntryCommitted()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public renderProcessGone(Z)V
    .locals 0
    .param p1, "wasOomProtected"    # Z

    .prologue
    .line 30
    return-void
.end method

.method public renderViewReady()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method
