.class Lorg/xwalk/core/internal/XWalkContent;
.super Ljava/lang/Object;
.source "XWalkContent.java"

# interfaces
.implements Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/internal/XWalkContent$XWalkGeolocationCallback;,
        Lorg/xwalk/core/internal/XWalkContent$XWalkIoThreadClientImpl;,
        Lorg/xwalk/core/internal/XWalkContent$DestroyRunnable;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "xwalk"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final SAVE_RESTORE_STATE_KEY:Ljava/lang/String; = "XWALKVIEW_STATE"

.field private static TAG:Ljava/lang/String;

.field private static javascriptInterfaceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static timerPaused:Z


# instance fields
.field private mCleanupReference:Lorg/chromium/content/common/CleanupReference;

.field private mContentView:Lorg/xwalk/core/internal/XWalkContentView;

.field private mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

.field private mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

.field private mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

.field private mGeolocationPermissions:Lorg/xwalk/core/internal/XWalkGeolocationPermissions;

.field private mIoThreadClient:Lorg/xwalk/core/internal/XWalkContentsIoThreadClient;

.field private mIsLoaded:Z

.field private mLaunchScreenManager:Lorg/xwalk/core/internal/XWalkLaunchScreenManager;

.field mNativeContent:J

.field mNativeWebContents:J

.field private mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

.field private mSettings:Lorg/xwalk/core/internal/XWalkSettings;

.field private mViewContext:Landroid/content/Context;

.field private mWebContents:Lorg/chromium/content_public/browser/WebContents;

.field private mWindow:Lorg/chromium/ui/base/ActivityWindowAndroid;

.field private mXWalkAutofillClient:Lorg/xwalk/core/internal/XWalkAutofillClient;

.field private mXWalkContentsDelegateAdapter:Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;

