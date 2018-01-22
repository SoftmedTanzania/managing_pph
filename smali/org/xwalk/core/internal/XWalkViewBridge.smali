.class public Lorg/xwalk/core/internal/XWalkViewBridge;
.super Lorg/xwalk/core/internal/XWalkViewInternal;
.source "XWalkViewBridge.java"


# instance fields
.field private addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private canZoomInMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private canZoomOutMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private clearCachebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private evaluateJavascriptStringValueCallbackMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getAPIVersionMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getNavigationHistoryMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getOriginalUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getRemoteDebuggingUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getTitleMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getXWalkVersionMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private hasEnteredFullscreenMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private leaveFullscreenMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private loadAppFromManifestStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private loadStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onActivityResultintintIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onCreateInputConnectionEditorInfoMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onDestroyMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onHideMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onNewIntentIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onShowMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private pauseTimersMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private reloadintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private restoreStateBundleMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private resumeTimersMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private saveStateBundleMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setBackgroundColorintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setLayerTypeintPaintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setNetworkAvailablebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setZOrderOnTopbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private stopLoadingMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;

.field private zoomByfloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private zoomInMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private zoomOutMethod:Lorg/xwalk/core/internal/ReflectMethod;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "wrapper"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    .line 79
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "load"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->loadStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 90
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "loadAppFromManifest"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->loadAppFromManifestStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 101
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "reload"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->reloadintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 112
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "stopLoading"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->stopLoadingMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 126
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getUrl"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 140
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getTitle"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getTitleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 154
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getOriginalUrl"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getOriginalUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 168
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getNavigationHistory"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getNavigationHistoryMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 179
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "addJavascriptInterface"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 190
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "evaluateJavascript"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->evaluateJavascriptStringValueCallbackMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 201
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "clearCache"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->clearCachebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 215
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "hasEnteredFullscreen"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->hasEnteredFullscreenMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 226
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "leaveFullscreen"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->leaveFullscreenMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 237
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "pauseTimers"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->pauseTimersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 248
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "resumeTimers"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->resumeTimersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 259
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onHide"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onHideMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 270
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onShow"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onShowMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 281
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onDestroy"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onDestroyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 292
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onActivityResult"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onActivityResultintintIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 306
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onNewIntent"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onNewIntentIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 320
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "saveState"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->saveStateBundleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 334
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "restoreState"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->restoreStateBundleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 348
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getAPIVersion"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getAPIVersionMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 362
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getXWalkVersion"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getXWalkVersionMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 381
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setUIClient"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 400
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setResourceClient"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 411
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setBackgroundColor"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setBackgroundColorintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 422
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setLayerType"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setLayerTypeintPaintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 433
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setUserAgentString"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 444
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setAcceptLanguages"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 455
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setNetworkAvailable"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setNetworkAvailablebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 469
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getRemoteDebuggingUrl"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getRemoteDebuggingUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 483
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "zoomIn"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomInMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 497
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "zoomOut"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomOutMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 508
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "zoomBy"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomByfloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 522
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "canZoomIn"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->canZoomInMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 536
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "canZoomOut"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->canZoomOutMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 550
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onCreateInputConnection"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onCreateInputConnectionEditorInfoMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 561
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setZOrderOnTop"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setZOrderOnTopbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 580
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setDownloadListener"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 66
    iput-object p3, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    .line 67
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->reflectionInit()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Object;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "wrapper"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "load"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->loadStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 90
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "loadAppFromManifest"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->loadAppFromManifestStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 101
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "reload"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->reloadintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 112
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "stopLoading"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->stopLoadingMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 126
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getUrl"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 140
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getTitle"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getTitleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 154
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getOriginalUrl"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getOriginalUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 168
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getNavigationHistory"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getNavigationHistoryMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 179
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "addJavascriptInterface"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 190
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "evaluateJavascript"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->evaluateJavascriptStringValueCallbackMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 201
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "clearCache"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->clearCachebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 215
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "hasEnteredFullscreen"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->hasEnteredFullscreenMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 226
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "leaveFullscreen"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->leaveFullscreenMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 237
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "pauseTimers"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->pauseTimersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 248
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "resumeTimers"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->resumeTimersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 259
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onHide"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onHideMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 270
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onShow"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onShowMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 281
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onDestroy"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onDestroyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 292
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onActivityResult"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onActivityResultintintIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 306
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onNewIntent"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onNewIntentIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 320
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "saveState"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->saveStateBundleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 334
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "restoreState"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->restoreStateBundleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 348
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getAPIVersion"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getAPIVersionMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 362
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getXWalkVersion"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getXWalkVersionMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 381
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setUIClient"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 400
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setResourceClient"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 411
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setBackgroundColor"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setBackgroundColorintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 422
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setLayerType"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setLayerTypeintPaintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 433
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setUserAgentString"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 444
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setAcceptLanguages"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 455
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setNetworkAvailable"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setNetworkAvailablebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 469
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getRemoteDebuggingUrl"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getRemoteDebuggingUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 483
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "zoomIn"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomInMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 497
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "zoomOut"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomOutMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 508
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "zoomBy"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomByfloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 522
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "canZoomIn"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->canZoomInMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 536
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "canZoomOut"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->canZoomOutMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 550
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onCreateInputConnection"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onCreateInputConnectionEditorInfoMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 561
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setZOrderOnTop"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setZOrderOnTopbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 580
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setDownloadListener"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 59
    iput-object p3, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    .line 60
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->reflectionInit()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wrapper"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 50
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "load"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->loadStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 90
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "loadAppFromManifest"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->loadAppFromManifestStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 101
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "reload"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->reloadintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 112
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "stopLoading"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->stopLoadingMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 126
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getUrl"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 140
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getTitle"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getTitleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 154
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getOriginalUrl"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getOriginalUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 168
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getNavigationHistory"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getNavigationHistoryMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 179
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "addJavascriptInterface"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 190
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "evaluateJavascript"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->evaluateJavascriptStringValueCallbackMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 201
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "clearCache"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->clearCachebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 215
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "hasEnteredFullscreen"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->hasEnteredFullscreenMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 226
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "leaveFullscreen"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->leaveFullscreenMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 237
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "pauseTimers"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->pauseTimersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 248
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "resumeTimers"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->resumeTimersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 259
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onHide"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onHideMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 270
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onShow"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onShowMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 281
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onDestroy"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onDestroyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 292
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onActivityResult"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onActivityResultintintIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 306
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onNewIntent"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onNewIntentIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 320
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "saveState"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->saveStateBundleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 334
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "restoreState"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->restoreStateBundleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 348
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getAPIVersion"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getAPIVersionMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 362
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getXWalkVersion"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getXWalkVersionMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 381
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setUIClient"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 400
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setResourceClient"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 411
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setBackgroundColor"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setBackgroundColorintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 422
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setLayerType"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setLayerTypeintPaintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 433
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setUserAgentString"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 444
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setAcceptLanguages"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 455
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setNetworkAvailable"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setNetworkAvailablebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 469
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getRemoteDebuggingUrl"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getRemoteDebuggingUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 483
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "zoomIn"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomInMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 497
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "zoomOut"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomOutMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 508
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "zoomBy"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomByfloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 522
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "canZoomIn"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->canZoomInMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 536
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "canZoomOut"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->canZoomOutMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 550
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onCreateInputConnection"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onCreateInputConnectionEditorInfoMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 561
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setZOrderOnTop"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setZOrderOnTopbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 580
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setDownloadListener"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 52
    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    .line 53
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewBridge;->reflectionInit()V

    .line 54
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    return-void
.end method

