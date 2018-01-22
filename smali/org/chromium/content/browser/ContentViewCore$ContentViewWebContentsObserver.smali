.class Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;
.super Lorg/chromium/content_public/browser/WebContentsObserver;
.source "ContentViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ContentViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentViewWebContentsObserver"
.end annotation


# instance fields
.field private final mWeakContentViewCore:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/chromium/content/browser/ContentViewCore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 1
    .param p1, "contentViewCore"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 323
    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/content_public/browser/WebContentsObserver;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    .line 324
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;->mWeakContentViewCore:Ljava/lang/ref/WeakReference;

    .line 325
    return-void
.end method

.method private determinedProcessVisibility()V
    .locals 2

    .prologue
    .line 376
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;->mWeakContentViewCore:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ContentViewCore;

    .line 377
    .local v0, "contentViewCore":Lorg/chromium/content/browser/ContentViewCore;
    if-nez v0, :cond_0

    .line 383
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getCurrentRenderProcessId()I

    move-result v1

    invoke-static {v1}, Lorg/chromium/content/browser/ChildProcessLauncher;->determinedVisibility(I)V

    goto :goto_0
.end method

.method private resetPopupsAndInput()V
    .locals 2

    .prologue
    .line 368
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;->mWeakContentViewCore:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ContentViewCore;

    .line 369
    .local v0, "contentViewCore":Lorg/chromium/content/browser/ContentViewCore;
    if-nez v0, :cond_0

    .line 373
    :goto_0
    return-void

    .line 370
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->access$502(Lorg/chromium/content/browser/ContentViewCore;Z)Z

    .line 371
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$600(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 372
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$700(Lorg/chromium/content/browser/ContentViewCore;)V

    goto :goto_0
.end method


# virtual methods
.method public didFailLoad(ZZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "isProvisionalLoad"    # Z
    .param p2, "isMainFrame"    # Z
    .param p3, "errorCode"    # I
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 347
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;->determinedProcessVisibility()V

    .line 348
    :cond_0
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
    .line 353
    if-nez p3, :cond_0

    .line 355
    :goto_0
    return-void

    .line 354
    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;->resetPopupsAndInput()V

    goto :goto_0
.end method

.method public didStartLoading(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 329
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;->mWeakContentViewCore:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ContentViewCore;

    .line 330
    .local v0, "contentViewCore":Lorg/chromium/content/browser/ContentViewCore;
    if-nez v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 331
    :cond_0
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$400(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->onPageLoadStarted()V

    goto :goto_0
.end method

.method public didStopLoading(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 336
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;->mWeakContentViewCore:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ContentViewCore;

    .line 337
    .local v0, "contentViewCore":Lorg/chromium/content/browser/ContentViewCore;
    if-nez v0, :cond_0

    .line 339
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$400(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->onPageLoadStopped()V

    goto :goto_0
.end method

.method public navigationEntryCommitted()V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;->determinedProcessVisibility()V

    .line 365
    return-void
.end method

.method public renderProcessGone(Z)V
    .locals 0
    .param p1, "wasOomProtected"    # Z

    .prologue
    .line 359
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;->resetPopupsAndInput()V

    .line 360
    return-void
.end method