.field private mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    const-class v0, Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/internal/XWalkContent;->$assertionsDisabled:Z

    .line 60
    const-string v0, "XWalkContent"

    sput-object v0, Lorg/xwalk/core/internal/XWalkContent;->TAG:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lorg/xwalk/core/internal/XWalkContent;->javascriptInterfaceClass:Ljava/lang/Class;

    .line 414
    sput-boolean v1, Lorg/xwalk/core/internal/XWalkContent;->timerPaused:Z

    return-void

    :cond_0
    move v0, v1

    .line 54
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "xwView"    # Lorg/xwalk/core/internal/XWalkViewInternal;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mIsLoaded:Z

    .line 107
    iput-object p3, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    .line 108
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mViewContext:Landroid/content/Context;

    .line 109
    new-instance v1, Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-direct {v1, v2}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    .line 110
    new-instance v1, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-direct {v1, v2}, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;-><init>(Lorg/xwalk/core/internal/XWalkContentsClient;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkContentsDelegateAdapter:Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;

    .line 112
    new-instance v1, Lorg/xwalk/core/internal/XWalkContent$XWalkIoThreadClientImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/xwalk/core/internal/XWalkContent$XWalkIoThreadClientImpl;-><init>(Lorg/xwalk/core/internal/XWalkContent;Lorg/xwalk/core/internal/XWalkContent$1;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mIoThreadClient:Lorg/xwalk/core/internal/XWalkContentsIoThreadClient;

    .line 115
    new-instance v1, Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-virtual {p3}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/chromium/ui/base/ActivityWindowAndroid;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mWindow:Lorg/chromium/ui/base/ActivityWindowAndroid;

    .line 117
    new-instance v0, Lorg/xwalk/core/internal/InMemorySharedPreferences;

    invoke-direct {v0}, Lorg/xwalk/core/internal/InMemorySharedPreferences;-><init>()V

    .line 118
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    new-instance v1, Lorg/xwalk/core/internal/XWalkGeolocationPermissions;

    invoke-direct {v1, v0}, Lorg/xwalk/core/internal/XWalkGeolocationPermissions;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mGeolocationPermissions:Lorg/xwalk/core/internal/XWalkGeolocationPermissions;

    .line 120
    new-instance v1, Lorg/xwalk/core/internal/XWalkMediaPlayerResourceLoadingFilter;

    invoke-direct {v1}, Lorg/xwalk/core/internal/XWalkMediaPlayerResourceLoadingFilter;-><init>()V

    invoke-static {v1}, Lorg/chromium/media/MediaPlayerBridge;->setResourceLoadingFilter(Lorg/chromium/media/MediaPlayerBridge$ResourceLoadingFilter;)V

    .line 123
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContent;->nativeInit()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/xwalk/core/internal/XWalkContent;->setNativeContent(J)V

    .line 125
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->load(Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;)V

    .line 126
    return-void
.end method

.method static synthetic access$000(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 59
    invoke-static {p0, p1}, Lorg/xwalk/core/internal/XWalkContent;->nativeDestroy(J)V

    return-void
.end method

.method static synthetic access$300(Lorg/xwalk/core/internal/XWalkContent;)Lorg/xwalk/core/internal/XWalkSettings;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContent;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettings;

    return-object v0
.end method

.method static synthetic access$400(Lorg/xwalk/core/internal/XWalkContent;)Lorg/xwalk/core/internal/XWalkContentsClientBridge;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContent;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    return-object v0
.end method

.method static synthetic access$500(Lorg/xwalk/core/internal/XWalkContent;)Lorg/xwalk/core/internal/XWalkGeolocationPermissions;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContent;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mGeolocationPermissions:Lorg/xwalk/core/internal/XWalkGeolocationPermissions;

    return-object v0
.end method

.method static synthetic access$600(Lorg/xwalk/core/internal/XWalkContent;JZLjava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContent;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkContent;->nativeInvokeGeolocationCallback(JZLjava/lang/String;)V

    return-void
.end method

.method private isOpaque(I)Z
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 447
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeClearCache(JZ)V
.end method

.method private static native nativeDestroy(J)V
.end method

.method private native nativeDevToolsAgentId(J)Ljava/lang/String;
.end method

.method private native nativeGetRoutingID(J)I
.end method

.method private native nativeGetState(J)[B
.end method

.method private native nativeGetVersion(J)Ljava/lang/String;
.end method

.method private native nativeGetWebContents(J)Lorg/chromium/content_public/browser/WebContents;
.end method

.method private native nativeInit()J
.end method

.method private native nativeInvokeGeolocationCallback(JZLjava/lang/String;)V
.end method

.method private native nativeReleasePopupXWalkContent(J)J
.end method

.method private native nativeSetBackgroundColor(JI)V
.end method

.method private native nativeSetJavaPeers(JLorg/xwalk/core/internal/XWalkContent;Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;Lorg/xwalk/core/internal/XWalkContentsClientBridge;Lorg/xwalk/core/internal/XWalkContentsIoThreadClient;Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;)V
.end method

.method private native nativeSetJsOnlineProperty(JZ)V
.end method

.method private native nativeSetManifest(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeSetState(J[B)Z
.end method

.method private onGeolocationPermissionsShowPrompt(Ljava/lang/String;)V
    .locals 4
    .param p1, "origin"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 722
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 737
    :goto_0
    return-void

    .line 724
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettings;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkSettings;->getGeolocationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 725
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/xwalk/core/internal/XWalkContent;->nativeInvokeGeolocationCallback(JZLjava/lang/String;)V

    goto :goto_0

    .line 729
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mGeolocationPermissions:Lorg/xwalk/core/internal/XWalkGeolocationPermissions;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkGeolocationPermissions;->hasOrigin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 730
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mGeolocationPermissions:Lorg/xwalk/core/internal/XWalkGeolocationPermissions;

    invoke-virtual {v2, p1}, Lorg/xwalk/core/internal/XWalkGeolocationPermissions;->isOriginAllowed(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/xwalk/core/internal/XWalkContent;->nativeInvokeGeolocationCallback(JZLjava/lang/String;)V

    goto :goto_0

    .line 735
    :cond_2
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    new-instance v1, Lorg/xwalk/core/internal/XWalkContent$XWalkGeolocationCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/xwalk/core/internal/XWalkContent$XWalkGeolocationCallback;-><init>(Lorg/xwalk/core/internal/XWalkContent;Lorg/xwalk/core/internal/XWalkContent$1;)V

    invoke-virtual {v0, p1, v1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lorg/xwalk/core/internal/XWalkGeolocationPermissions$Callback;)V

    goto :goto_0
.end method

.method private receivePopupContents(J)V
    .locals 1
    .param p1, "popupNativeXWalkContents"    # J

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkContent;->setNativeContent(J)V

    .line 218
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onShow()V

    .line 219
    return-void
.end method

.method static setJavascriptInterfaceClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkContent;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/xwalk/core/internal/XWalkContent;->javascriptInterfaceClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 86
    :cond_0
    sput-object p0, Lorg/xwalk/core/internal/XWalkContent;->javascriptInterfaceClass:Ljava/lang/Class;

    .line 87
    return-void
.end method

.method private setNativeContent(J)V
    .locals 13
    .param p1, "newNativeContent"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 129
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkContent;->destroy()V

    .line 131
    iput-object v7, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 134
    :cond_0
    sget-boolean v1, Lorg/xwalk/core/internal/XWalkContent;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mCleanupReference:Lorg/chromium/content/common/CleanupReference;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 137
    :cond_2
    const-string v1, "animatable-xwalk-view"

    invoke-static {v1}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->getValue(Ljava/lang/String;)Z

    move-result v0

    .line 139
    .local v0, "animated":Z
    if-eqz v0, :cond_4

    sget-object v10, Lorg/chromium/content/browser/ContentViewRenderView$CompositingSurfaceType;->TEXTURE_VIEW:Lorg/chromium/content/browser/ContentViewRenderView$CompositingSurfaceType;

    .line 141
    .local v10, "surfaceType":Lorg/chromium/content/browser/ContentViewRenderView$CompositingSurfaceType;
    :goto_0
    new-instance v1, Lorg/xwalk/core/internal/XWalkContent$1;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mViewContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v10}, Lorg/xwalk/core/internal/XWalkContent$1;-><init>(Lorg/xwalk/core/internal/XWalkContent;Landroid/content/Context;Lorg/chromium/content/browser/ContentViewRenderView$CompositingSurfaceType;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    .line 147
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mWindow:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContentViewRenderView;->onNativeLibraryLoaded(Lorg/chromium/ui/base/WindowAndroid;)V

    .line 148
    new-instance v1, Lorg/xwalk/core/internal/XWalkLaunchScreenManager;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mViewContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-direct {v1, v2, v3}, Lorg/xwalk/core/internal/XWalkLaunchScreenManager;-><init>(Landroid/content/Context;Lorg/xwalk/core/internal/XWalkViewInternal;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mLaunchScreenManager:Lorg/xwalk/core/internal/XWalkLaunchScreenManager;

    .line 149
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mLaunchScreenManager:Lorg/xwalk/core/internal/XWalkLaunchScreenManager;

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContentViewRenderView;->registerFirstRenderedFrameListener(Lorg/chromium/content/browser/ContentViewRenderView$FirstRenderedFrameListener;)V

    .line 150
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Lorg/xwalk/core/internal/XWalkViewInternal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iput-wide p1, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    .line 158
    new-instance v1, Lorg/chromium/content/common/CleanupReference;

    new-instance v2, Lorg/xwalk/core/internal/XWalkContent$DestroyRunnable;

    iget-wide v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {v2, v4, v5, v7}, Lorg/xwalk/core/internal/XWalkContent$DestroyRunnable;-><init>(JLorg/xwalk/core/internal/XWalkContent$1;)V

    invoke-direct {v1, p0, v2}, Lorg/chromium/content/common/CleanupReference;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mCleanupReference:Lorg/chromium/content/common/CleanupReference;

    .line 160
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v2, v3}, Lorg/xwalk/core/internal/XWalkContent;->nativeGetWebContents(J)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v11

    .line 163
    .local v11, "webContents":Lorg/chromium/content_public/browser/WebContents;
    new-instance v1, Lorg/chromium/content/browser/ContentViewCore;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mViewContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/chromium/content/browser/ContentViewCore;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 164
    new-instance v1, Lorg/xwalk/core/internal/XWalkContentView;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mViewContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-direct {v1, v2, v3, v4}, Lorg/xwalk/core/internal/XWalkContentView;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;Lorg/xwalk/core/internal/XWalkViewInternal;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    .line 165
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mWindow:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-virtual {v1, v2, v3, v11, v4}, Lorg/chromium/content/browser/ContentViewCore;->initialize(Landroid/view/ViewGroup;Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/ui/base/WindowAndroid;)V

    .line 166
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 167
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    .line 168
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Lorg/xwalk/core/internal/XWalkViewInternal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContentViewCore;->setContentViewClient(Lorg/chromium/content/browser/ContentViewClient;)V

    .line 172
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContentViewRenderView;->setCurrentContentViewCore(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 174
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->installWebContentsObserver(Lorg/chromium/content_public/browser/WebContents;)V

    .line 177
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mViewContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->create(Landroid/content/Context;)Lorg/chromium/ui/gfx/DeviceDisplayInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDIPScale()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->setDIPScale(D)V

    .line 179
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContentViewCore;->setDownloadDelegate(Lorg/chromium/content/browser/ContentViewDownloadDelegate;)V

    .line 185
    new-instance v1, Lorg/xwalk/core/internal/XWalkSettings;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mViewContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v11, v3}, Lorg/xwalk/core/internal/XWalkSettings;-><init>(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;Z)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettings;

    .line 188
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettings;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/XWalkSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 190
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    const-string v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 191
    .local v9, "language":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v9, "en"

    .line 192
    :cond_3
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettings;

    invoke-virtual {v1, v9}, Lorg/xwalk/core/internal/XWalkSettings;->setAcceptLanguages(Ljava/lang/String;)V

    .line 194
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    iget-object v5, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkContentsDelegateAdapter:Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;

    iget-object v6, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iget-object v7, p0, Lorg/xwalk/core/internal/XWalkContent;->mIoThreadClient:Lorg/xwalk/core/internal/XWalkContentsIoThreadClient;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->getInterceptNavigationDelegate()Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;

    move-result-object v8

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v1 .. v8}, Lorg/xwalk/core/internal/XWalkContent;->nativeSetJavaPeers(JLorg/xwalk/core/internal/XWalkContent;Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;Lorg/xwalk/core/internal/XWalkContentsClientBridge;Lorg/xwalk/core/internal/XWalkContentsIoThreadClient;Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;)V

    .line 196
    return-void

    .line 139
    .end local v9    # "language":Ljava/lang/String;
    .end local v10    # "surfaceType":Lorg/chromium/content/browser/ContentViewRenderView$CompositingSurfaceType;
    .end local v11    # "webContents":Lorg/chromium/content_public/browser/WebContents;
    :cond_4
    sget-object v10, Lorg/chromium/content/browser/ContentViewRenderView$CompositingSurfaceType;->SURFACE_VIEW:Lorg/chromium/content/browser/ContentViewRenderView$CompositingSurfaceType;

    goto/16 :goto_0
.end method

.method private setXWalkAutofillClient(Lorg/xwalk/core/internal/XWalkAutofillClient;)V
    .locals 1
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkAutofillClient;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 846
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkAutofillClient:Lorg/xwalk/core/internal/XWalkAutofillClient;

    .line 847
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {p1, v0}, Lorg/xwalk/core/internal/XWalkAutofillClient;->init(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 848
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 292
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    sget-object v1, Lorg/xwalk/core/internal/XWalkContent;->javascriptInterfaceClass:Ljava/lang/Class;

    invoke-virtual {v0, p1, p2, v1}, Lorg/chromium/content/browser/ContentViewCore;->addPossiblyUnsafeJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public canGoBack()Z
    .locals 4

    .prologue
    .line 383
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->canGoBack()Z

    move-result v0

    goto :goto_0
.end method

.method public canGoForward()Z
    .locals 4

    .prologue
    .line 392
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->canGoForward()Z

    move-result v0

    goto :goto_0
.end method

.method public canZoomIn()Z
    .locals 4

    .prologue
    .line 826
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 827
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->canZoomIn()Z

    move-result v0

    goto :goto_0
.end method

.method public canZoomOut()Z
    .locals 4

    .prologue
    .line 831
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 832
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->canZoomOut()Z

    move-result v0

    goto :goto_0
.end method

.method public clearCache(Z)V
    .locals 4
    .param p1, "includeDiskFiles"    # Z

    .prologue
    .line 373
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1, p1}, Lorg/xwalk/core/internal/XWalkContent;->nativeClearCache(JZ)V

    goto :goto_0
.end method

.method public clearHistory()V
    .locals 4

    .prologue
    .line 378
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 380
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->clearHistory()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 609
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 626
    :goto_0
    return-void

    .line 611
    :cond_0
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->unload(Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;)V

    .line 613
    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkContent;->setNotificationService(Lorg/xwalk/core/internal/XWalkNotificationService;)V

    .line 615
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->removeView(Landroid/view/View;)V

    .line 616
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->removeView(Landroid/view/View;)V

    .line 617
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/ContentViewRenderView;->setCurrentContentViewCore(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 620
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->destroy()V

    .line 621
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->destroy()V

    .line 623
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mCleanupReference:Lorg/chromium/content/common/CleanupReference;

    invoke-virtual {v0}, Lorg/chromium/content/common/CleanupReference;->cleanupNow()V

    .line 624
    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mCleanupReference:Lorg/chromium/content/common/CleanupReference;

    .line 625
    iput-wide v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    goto :goto_0
.end method

.method public devToolsAgentId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 486
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, ""

    .line 487
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1}, Lorg/xwalk/core/internal/XWalkContent;->nativeDevToolsAgentId(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method disableRemoteDebugging()V
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    if-nez v0, :cond_0

    .line 763
    :goto_0
    return-void

    .line 758
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkDevToolsServer;->isRemoteDebuggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkDevToolsServer;->setRemoteDebuggingEnabled(Z)V

    .line 761
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkDevToolsServer;->destroy()V

    .line 762
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    goto :goto_0
.end method

.method doLoadUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 223
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0, v1}, Lorg/chromium/content_public/browser/NavigationController;->reload(Z)V

    .line 248
    :goto_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentView;->requestFocus()Z

    .line 249
    :goto_1
    return-void

    .line 227
    :cond_0
    const/4 v7, 0x0

    .line 228
    .local v7, "params":Lorg/chromium/content_public/browser/LoadUrlParams;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    :cond_1
    new-instance v7, Lorg/chromium/content_public/browser/LoadUrlParams;

    .end local v7    # "params":Lorg/chromium/content_public/browser/LoadUrlParams;
    invoke-direct {v7, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    .line 244
    .restart local v7    # "params":Lorg/chromium/content_public/browser/LoadUrlParams;
    :goto_2
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Lorg/chromium/content_public/browser/LoadUrlParams;->setOverrideUserAgent(I)V

    .line 245
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0, v7}, Lorg/chromium/content_public/browser/NavigationController;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)V

    goto :goto_0

    .line 236
    :cond_2
    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/html"

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v5, "utf-8"

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/chromium/content_public/browser/LoadUrlParams;->createLoadDataParamsWithBaseUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/content_public/browser/LoadUrlParams;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_2

    .line 239
    :catch_0
    move-exception v6

    .line 240
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v0, Lorg/xwalk/core/internal/XWalkContent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load data string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public enableRemoteDebugging()V
    .locals 4

    .prologue
    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mViewContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_devtools_remote"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "socketName":Ljava/lang/String;
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    if-nez v1, :cond_0

    .line 749
    new-instance v1, Lorg/xwalk/core/internal/XWalkDevToolsServer;

    invoke-direct {v1, v0}, Lorg/xwalk/core/internal/XWalkDevToolsServer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    .line 750
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    const/4 v2, 0x1

    sget-object v3, Lorg/xwalk/core/internal/XWalkDevToolsServer$Security;->ALLOW_SOCKET_ACCESS:Lorg/xwalk/core/internal/XWalkDevToolsServer$Security;

    invoke-virtual {v1, v2, v3}, Lorg/xwalk/core/internal/XWalkDevToolsServer;->setRemoteDebuggingEnabled(ZLorg/xwalk/core/internal/XWalkDevToolsServer$Security;)V

    .line 753
    :cond_0
    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 6
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
    .line 298
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 310
    :goto_0
    return-void

    .line 299
    :cond_0
    move-object v1, p2

    .line 300
    .local v1, "fCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 301
    .local v0, "coreCallback":Lorg/chromium/content_public/browser/JavaScriptCallback;
    if-eqz v1, :cond_1

    .line 302
    new-instance v0, Lorg/xwalk/core/internal/XWalkContent$2;

    .end local v0    # "coreCallback":Lorg/chromium/content_public/browser/JavaScriptCallback;
    invoke-direct {v0, p0, v1}, Lorg/xwalk/core/internal/XWalkContent$2;-><init>(Lorg/xwalk/core/internal/XWalkContent;Landroid/webkit/ValueCallback;)V

    .line 309
    .restart local v0    # "coreCallback":Lorg/chromium/content_public/browser/JavaScriptCallback;
    :cond_1
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Lorg/chromium/content_public/browser/WebContents;->evaluateJavaScript(Ljava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V

    goto :goto_0
.end method

.method exitFullscreen()V
    .locals 4

    .prologue
    .line 570
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkContent;->hasEnteredFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeWebContents:J

    invoke-virtual {v0, v2, v3}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->exitFullscreen(J)V

    .line 573
    :cond_0
    return-void
.end method

.method public getContentViewCoreForTest()Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    return-object v0
.end method

.method public getNavigationHistory()Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;
    .locals 4

    .prologue
    .line 529
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 531
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v2}, Lorg/chromium/content_public/browser/NavigationController;->getNavigationHistory()Lorg/chromium/content_public/browser/NavigationHistory;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/chromium/content_public/browser/NavigationHistory;)V

    goto :goto_0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 432
    iget-wide v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-object v2

    .line 433
    :cond_1
    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v3}, Lorg/chromium/content_public/browser/NavigationController;->getNavigationHistory()Lorg/chromium/content_public/browser/NavigationHistory;

    move-result-object v1

    .line 434
    .local v1, "history":Lorg/chromium/content_public/browser/NavigationHistory;
    invoke-virtual {v1}, Lorg/chromium/content_public/browser/NavigationHistory;->getCurrentEntryIndex()I

    move-result v0

    .line 435
    .local v0, "currentIndex":I
    if-ltz v0, :cond_0

    invoke-virtual {v1}, Lorg/chromium/content_public/browser/NavigationHistory;->getEntryCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 436
    invoke-virtual {v1, v0}, Lorg/chromium/content_public/browser/NavigationHistory;->getEntryAtIndex(I)Lorg/chromium/content_public/browser/NavigationEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content_public/browser/NavigationEntry;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getRemoteDebuggingUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 766
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 768
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ws://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkDevToolsServer;->getSocketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/devtools/page/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkContent;->devToolsAgentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRoutingID()I
    .locals 2

    .prologue
    .line 629
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1}, Lorg/xwalk/core/internal/XWalkContent;->nativeGetRoutingID(J)I

    move-result v0

    return v0
.end method

.method public getSettings()Lorg/xwalk/core/internal/XWalkSettings;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettings;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 6

    .prologue
    .line 285
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 288
    :cond_0
    :goto_0
    return-object v0

    .line 286
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "title":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 278
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    move-object v0, v1

    .line 281
    :cond_0
    :goto_0
    return-object v0

    .line 279
    :cond_1
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v2}, Lorg/chromium/content_public/browser/WebContents;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "url":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getXWalkVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 442
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, ""

    .line 443
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1}, Lorg/xwalk/core/internal/XWalkContent;->nativeGetVersion(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getXWalkWebChromeClient()Lorg/xwalk/core/internal/XWalkWebChromeClient;
    .locals 4

    .prologue
    .line 328
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 329
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->getXWalkWebChromeClient()Lorg/xwalk/core/internal/XWalkWebChromeClient;

    move-result-object v0

    goto :goto_0
.end method

.method public goBack()V
    .locals 4

    .prologue
    .line 387
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 389
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->goBack()V

    goto :goto_0
.end method

.method public goForward()V
    .locals 4

    .prologue
    .line 396
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 398
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->goForward()V

    goto :goto_0
.end method

.method hasEnteredFullscreen()Z
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->hasEnteredFullscreen()Z

    move-result v0

    return v0
.end method

.method public hideAutofillPopup()V
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkAutofillClient:Lorg/xwalk/core/internal/XWalkAutofillClient;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkAutofillClient:Lorg/xwalk/core/internal/XWalkAutofillClient;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkAutofillClient;->hideAutofillPopup()V

    .line 842
    :cond_0
    return-void
.end method

.method public installWebContentsObserverForTest(Lorg/xwalk/core/internal/XWalkContentsClient;)V
    .locals 4
    .param p1, "contentClient"    # Lorg/xwalk/core/internal/XWalkContentsClient;

    .prologue
    .line 481
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 483
    :goto_0
    return-void

    .line 482
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xwalk/core/internal/XWalkContentsClient;->installWebContentsObserver(Lorg/chromium/content_public/browser/WebContents;)V

    goto :goto_0
.end method

.method public loadAppFromManifest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 495
    iget-wide v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 526
    :cond_1
    :goto_0
    return-void

    .line 501
    :cond_2
    move-object v1, p2

    .line 503
    .local v1, "content":Ljava/lang/String;
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 505
    :cond_3
    :try_start_0
    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v4}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, p1}, Lorg/xwalk/core/internal/AndroidProtocolHandler;->getUrlContent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 514
    :cond_4
    move-object v0, p1

    .line 515
    .local v0, "baseUrl":Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 516
    .local v3, "position":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 517
    const/4 v4, 0x0

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 522
    :goto_1
    iget-wide v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v4, v5, v0, v1}, Lorg/xwalk/core/internal/XWalkContent;->nativeSetManifest(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 523
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse the manifest file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 506
    .end local v0    # "baseUrl":Ljava/lang/String;
    .end local v3    # "position":I
    :catch_0
    move-exception v2

    .line 507
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read the manifest: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 519
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "baseUrl":Ljava/lang/String;
    .restart local v3    # "position":I
    :cond_5
    sget-object v4, Lorg/xwalk/core/internal/XWalkContent;->TAG:Ljava/lang/String;

    const-string v5, "The url of manifest.json is probably not set correctly."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 525
    :cond_6
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mIsLoaded:Z

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 252
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkContent;->doLoadUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mIsLoaded:Z

    goto :goto_0
.end method

.method navigateTo(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 401
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0, p1}, Lorg/chromium/content_public/browser/NavigationController;->goToOffset(I)V

    .line 402
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 363
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mWindow:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/ui/base/ActivityWindowAndroid;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 633
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentView;->onCreateInputConnectionSuper(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 741
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->onGeolocationPermissionsHidePrompt()V

    .line 742
    return-void
.end method

.method public onGetFullscreenFlagFromManifest(Z)V
    .locals 3
    .param p1, "enterFullscreen"    # Z
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 592
    if-eqz p1, :cond_0

    .line 593
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 594
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 595
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 606
    .end local v0    # "decorView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 603
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public onGetUrlAndLaunchScreenFromManifest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "readyWhen"    # Ljava/lang/String;
    .param p3, "imageBorder"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 584
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mLaunchScreenManager:Lorg/xwalk/core/internal/XWalkLaunchScreenManager;

    invoke-virtual {v0, p2, p3}, Lorg/xwalk/core/internal/XWalkLaunchScreenManager;->displayLaunchScreen(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mLaunchScreenManager:Lorg/xwalk/core/internal/XWalkLaunchScreenManager;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->registerPageLoadListener(Lorg/xwalk/core/internal/PageLoadListener;)V

    .line 587
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/xwalk/core/internal/XWalkContent;->loadUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onGetUrlFromManifest(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 577
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 578
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/xwalk/core/internal/XWalkContent;->loadUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :cond_0
    return-void
.end method

.method public onKeyValueChanged(Ljava/lang/String;Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;

    .prologue
    .line 773
    if-nez p1, :cond_1

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 774
    :cond_1
    const-string v0, "remote-debugging"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 775
    invoke-virtual {p2}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->getBooleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkContent;->enableRemoteDebugging()V

    goto :goto_0

    .line 776
    :cond_2
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkContent;->disableRemoteDebugging()V

    goto :goto_0

    .line 777
    :cond_3
    const-string v0, "enable-javascript"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 778
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettings;

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettings;

    invoke-virtual {p2}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->getBooleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkSettings;->setJavaScriptEnabled(Z)V

    goto :goto_0

    .line 781
    :cond_4
    const-string v0, "javascript-can-open-window"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 782
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettings;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettings;

    invoke-virtual {p2}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->getBooleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    goto :goto_0

    .line 785
    :cond_5
    const-string v0, "allow-universal-access-from-file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 786
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettings;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettings;

    invoke-virtual {p2}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->getBooleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    goto :goto_0

    .line 789
    :cond_6
    const-string v0, "support-multiple-windows"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettings;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettings;

    invoke-virtual {p2}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->getBooleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkSettings;->setSupportMultipleWindows(Z)V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 368
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 369
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->onNewIntent(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 353
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 355
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onHide()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 358
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 360
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onShow()V

    goto :goto_0
.end method

.method public pauseTimers()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 420
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkContent;->timerPaused:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    invoke-static {v4}, Lorg/chromium/content/browser/ContentViewStatics;->setWebKitSharedTimersSuspended(Z)V

    .line 422
    sput-boolean v4, Lorg/xwalk/core/internal/XWalkContent;->timerPaused:Z

    goto :goto_0
.end method

.method public reload(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v4, 0x1

    .line 264
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 266
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 272
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0, v4}, Lorg/chromium/content_public/browser/NavigationController;->reload(Z)V

    .line 274
    :goto_1
    iput-boolean v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mIsLoaded:Z

    goto :goto_0

    .line 268
    :pswitch_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0, v4}, Lorg/chromium/content_public/browser/NavigationController;->reloadIgnoringCache(Z)V

    goto :goto_1

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public restoreState(Landroid/os/Bundle;)Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;
    .locals 8
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 547
    iget-wide v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-object v2

    .line 549
    :cond_1
    const-string v3, "XWALKVIEW_STATE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 550
    .local v1, "state":[B
    if-eqz v1, :cond_0

    .line 552
    iget-wide v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v4, v5, v1}, Lorg/xwalk/core/internal/XWalkContent;->nativeSetState(J[B)Z

    move-result v0

    .line 558
    .local v0, "result":Z
    if-eqz v0, :cond_2

    .line 559
    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v4}, Lorg/chromium/content_public/browser/WebContents;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->onUpdateTitle(Ljava/lang/String;)V

    .line 562
    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkContent;->getNavigationHistory()Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    move-result-object v2

    goto :goto_0
.end method

.method public resumeTimers()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 426
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkContent;->timerPaused:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    invoke-static {v4}, Lorg/chromium/content/browser/ContentViewStatics;->setWebKitSharedTimersSuspended(Z)V

    .line 428
    sput-boolean v4, Lorg/xwalk/core/internal/XWalkContent;->timerPaused:Z

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;
    .locals 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 537
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 543
    :cond_0
    :goto_0
    return-object v1

    .line 539
    :cond_1
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v2, v3}, Lorg/xwalk/core/internal/XWalkContent;->nativeGetState(J)[B

    move-result-object v0

    .line 540
    .local v0, "state":[B
    if-eqz v0, :cond_0

    .line 542
    const-string v1, "XWALKVIEW_STATE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 543
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkContent;->getNavigationHistory()Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    move-result-object v1

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 451
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 467
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mIsLoaded:Z

    if-nez v0, :cond_1

    .line 453
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    new-instance v1, Lorg/xwalk/core/internal/XWalkContent$3;

    invoke-direct {v1, p0, p1}, Lorg/xwalk/core/internal/XWalkContent$3;-><init>(Lorg/xwalk/core/internal/XWalkContent;I)V

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 461
    :cond_1
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkContent;->isOpaque(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 462
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/xwalk/core/internal/XWalkContent;->setOverlayVideoMode(Z)V

    .line 463
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewRenderView;->setSurfaceViewBackgroundColor(I)V

    .line 464
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->setBackgroundOpaque(Z)V

    .line 466
    :cond_2
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1, p1}, Lorg/xwalk/core/internal/XWalkContent;->nativeSetBackgroundColor(JI)V

    goto :goto_0
.end method

.method public setDownloadListener(Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;)V
    .locals 4
    .param p1, "listener"    # Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;

    .prologue
    .line 338
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->setDownloadListener(Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;)V

    goto :goto_0
.end method

.method public setNavigationHandler(Lorg/xwalk/core/internal/XWalkNavigationHandler;)V
    .locals 4
    .param p1, "handler"    # Lorg/xwalk/core/internal/XWalkNavigationHandler;

    .prologue
    .line 343
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->setNavigationHandler(Lorg/xwalk/core/internal/XWalkNavigationHandler;)V

    goto :goto_0
.end method

.method public setNetworkAvailable(Z)V
    .locals 4
    .param p1, "networkUp"    # Z

    .prologue
    .line 470
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 472
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1, p1}, Lorg/xwalk/core/internal/XWalkContent;->nativeSetJsOnlineProperty(JZ)V

    goto :goto_0
.end method

.method public setNotificationService(Lorg/xwalk/core/internal/XWalkNotificationService;)V
    .locals 4
    .param p1, "service"    # Lorg/xwalk/core/internal/XWalkNotificationService;

    .prologue
    .line 348
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->setNotificationService(Lorg/xwalk/core/internal/XWalkNotificationService;)V

    goto :goto_0
.end method

.method public setOverlayVideoMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 797
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewRenderView;->setOverlayVideoMode(Z)V

    .line 800
    :cond_0
    return-void
.end method

.method public setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V
    .locals 4
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    .prologue
    .line 318
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 320
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V

    goto :goto_0
.end method

.method public setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V
    .locals 4
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkUIClientInternal;

    .prologue
    .line 313
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V

    goto :goto_0
.end method

.method public setXWalkClient(Lorg/xwalk/core/internal/XWalkClient;)V
    .locals 4
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkClient;

    .prologue
    .line 333
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 335
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->setXWalkClient(Lorg/xwalk/core/internal/XWalkClient;)V

    goto :goto_0
.end method

.method public setXWalkWebChromeClient(Lorg/xwalk/core/internal/XWalkWebChromeClient;)V
    .locals 4
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkWebChromeClient;

    .prologue
    .line 323
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->setXWalkWebChromeClient(Lorg/xwalk/core/internal/XWalkWebChromeClient;)V

    goto :goto_0
.end method

.method public setZOrderOnTop(Z)V
    .locals 1
    .param p1, "onTop"    # Z

    .prologue
    .line 803
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    if-nez v0, :cond_0

    .line 805
    :goto_0
    return-void

    .line 804
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewRenderView;->setZOrderOnTop(Z)V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 4

    .prologue
    .line 405
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->stop()V

    .line 407
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->onStopLoading()V

    goto :goto_0
.end method

.method public supplyContentsForPopup(Lorg/xwalk/core/internal/XWalkContent;)V
    .locals 6
    .param p1, "newContents"    # Lorg/xwalk/core/internal/XWalkContent;

    .prologue
    const-wide/16 v4, 0x0

    .line 199
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v2, v3}, Lorg/xwalk/core/internal/XWalkContent;->nativeReleasePopupXWalkContent(J)J

    move-result-wide v0

    .line 202
    .local v0, "popupNativeXWalkContent":J
    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    .line 203
    sget-object v2, Lorg/xwalk/core/internal/XWalkContent;->TAG:Ljava/lang/String;

    const-string v3, "Popup XWalkView bind failed: no pending content."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkContent;->destroy()V

    goto :goto_0

    .line 207
    :cond_2
    if-nez p1, :cond_3

    .line 208
    invoke-static {v0, v1}, Lorg/xwalk/core/internal/XWalkContent;->nativeDestroy(J)V

    goto :goto_0

    .line 212
    :cond_3
    invoke-direct {p1, v0, v1}, Lorg/xwalk/core/internal/XWalkContent;->receivePopupContents(J)V

    goto :goto_0
.end method

.method public zoomBy(F)V
    .locals 4
    .param p1, "delta"    # F

    .prologue
    .line 818
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 823
    :goto_0
    return-void

    .line 819
    :cond_0
    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 820
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "zoom delta value outside [0.01, 100] range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :cond_2
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->pinchByDelta(F)Z

    goto :goto_0
.end method

.method public zoomIn()Z
    .locals 4

    .prologue
    .line 808
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 809
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->zoomIn()Z

    move-result v0

    goto :goto_0
.end method

.method public zoomOut()Z
    .locals 4

    .prologue
    .line 813
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 814
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->zoomOut()Z

    move-result v0

    goto :goto_0
.end method
