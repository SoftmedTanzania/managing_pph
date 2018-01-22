.class Lorg/chromium/content/browser/webcontents/WebContentsImpl;
.super Ljava/lang/Object;
.source "WebContentsImpl.java"

# interfaces
.implements Lorg/chromium/content_public/browser/WebContents;


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mNativeWebContentsAndroid:J

.field private mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

.field private mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

.field private mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(JLorg/chromium/content_public/browser/NavigationController;)V
    .locals 1
    .param p1, "nativeWebContentsAndroid"    # J
    .param p3, "navigationController"    # Lorg/chromium/content_public/browser/NavigationController;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    .line 39
    iput-wide p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    .line 40
    iput-object p3, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    .line 41
    return-void
.end method

.method private static addAccessibilityNodeAsChild(Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;)V
    .locals 0
    .param p0, "parent"    # Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;
    .param p1, "child"    # Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 356
    invoke-virtual {p0, p1}, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->addChild(Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;)V

    .line 357
    return-void
.end method

.method private addEnteringStylesheetToTransition(Ljava/lang/String;)V
    .locals 1
    .param p1, "stylesheet"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/content_public/browser/NavigationTransitionDelegate;->addEnteringStylesheetToTransition(Ljava/lang/String;)V

    .line 286
    :cond_0
    return-void
.end method

.method private addNavigationTransitionElements(Ljava/lang/String;IIII)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/chromium/content_public/browser/NavigationTransitionDelegate;->addNavigationTransitionElements(Ljava/lang/String;IIII)V

    .line 301
    :cond_0
    return-void
.end method

.method private clearNativePtr()V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    .line 52
    iput-object v2, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    .line 53
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->destroy()V

    .line 55
    iput-object v2, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    .line 57
    :cond_0
    return-void
.end method

.method private static create(JLorg/chromium/content_public/browser/NavigationController;)Lorg/chromium/content/browser/webcontents/WebContentsImpl;
    .locals 2
    .param p0, "nativeWebContentsAndroid"    # J
    .param p2, "navigationController"    # Lorg/chromium/content_public/browser/NavigationController;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;-><init>(JLorg/chromium/content_public/browser/NavigationController;)V

    return-object v0
.end method

.method private static createAccessibilitySnapshotNode(IIIIIILjava/lang/String;IIFILjava/lang/String;)Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;
    .locals 12
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "color"    # I
    .param p8, "bgcolor"    # I
    .param p9, "size"    # F
    .param p10, "textStyle"    # I
    .param p11, "className"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 364
    new-instance v2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p11

    invoke-direct/range {v2 .. v10}, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;-><init>(IIIIIILjava/lang/String;Ljava/lang/String;)V

    .line 367
    .local v2, "node":Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;
    move/from16 v0, p9

    float-to-double v4, v0

    const-wide/16 v10, 0x0

    cmpl-double v3, v4, v10

    if-ltz v3, :cond_0

    .line 368
    and-int/lit8 v3, p10, 0x1

    if-lez v3, :cond_1

    const/4 v6, 0x1

    .line 369
    .local v6, "bold":Z
    :goto_0
    and-int/lit8 v3, p10, 0x2

    if-lez v3, :cond_2

    const/4 v7, 0x1

    .line 370
    .local v7, "italic":Z
    :goto_1
    and-int/lit8 v3, p10, 0x4

    if-lez v3, :cond_3

    const/4 v8, 0x1

    .line 371
    .local v8, "underline":Z
    :goto_2
    and-int/lit8 v3, p10, 0x8

    if-lez v3, :cond_4

    const/4 v9, 0x1

    .local v9, "lineThrough":Z
    :goto_3
    move/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p9

    .line 372
    invoke-virtual/range {v2 .. v9}, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->setStyle(IIFZZZZ)V

    .line 374
    .end local v6    # "bold":Z
    .end local v7    # "italic":Z
    .end local v8    # "underline":Z
    .end local v9    # "lineThrough":Z
    :cond_0
    return-object v2

    .line 368
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 369
    .restart local v6    # "bold":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 370
    .restart local v7    # "italic":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 371
    .restart local v8    # "underline":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_3