.method public addJavascriptInterfaceSuper(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public canZoomIn()Z
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->canZoomInMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public canZoomInSuper()Z
    .locals 1

    .prologue
    .line 517
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->canZoomIn()Z

    move-result v0

    .line 519
    .local v0, "ret":Z
    return v0
.end method

.method public canZoomOut()Z
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->canZoomOutMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public canZoomOutSuper()Z
    .locals 1

    .prologue
    .line 531
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->canZoomOut()Z

    move-result v0

    .line 533
    .local v0, "ret":Z
    return v0
.end method

.method public clearCache(Z)V
    .locals 4
    .param p1, "includeDiskFiles"    # Z

    .prologue
    .line 194
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->clearCachebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    return-void
.end method

.method public clearCacheSuper(Z)V
    .locals 0
    .param p1, "includeDiskFiles"    # Z

    .prologue
    .line 198
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->clearCache(Z)V

    .line 199
    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 3
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

    .prologue
    .line 183
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->evaluateJavascriptStringValueCallbackMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    return-void
.end method

.method public evaluateJavascriptSuper(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0
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

    .prologue
    .line 187
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 188
    return-void
.end method

.method public getAPIVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getAPIVersionMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAPIVersionSuper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getAPIVersion()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 345
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getNavigationHistory()Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getNavigationHistoryMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getBridgeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;

    return-object v0
.end method

.method public getNavigationHistorySuper()Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getNavigationHistory()Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    move-result-object v0

    .line 164
    .local v0, "ret":Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 165
    .end local v0    # "ret":Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;
    :goto_0
    return-object v0

    .restart local v0    # "ret":Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;
    :cond_0
    instance-of v1, v0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;

    invoke-direct {v1, v0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;-><init>(Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getOriginalUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalUrlSuper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 151
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getRemoteDebuggingUrl()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getRemoteDebuggingUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getRemoteDebuggingUrlSuper()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 464
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getRemoteDebuggingUrl()Landroid/net/Uri;

    move-result-object v0

    .line 465
    .local v0, "ret":Landroid/net/Uri;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 466
    .end local v0    # "ret":Landroid/net/Uri;
    :cond_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getTitleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTitleSuper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 137
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUrlSuper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 123
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public getXWalkVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getXWalkVersionMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getXWalkVersionSuper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getXWalkVersion()Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 359
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public hasEnteredFullscreen()Z
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->hasEnteredFullscreenMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasEnteredFullscreenSuper()Z
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->hasEnteredFullscreen()Z

    move-result v0

    .line 212
    .local v0, "ret":Z
    return v0
.end method

.method public leaveFullscreen()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->leaveFullscreenMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-void
.end method

.method public leaveFullscreenSuper()V
    .locals 0

    .prologue
    .line 223
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->leaveFullscreen()V

    .line 224
    return-void
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->loadStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public loadAppFromManifest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->loadAppFromManifestStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public loadAppFromManifestSuper(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;->loadAppFromManifest(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public loadSuper(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;->load(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 285
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onActivityResultintintIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    return-void
.end method

.method public onActivityResultSuper(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 289
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkViewInternal;->onActivityResult(IILandroid/content/Intent;)V

    .line 290
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 540
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onCreateInputConnectionEditorInfoMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public onCreateInputConnectionSuper(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 545
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 546
    .local v0, "ret":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 547
    .end local v0    # "ret":Landroid/view/inputmethod/InputConnection;
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onDestroyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    return-void
.end method

.method public onDestroySuper()V
    .locals 0

    .prologue
    .line 278
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->onDestroy()V

    .line 279
    return-void
.end method

.method public onHide()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onHideMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    return-void
.end method

.method public onHideSuper()V
    .locals 0

    .prologue
    .line 256
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->onHide()V

    .line 257
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 296
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onNewIntentIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onNewIntentSuper(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 301
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->onNewIntent(Landroid/content/Intent;)Z

    move-result v0

    .line 303
    .local v0, "ret":Z
    return v0
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onShowMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    return-void
.end method

.method public onShowSuper()V
    .locals 0

    .prologue
    .line 267
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->onShow()V

    .line 268
    return-void
.end method

.method public pauseTimers()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->pauseTimersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-void
.end method

.method public pauseTimersSuper()V
    .locals 0

    .prologue
    .line 234
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->pauseTimers()V

    .line 235
    return-void
.end method

.method reflectionInit()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 584
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 585
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v0, :cond_0

    .line 667
    :goto_0
    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->loadStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "load"

    new-array v3, v9, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 589
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->loadAppFromManifestStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "loadAppFromManifest"

    new-array v3, v9, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 591
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->reloadintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "reload"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 593
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->stopLoadingMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "stopLoading"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 595
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "getUrl"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 597
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getTitleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "getTitle"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 599
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getOriginalUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "getOriginalUrl"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 601
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getNavigationHistoryMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "getNavigationHistory"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 603
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "addJavascriptInterface"

    new-array v3, v9, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 605
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->evaluateJavascriptStringValueCallbackMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "evaluateJavascript"

    new-array v3, v9, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Landroid/webkit/ValueCallback;

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 607
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->clearCachebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "clearCache"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 609
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->hasEnteredFullscreenMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "hasEnteredFullscreen"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 611
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->leaveFullscreenMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "leaveFullscreen"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 613
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->pauseTimersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "pauseTimers"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 615
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->resumeTimersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "resumeTimers"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 617
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onHideMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onHide"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 619
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onShowMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onShow"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 621
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onDestroyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onDestroy"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 623
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onActivityResultintintIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onActivityResult"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    const-class v4, Landroid/content/Intent;

    aput-object v4, v3, v9

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 625
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onNewIntentIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onNewIntent"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Landroid/content/Intent;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 627
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->saveStateBundleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "saveState"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 629
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->restoreStateBundleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "restoreState"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 631
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getAPIVersionMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "getAPIVersion"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 633
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getXWalkVersionMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "getXWalkVersion"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 635
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "setUIClient"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkUIClient"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 637
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "setResourceClient"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkResourceClient"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 639
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setBackgroundColorintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "setBackgroundColor"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 641
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setLayerTypeintPaintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "setLayerType"

    new-array v3, v9, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 643
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "setUserAgentString"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 645
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "setAcceptLanguages"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 647
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setNetworkAvailablebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "setNetworkAvailable"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 649
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->getRemoteDebuggingUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "getRemoteDebuggingUrl"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 651
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomInMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "zoomIn"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 653
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomOutMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "zoomOut"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 655
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomByfloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "zoomBy"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 657
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->canZoomInMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "canZoomIn"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 659
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->canZoomOutMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "canZoomOut"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 661
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->onCreateInputConnectionEditorInfoMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onCreateInputConnection"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Landroid/view/inputmethod/EditorInfo;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 663
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setZOrderOnTopbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "setZOrderOnTop"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 665
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "setDownloadListener"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkDownloadListener"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0
.end method

.method public reload(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->reloadintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public reloadSuper(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 98
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->reload(I)V

    .line 99
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 324
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->restoreStateBundleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public restoreStateSuper(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 329
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->restoreState(Landroid/os/Bundle;)Z

    move-result v0

    .line 331
    .local v0, "ret":Z
    return v0
.end method

.method public resumeTimers()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->resumeTimersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    return-void
.end method

.method public resumeTimersSuper()V
    .locals 0

    .prologue
    .line 245
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->resumeTimers()V

    .line 246
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 310
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->saveStateBundleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public saveStateSuper(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 315
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->saveState(Landroid/os/Bundle;)Z

    move-result v0

    .line 317
    .local v0, "ret":Z
    return v0
.end method

.method public setAcceptLanguages(Ljava/lang/String;)V
    .locals 3
    .param p1, "acceptLanguages"    # Ljava/lang/String;

    .prologue
    .line 437
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    return-void
.end method

.method public setAcceptLanguagesSuper(Ljava/lang/String;)V
    .locals 0
    .param p1, "acceptLanguages"    # Ljava/lang/String;

    .prologue
    .line 441
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setAcceptLanguages(Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 404
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setBackgroundColorintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    return-void
.end method

.method public setBackgroundColorSuper(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 408
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setBackgroundColor(I)V

    .line 409
    return-void
.end method

.method public setDownloadListener(Lorg/xwalk/core/internal/XWalkDownloadListenerBridge;)V
    .locals 4
    .param p1, "listener"    # Lorg/xwalk/core/internal/XWalkDownloadListenerBridge;

    .prologue
    .line 573
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkDownloadListenerBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    return-void
.end method

.method public setDownloadListener(Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;)V
    .locals 1
    .param p1, "listener"    # Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;

    .prologue
    .line 565
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkDownloadListenerBridge;

    if-eqz v0, :cond_0

    .line 566
    check-cast p1, Lorg/xwalk/core/internal/XWalkDownloadListenerBridge;

    .end local p1    # "listener":Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->setDownloadListener(Lorg/xwalk/core/internal/XWalkDownloadListenerBridge;)V

    .line 570
    :goto_0
    return-void

    .line 568
    .restart local p1    # "listener":Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;
    :cond_0
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setDownloadListener(Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;)V

    goto :goto_0
.end method

.method public setDownloadListenerSuper(Lorg/xwalk/core/internal/XWalkDownloadListenerBridge;)V
    .locals 0
    .param p1, "listener"    # Lorg/xwalk/core/internal/XWalkDownloadListenerBridge;

    .prologue
    .line 577
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setDownloadListener(Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;)V

    .line 578
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 4
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 415
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setLayerTypeintPaintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    return-void
.end method

.method public setLayerTypeSuper(ILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 419
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setLayerType(ILandroid/graphics/Paint;)V

    .line 420
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 4
    .param p1, "networkUp"    # Z

    .prologue
    .line 448
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setNetworkAvailablebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    return-void
.end method

.method public setNetworkAvailableSuper(Z)V
    .locals 0
    .param p1, "networkUp"    # Z

    .prologue
    .line 452
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setNetworkAvailable(Z)V

    .line 453
    return-void
.end method

.method public setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientBridge;)V
    .locals 4
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkResourceClientBridge;

    .prologue
    .line 393
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    return-void
.end method

.method public setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V
    .locals 1
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    .prologue
    .line 385
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkResourceClientBridge;

    if-eqz v0, :cond_0

    .line 386
    check-cast p1, Lorg/xwalk/core/internal/XWalkResourceClientBridge;

    .end local p1    # "client":Lorg/xwalk/core/internal/XWalkResourceClientInternal;
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientBridge;)V

    .line 390
    :goto_0
    return-void

    .line 388
    .restart local p1    # "client":Lorg/xwalk/core/internal/XWalkResourceClientInternal;
    :cond_0
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V

    goto :goto_0
.end method

.method public setResourceClientSuper(Lorg/xwalk/core/internal/XWalkResourceClientBridge;)V
    .locals 0
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkResourceClientBridge;

    .prologue
    .line 397
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V

    .line 398
    return-void
.end method

.method public setUIClient(Lorg/xwalk/core/internal/XWalkUIClientBridge;)V
    .locals 4
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkUIClientBridge;

    .prologue
    .line 374
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    return-void
.end method

.method public setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V
    .locals 1
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkUIClientInternal;

    .prologue
    .line 366
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkUIClientBridge;

    if-eqz v0, :cond_0

    .line 367
    check-cast p1, Lorg/xwalk/core/internal/XWalkUIClientBridge;

    .end local p1    # "client":Lorg/xwalk/core/internal/XWalkUIClientInternal;
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->setUIClient(Lorg/xwalk/core/internal/XWalkUIClientBridge;)V

    .line 371
    :goto_0
    return-void

    .line 369
    .restart local p1    # "client":Lorg/xwalk/core/internal/XWalkUIClientInternal;
    :cond_0
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V

    goto :goto_0
.end method

.method public setUIClientSuper(Lorg/xwalk/core/internal/XWalkUIClientBridge;)V
    .locals 0
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkUIClientBridge;

    .prologue
    .line 378
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V

    .line 379
    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 3
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 426
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    return-void
.end method

.method public setUserAgentStringSuper(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 430
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setUserAgentString(Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public setZOrderOnTop(Z)V
    .locals 4
    .param p1, "onTop"    # Z

    .prologue
    .line 554
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->setZOrderOnTopbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    return-void
.end method

.method public setZOrderOnTopSuper(Z)V
    .locals 0
    .param p1, "onTop"    # Z

    .prologue
    .line 558
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setZOrderOnTop(Z)V

    .line 559
    return-void
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->stopLoadingMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public stopLoadingSuper()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->stopLoading()V

    .line 110
    return-void
.end method

.method public zoomBy(F)V
    .locals 4
    .param p1, "factor"    # F

    .prologue
    .line 501
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomByfloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    return-void
.end method

.method public zoomBySuper(F)V
    .locals 0
    .param p1, "factor"    # F

    .prologue
    .line 505
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->zoomBy(F)V

    .line 506
    return-void
.end method

.method public zoomIn()Z
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomInMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public zoomInSuper()Z
    .locals 1

    .prologue
    .line 478
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->zoomIn()Z

    move-result v0

    .line 480
    .local v0, "ret":Z
    return v0
.end method

.method public zoomOut()Z
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewBridge;->zoomOutMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public zoomOutSuper()Z
    .locals 1

    .prologue
    .line 492
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->zoomOut()Z

    move-result v0

    .line 494
    .local v0, "ret":Z
    return v0
.end method