.end method

.method private didDeferAfterResponseStarted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "markup"    # Ljava/lang/String;
    .param p2, "cssSelector"    # Ljava/lang/String;
    .param p3, "enteringColor"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    invoke-interface {v0, p1, p2, p3}, Lorg/chromium/content_public/browser/NavigationTransitionDelegate;->didDeferAfterResponseStarted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_0
    return-void
.end method

.method private didStartNavigationTransitionForFrame(J)V
    .locals 1
    .param p1, "frameId"    # J
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    invoke-interface {v0, p1, p2}, Lorg/chromium/content_public/browser/NavigationTransitionDelegate;->didStartNavigationTransitionForFrame(J)V

    .line 293
    :cond_0
    return-void
.end method

.method private getNativePointer()J
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 61
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    return-wide v0
.end method

.method private native nativeAddMessageToDevToolsConsole(JILjava/lang/String;)V
.end method

.method private native nativeAddStyleSheetByURL(JLjava/lang/String;)V
.end method

.method private native nativeBeginExitTransition(JLjava/lang/String;Z)V
.end method

.method private native nativeClearNavigationTransitionData(J)V
.end method

.method private static native nativeDestroyWebContents(J)V
.end method

.method private native nativeEvaluateJavaScript(JLjava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V
.end method

.method private native nativeExitFullscreen(J)V
.end method

.method private native nativeFetchTransitionElements(JLjava/lang/String;)V
.end method

.method private native nativeGetBackgroundColor(J)I
.end method

.method private native nativeGetLastCommittedURL(J)Ljava/lang/String;
.end method

.method private native nativeGetThemeColor(J)I
.end method

.method private native nativeGetTitle(J)Ljava/lang/String;
.end method

.method private native nativeGetURL(J)Ljava/lang/String;
.end method

.method private native nativeGetVisibleURL(J)Ljava/lang/String;
.end method

.method private native nativeHasAccessedInitialDocument(J)Z
.end method

.method private native nativeHideTransitionElements(JLjava/lang/String;)V
.end method

.method private native nativeInsertCSS(JLjava/lang/String;)V
.end method

.method private native nativeIsIncognito(J)Z
.end method

.method private native nativeIsLoading(J)Z
.end method

.method private native nativeIsLoadingToDifferentDocument(J)Z
.end method

.method private native nativeIsRenderWidgetHostViewReady(J)Z
.end method

.method private native nativeIsShowingInterstitialPage(J)Z
.end method

.method private native nativeOnHide(J)V
.end method

.method private native nativeOnShow(J)V
.end method

.method private native nativeReleaseMediaPlayers(J)V
.end method

.method private native nativeRequestAccessibilitySnapshot(JLorg/chromium/content_public/browser/AccessibilitySnapshotCallback;FF)V
.end method

.method private native nativeResumeLoadingCreatedWebContents(J)V
.end method

.method private native nativeResumeResponseDeferredAtStart(J)V
.end method

.method private native nativeRevertExitTransition(J)V
.end method

.method private native nativeScrollFocusedEditableNodeIntoView(J)V
.end method

.method private native nativeSelectWordAroundCaret(J)V
.end method

.method private native nativeSetHasPendingNavigationTransitionForTesting(J)V
.end method

.method private native nativeSetupTransitionView(JLjava/lang/String;)V
.end method

.method private native nativeShowImeIfNeeded(J)V
.end method

.method private native nativeShowInterstitialPage(JLjava/lang/String;J)V
.end method

.method private native nativeShowTransitionElements(JLjava/lang/String;)V
.end method

.method private native nativeStop(J)V
.end method

.method private native nativeUpdateTopControlsState(JZZZ)V
.end method

.method private static onAccessibilitySnapshot(Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;Lorg/chromium/content_public/browser/AccessibilitySnapshotCallback;)V
    .locals 0
    .param p0, "root"    # Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;
    .param p1, "callback"    # Lorg/chromium/content_public/browser/AccessibilitySnapshotCallback;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 350
    invoke-virtual {p1, p0}, Lorg/chromium/content_public/browser/AccessibilitySnapshotCallback;->onAccessibilitySnapshot(Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;)V

    .line 351
    return-void
.end method

.method private static onEvaluateJavaScriptResult(Ljava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V
    .locals 0
    .param p0, "jsonResult"    # Ljava/lang/String;
    .param p1, "callback"    # Lorg/chromium/content_public/browser/JavaScriptCallback;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 328
    invoke-interface {p1, p0}, Lorg/chromium/content_public/browser/JavaScriptCallback;->handleJavaScriptResult(Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method private onTransitionElementsFetched(Ljava/lang/String;)V
    .locals 1
    .param p1, "cssSelector"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/content_public/browser/NavigationTransitionDelegate;->onTransitionElementsFetched(Ljava/lang/String;)V

    .line 308
    :cond_0
    return-void
.end method

.method private willHandleDeferAfterResponseStarted()Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 278
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationTransitionDelegate;->willHandleDeferAfterResponseStarted()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public addMessageToDevToolsConsole(ILjava/lang/String;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 317
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeAddMessageToDevToolsConsole(JILjava/lang/String;)V

    .line 318
    return-void
.end method

.method public addObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V
    .locals 4
    .param p1, "observer"    # Lorg/chromium/content_public/browser/WebContentsObserver;

    .prologue
    .line 379
    sget-boolean v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 380
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    if-nez v0, :cond_1

    new-instance v0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;-><init>(Lorg/chromium/content/browser/webcontents/WebContentsImpl;)V

    iput-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    .line 381
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->addObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V

    .line 382
    return-void
.end method

.method public addStyleSheetByURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeAddStyleSheetByURL(JLjava/lang/String;)V

    .line 128
    return-void
.end method

.method public beginExitTransition(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "cssSelector"    # Ljava/lang/String;
    .param p2, "exitToNativeApp"    # Z

    .prologue
    .line 225
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeBeginExitTransition(JLjava/lang/String;Z)V

    .line 226
    return-void
.end method

.method public clearNavigationTransitionData()V
    .locals 2

    .prologue
    .line 255
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeClearNavigationTransitionData(J)V

    .line 256
    return-void
.end method

.method public destroy()V
    .locals 4

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-static {v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeDestroyWebContents(J)V

    .line 67
    :cond_0
    return-void
.end method

.method public evaluateJavaScript(Ljava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V
    .locals 2
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "callback"    # Lorg/chromium/content_public/browser/JavaScriptCallback;

    .prologue
    .line 312
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeEvaluateJavaScript(JLjava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V

    .line 313
    return-void
.end method

.method public exitFullscreen()V
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeExitFullscreen(J)V

    .line 149
    return-void
.end method

.method public fetchTransitionElements(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeFetchTransitionElements(JLjava/lang/String;)V

    .line 264
    return-void
.end method

.method public getBackgroundColor()I
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetBackgroundColor(J)I

    move-result v0

    return v0
.end method

.method public getLastCommittedUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetLastCommittedURL(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationController()Lorg/chromium/content_public/browser/NavigationController;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    return-object v0
.end method

.method public getThemeColor(I)I
    .locals 4
    .param p1, "defaultColor"    # I

    .prologue
    .line 333
    iget-wide v2, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetThemeColor(J)I

    move-result v0

    .line 334
    .local v0, "color":I
    if-nez v0, :cond_0

    .line 336
    .end local p1    # "defaultColor":I
    :goto_0
    return p1

    .restart local p1    # "defaultColor":I
    :cond_0
    const/high16 v1, -0x1000000

    or-int p1, v0, v1

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetTitle(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetURL(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetVisibleURL(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAccessedInitialDocument()Z
    .locals 2

    .prologue
    .line 322
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeHasAccessedInitialDocument(J)Z

    move-result v0

    return v0
.end method

.method public hideTransitionElements(Ljava/lang/String;)V
    .locals 2
    .param p1, "cssSelector"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeHideTransitionElements(JLjava/lang/String;)V

    .line 241
    return-void
.end method

.method public insertCSS(Ljava/lang/String;)V
    .locals 4
    .param p1, "css"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeInsertCSS(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public isIncognito()Z
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeIsIncognito(J)Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeIsLoading(J)Z

    move-result v0

    return v0
.end method

.method public isLoadingToDifferentDocument()Z
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeIsLoadingToDifferentDocument(J)Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 143
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeIsRenderWidgetHostViewReady(J)Z

    move-result v0

    return v0
.end method

.method public isShowingInterstitialPage()Z
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeIsShowingInterstitialPage(J)Z

    move-result v0

    return v0
.end method

.method public onHide()V
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeOnHide(J)V

    .line 108
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeOnShow(J)V

    .line 113
    return-void
.end method

.method public releaseMediaPlayers()V
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeReleaseMediaPlayers(J)V

    .line 118
    return-void
.end method

.method public removeObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V
    .locals 1
    .param p1, "observer"    # Lorg/chromium/content_public/browser/WebContentsObserver;

    .prologue
    .line 386
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    if-nez v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->removeObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V

    goto :goto_0
.end method

.method public requestAccessibilitySnapshot(Lorg/chromium/content_public/browser/AccessibilitySnapshotCallback;FF)V
    .locals 7
    .param p1, "callback"    # Lorg/chromium/content_public/browser/AccessibilitySnapshotCallback;
    .param p2, "offsetY"    # F
    .param p3, "scrollX"    # F

    .prologue
    .line 342
    iget-wide v2, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeRequestAccessibilitySnapshot(JLorg/chromium/content_public/browser/AccessibilitySnapshotCallback;FF)V

    .line 344
    return-void
.end method

.method public resumeLoadingCreatedWebContents()V
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeResumeLoadingCreatedWebContents(J)V

    .line 199
    return-void
.end method

.method public resumeResponseDeferredAtStart()V
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeResumeResponseDeferredAtStart(J)V

    .line 194
    return-void
.end method

.method public revertExitTransition()V
    .locals 2

    .prologue
    .line 233
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeRevertExitTransition(J)V

    .line 234
    return-void
.end method

.method public scrollFocusedEditableNodeIntoView()V
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeScrollFocusedEditableNodeIntoView(J)V

    .line 169
    return-void
.end method

.method public selectWordAroundCaret()V
    .locals 2

    .prologue
    .line 173
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeSelectWordAroundCaret(J)V

    .line 174
    return-void
.end method

.method public setHasPendingNavigationTransitionForTesting()V
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeSetHasPendingNavigationTransitionForTesting(J)V

    .line 204
    return-void
.end method

.method public setNavigationTransitionDelegate(Lorg/chromium/content_public/browser/NavigationTransitionDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    .prologue
    .line 208
    iput-object p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationTransitionDelegate:Lorg/chromium/content_public/browser/NavigationTransitionDelegate;

    .line 209
    return-void
.end method

.method public setupTransitionView(Ljava/lang/String;)V
    .locals 2
    .param p1, "markup"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeSetupTransitionView(JLjava/lang/String;)V

    .line 217
    return-void
.end method

.method public showImeIfNeeded()V
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeShowImeIfNeeded(J)V

    .line 161
    return-void
.end method

.method public showInterstitialPage(Ljava/lang/String;J)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "interstitialPageDelegateAndroid"    # J

    .prologue
    .line 133
    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeShowInterstitialPage(JLjava/lang/String;J)V

    .line 134
    return-void
.end method

.method public showTransitionElements(Ljava/lang/String;)V
    .locals 2
    .param p1, "cssSelector"    # Ljava/lang/String;

    .prologue
    .line 247
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeShowTransitionElements(JLjava/lang/String;)V

    .line 248
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeStop(J)V

    .line 97
    return-void
.end method

.method public updateTopControlsState(ZZZ)V
    .locals 7
    .param p1, "enableHiding"    # Z
    .param p2, "enableShowing"    # Z
    .param p3, "animate"    # Z

    .prologue
    .line 154
    iget-wide v2, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeUpdateTopControlsState(JZZZ)V

    .line 156
    return-void
.end method
