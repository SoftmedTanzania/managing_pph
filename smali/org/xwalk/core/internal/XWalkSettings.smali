.class public Lorg/xwalk/core/internal/XWalkSettings;
.super Ljava/lang/Object;
.source "XWalkSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/internal/XWalkSettings$EventHandler;,
        Lorg/xwalk/core/internal/XWalkSettings$LazyDefaultUserAgent;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "xwalk"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MAXIMUM_FONT_SIZE:I = 0x48

.field private static final MINIMUM_FONT_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "XWalkSettings"

.field private static sAppCachePathIsSet:Z

.field private static final sGlobalContentSettingsLock:Ljava/lang/Object;


# instance fields
.field private mAcceptLanguages:Ljava/lang/String;

.field private mAllowContentUrlAccess:Z

.field private mAllowFileAccessFromFileURLs:Z

.field private mAllowFileUrlAccess:Z

.field private mAllowScriptsToCloseWindows:Z

.field private mAllowUniversalAccessFromFileURLs:Z

.field private mAppCacheEnabled:Z

.field private mAutoCompleteEnabled:Z

.field private mBlockNetworkLoads:Z

.field private mCacheMode:I

.field private final mContext:Landroid/content/Context;

.field private mDatabaseEnabled:Z

.field private mDefaultVideoPosterURL:Ljava/lang/String;

.field private mDomStorageEnabled:Z

.field private final mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

.field private mGeolocationEnabled:Z

.field private mImagesEnabled:Z

.field private mIsUpdateWebkitPrefsMessagePending:Z

.field private mJavaScriptCanOpenWindowsAutomatically:Z

.field private mJavaScriptEnabled:Z

.field private mLoadsImagesAutomatically:Z

.field private mMediaPlaybackRequiresUserGesture:Z

.field private mNativeXWalkSettings:J

.field private mShouldFocusFirstNode:Z

.field private mSupportMultipleWindows:Z

.field private mUseWideViewport:Z

.field private mUserAgent:Ljava/lang/String;

.field private final mXWalkSettingsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    const-class v0, Lorg/xwalk/core/internal/XWalkSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/internal/XWalkSettings;->$assertionsDisabled:Z

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/xwalk/core/internal/XWalkSettings;->sGlobalContentSettingsLock:Ljava/lang/Object;

    .line 67
    sput-boolean v1, Lorg/xwalk/core/internal/XWalkSettings;->sAppCachePathIsSet:Z

    return-void

    :cond_0
    move v0, v1

    .line 23
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webContents"    # Lorg/chromium/content_public/browser/WebContents;
    .param p3, "isAccessFromFileURLsGrantedByDefault"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    .line 37
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowScriptsToCloseWindows:Z

    .line 38
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mLoadsImagesAutomatically:Z

    .line 39
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mImagesEnabled:Z

    .line 40
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mJavaScriptEnabled:Z

    .line 41
    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowUniversalAccessFromFileURLs:Z

    .line 42
    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowFileAccessFromFileURLs:Z

    .line 43
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 44
    const/4 v2, -0x1

    iput v2, p0, Lorg/xwalk/core/internal/XWalkSettings;->mCacheMode:I

    .line 45
    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mSupportMultipleWindows:Z

    .line 46
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAppCacheEnabled:Z

    .line 47
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mDomStorageEnabled:Z

    .line 48
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mDatabaseEnabled:Z

    .line 49
    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mUseWideViewport:Z

    .line 50
    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mMediaPlaybackRequiresUserGesture:Z

    .line 55
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowContentUrlAccess:Z

    .line 56
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowFileUrlAccess:Z

    .line 57
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mShouldFocusFirstNode:Z

    .line 58
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mGeolocationEnabled:Z

    .line 70
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettings;->mNativeXWalkSettings:J

    .line 73
    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mIsUpdateWebkitPrefsMessagePending:Z

    .line 80
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAutoCompleteEnabled:Z

    .line 146
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 147
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mContext:Landroid/content/Context;

    .line 148
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettings;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mBlockNetworkLoads:Z

    .line 153
    if-eqz p3, :cond_1

    .line 154
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowUniversalAccessFromFileURLs:Z

    .line 155
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowFileAccessFromFileURLs:Z

    .line 158
    :cond_1
    invoke-static {}, Lorg/xwalk/core/internal/XWalkSettings$LazyDefaultUserAgent;->access$500()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mUserAgent:Ljava/lang/String;

    .line 160
    new-instance v0, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-direct {v0, p0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;-><init>(Lorg/xwalk/core/internal/XWalkSettings;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    .line 162
    invoke-virtual {p0, p2}, Lorg/xwalk/core/internal/XWalkSettings;->setWebContents(Lorg/chromium/content_public/browser/WebContents;)V

    .line 163
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lorg/xwalk/core/internal/XWalkSettings;->nativeGetDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/xwalk/core/internal/XWalkSettings;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettings;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lorg/xwalk/core/internal/XWalkSettings;)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettings;

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettings;->updateWebkitPreferencesOnUiThread()V

    return-void
.end method

.method static synthetic access$300(Lorg/xwalk/core/internal/XWalkSettings;)Z
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettings;

    .prologue
    .line 24
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mIsUpdateWebkitPrefsMessagePending:Z

    return v0
.end method

.method static synthetic access$302(Lorg/xwalk/core/internal/XWalkSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mIsUpdateWebkitPrefsMessagePending:Z

    return p1
.end method

.method static synthetic access$400(Lorg/xwalk/core/internal/XWalkSettings;)J
    .locals 2
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettings;

    .prologue
    .line 24
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mNativeXWalkSettings:J

    return-wide v0
.end method

.method static synthetic access$700(Lorg/xwalk/core/internal/XWalkSettings;J)V
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettings;
    .param p1, "x1"    # J

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkSettings;->nativeUpdateUserAgent(J)V

    return-void
.end method

.method static synthetic access$800(Lorg/xwalk/core/internal/XWalkSettings;J)V
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettings;
    .param p1, "x1"    # J

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkSettings;->nativeUpdateAcceptLanguages(J)V

    return-void
.end method

.method static synthetic access$900(Lorg/xwalk/core/internal/XWalkSettings;J)V
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettings;
    .param p1, "x1"    # J

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkSettings;->nativeUpdateFormDataPreferences(J)V

    return-void
.end method

.method private getAcceptLanguagesLocked()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 713
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAcceptLanguages:Ljava/lang/String;

    return-object v0
.end method

.method private getAppCacheEnabled()Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 515
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAppCacheEnabled:Z

    return v0
.end method

.method public static getDefaultUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 599
    invoke-static {}, Lorg/xwalk/core/internal/XWalkSettings$LazyDefaultUserAgent;->access$500()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSaveFormDataLocked()Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 718
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAutoCompleteEnabled:Z

    return v0
.end method

.method private getUserAgentLocked()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 637
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method private native nativeDestroy(J)V
.end method

.method private static native nativeGetDefaultUserAgent()Ljava/lang/String;
.end method

.method private native nativeInit(Lorg/chromium/content_public/browser/WebContents;)J
.end method

.method private native nativeUpdateAcceptLanguages(J)V
.end method

.method private native nativeUpdateEverythingLocked(J)V
.end method

.method private native nativeUpdateFormDataPreferences(J)V
.end method

.method private native nativeUpdateUserAgent(J)V
.end method

.method private native nativeUpdateWebkitPreferences(J)V
.end method

.method private nativeXWalkSettingsGone(J)V
    .locals 5
    .param p1, "nativeXWalkSettings"    # J
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 181
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mNativeXWalkSettings:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mNativeXWalkSettings:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 182
    :cond_1
    iput-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettings;->mNativeXWalkSettings:J

    .line 183
    return-void
.end method

.method private updateEverything()V
    .locals 4
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 651
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 652
    :try_start_0
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettings;->mNativeXWalkSettings:J

    invoke-direct {p0, v2, v3}, Lorg/xwalk/core/internal/XWalkSettings;->nativeUpdateEverythingLocked(J)V

    .line 653
    monitor-exit v1

    .line 654
    return-void

    .line 653
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateWebkitPreferencesOnUiThread()V
    .locals 4

    .prologue
    .line 657
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mNativeXWalkSettings:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 658
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 659
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mNativeXWalkSettings:J

    invoke-direct {p0, v0, v1}, Lorg/xwalk/core/internal/XWalkSettings;->nativeUpdateWebkitPreferences(J)V

    .line 661
    :cond_0
    return-void
.end method


# virtual methods
.method public getAcceptLanguages()Ljava/lang/String;
    .locals 2

    .prologue
    .line 679
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 680
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAcceptLanguages:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 681
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllowContentAccess()Z
    .locals 2

    .prologue
    .line 279
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 280
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowContentUrlAccess:Z

    monitor-exit v1

    return v0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllowFileAccess()Z
    .locals 2

    .prologue
    .line 259
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowFileUrlAccess:Z

    monitor-exit v1

    return v0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllowFileAccessFromFileURLs()Z
    .locals 2

    .prologue
    .line 404
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 405
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowFileAccessFromFileURLs:Z

    monitor-exit v1

    return v0

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllowScriptsToCloseWindows()Z
    .locals 2

    .prologue
    .line 194
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowScriptsToCloseWindows:Z

    monitor-exit v1

    return v0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllowUniversalAccessFromFileURLs()Z
    .locals 2

    .prologue
    .line 395
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 396
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowUniversalAccessFromFileURLs:Z

    monitor-exit v1

    return v0

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBlockNetworkLoads()Z
    .locals 2

    .prologue
    .line 239
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mBlockNetworkLoads:Z

    monitor-exit v1

    return v0

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCacheMode()I
    .locals 2

    .prologue
    .line 214
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 215
    :try_start_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mCacheMode:I

    monitor-exit v1

    return v0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDatabaseEnabled()Z
    .locals 2

    .prologue
    .line 555
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 556
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mDatabaseEnabled:Z

    monitor-exit v1

    return v0

    .line 557
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDefaultVideoPosterURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 644
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 645
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mDefaultVideoPosterURL:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 646
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDomStorageEnabled()Z
    .locals 2

    .prologue
    .line 534
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 535
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mDomStorageEnabled:Z

    monitor-exit v1

    return v0

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getGeolocationEnabled()Z
    .locals 2

    .prologue
    .line 299
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 300
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mGeolocationEnabled:Z

    monitor-exit v1

    return v0

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getImagesEnabled()Z
    .locals 2

    .prologue
    .line 377
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 378
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mImagesEnabled:Z

    monitor-exit v1

    return v0

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 2

    .prologue
    .line 425
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 426
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    monitor-exit v1

    return v0

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getJavaScriptEnabled()Z
    .locals 2

    .prologue
    .line 386
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 387
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mJavaScriptEnabled:Z

    monitor-exit v1

    return v0

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLoadsImagesAutomatically()Z
    .locals 2

    .prologue
    .line 356
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 357
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mLoadsImagesAutomatically:Z

    monitor-exit v1

    return v0

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMediaPlaybackRequiresUserGesture()Z
    .locals 2

    .prologue
    .line 576
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 577
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mMediaPlaybackRequiresUserGesture:Z

    monitor-exit v1

    return v0

    .line 578
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSaveFormData()Z
    .locals 2

    .prologue
    .line 706
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 707
    :try_start_0
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettings;->getSaveFormDataLocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 708
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUseWideViewPort()Z
    .locals 2

    .prologue
    .line 467
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 468
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mUseWideViewport:Z

    monitor-exit v1

    return v0

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 630
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 631
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mUserAgent:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAcceptLanguages(Ljava/lang/String;)V
    .locals 3
    .param p1, "acceptLanguages"    # Ljava/lang/String;

    .prologue
    .line 664
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 665
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAcceptLanguages:Ljava/lang/String;

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 676
    :goto_0
    return-void

    .line 666
    :cond_0
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAcceptLanguages:Ljava/lang/String;

    .line 667
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    new-instance v2, Lorg/xwalk/core/internal/XWalkSettings$2;

    invoke-direct {v2, p0}, Lorg/xwalk/core/internal/XWalkSettings$2;-><init>(Lorg/xwalk/core/internal/XWalkSettings;)V

    invoke-virtual {v0, v2}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->maybeRunOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 675
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowContentAccess(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .prologue
    .line 268
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 269
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowContentUrlAccess:Z

    if-eq v0, p1, :cond_0

    .line 270
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowContentUrlAccess:Z

    .line 272
    :cond_0
    monitor-exit v1

    .line 273
    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowFileAccess(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .prologue
    .line 248
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 249
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowFileUrlAccess:Z

    if-eq v0, p1, :cond_0

    .line 250
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowFileUrlAccess:Z

    .line 252
    :cond_0
    monitor-exit v1

    .line 253
    return-void

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowFileAccessFromFileURLs(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 332
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 333
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowFileAccessFromFileURLs:Z

    if-eq v0, p1, :cond_0

    .line 334
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowFileAccessFromFileURLs:Z

    .line 335
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V

    .line 337
    :cond_0
    monitor-exit v1

    .line 338
    return-void

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowScriptsToCloseWindows(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .prologue
    .line 186
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 187
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowScriptsToCloseWindows:Z

    if-eq v0, p1, :cond_0

    .line 188
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowScriptsToCloseWindows:Z

    .line 190
    :cond_0
    monitor-exit v1

    .line 191
    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowUniversalAccessFromFileURLs(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 320
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 321
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowUniversalAccessFromFileURLs:Z

    if-eq v0, p1, :cond_0

    .line 322
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAllowUniversalAccessFromFileURLs:Z

    .line 323
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V

    .line 325
    :cond_0
    monitor-exit v1

    .line 326
    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppCacheEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 476
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 477
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAppCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 478
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAppCacheEnabled:Z

    .line 479
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V

    .line 481
    :cond_0
    monitor-exit v1

    .line 482
    return-void

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppCachePath(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, "needToSync":Z
    sget-object v2, Lorg/xwalk/core/internal/XWalkSettings;->sGlobalContentSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 491
    :try_start_0
    sget-boolean v1, Lorg/xwalk/core/internal/XWalkSettings;->sAppCachePathIsSet:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 492
    const/4 v1, 0x1

    sput-boolean v1, Lorg/xwalk/core/internal/XWalkSettings;->sAppCachePathIsSet:Z

    .line 493
    const/4 v0, 0x1

    .line 495
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    if-eqz v0, :cond_1

    .line 500
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 501
    :try_start_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-static {v1}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V

    .line 502
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 504
    :cond_1
    return-void

    .line 495
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 502
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public setBlockNetworkLoads(Z)V
    .locals 5
    .param p1, "flag"    # Z

    .prologue
    .line 223
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Permission denied - application missing INTERNET permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 231
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mBlockNetworkLoads:Z

    .line 232
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    return-void
.end method

.method public setCacheMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 203
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    :try_start_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mCacheMode:I

    if-eq v0, p1, :cond_0

    .line 205
    iput p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mCacheMode:I

    .line 207
    :cond_0
    monitor-exit v1

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDatabaseEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 543
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 544
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mDatabaseEnabled:Z

    if-eq v0, p1, :cond_0

    .line 545
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mDatabaseEnabled:Z

    .line 546
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V

    .line 548
    :cond_0
    monitor-exit v1

    .line 549
    return-void

    .line 548
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultVideoPosterURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 585
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 586
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mDefaultVideoPosterURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mDefaultVideoPosterURL:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mDefaultVideoPosterURL:Ljava/lang/String;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 588
    :cond_1
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mDefaultVideoPosterURL:Ljava/lang/String;

    .line 589
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V

    .line 591
    :cond_2
    monitor-exit v1

    .line 592
    return-void

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDomStorageEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 522
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 523
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mDomStorageEnabled:Z

    if-eq v0, p1, :cond_0

    .line 524
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mDomStorageEnabled:Z

    .line 525
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V

    .line 527
    :cond_0
    monitor-exit v1

    .line 528
    return-void

    .line 527
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setGeolocationEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 288
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 289
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mGeolocationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 290
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mGeolocationEnabled:Z

    .line 292
    :cond_0
    monitor-exit v1

    .line 293
    return-void

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setImagesEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 365
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 366
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mImagesEnabled:Z

    if-eq v0, p1, :cond_0

    .line 367
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mImagesEnabled:Z

    .line 368
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V

    .line 370
    :cond_0
    monitor-exit v1

    .line 371
    return-void

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 413
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 414
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 415
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 416
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V

    .line 418
    :cond_0
    monitor-exit v1

    .line 419
    return-void

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 308
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 309
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mJavaScriptEnabled:Z

    if-eq v0, p1, :cond_0

    .line 310
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mJavaScriptEnabled:Z

    .line 311
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V

    .line 313
    :cond_0
    monitor-exit v1

    .line 314
    return-void

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLoadsImagesAutomatically(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 344
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 345
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mLoadsImagesAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 346
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mLoadsImagesAutomatically:Z

    .line 347
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V

    .line 349
    :cond_0
    monitor-exit v1

    .line 350
    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMediaPlaybackRequiresUserGesture(Z)V
    .locals 2
    .param p1, "require"    # Z

    .prologue
    .line 564
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 565
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mMediaPlaybackRequiresUserGesture:Z

    if-eq v0, p1, :cond_0

    .line 566
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mMediaPlaybackRequiresUserGesture:Z

    .line 567
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V

    .line 569
    :cond_0
    monitor-exit v1

    .line 570
    return-void

    .line 569
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSaveFormData(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 688
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 689
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAutoCompleteEnabled:Z

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 700
    :goto_0
    return-void

    .line 690
    :cond_0
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mAutoCompleteEnabled:Z

    .line 691
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    new-instance v2, Lorg/xwalk/core/internal/XWalkSettings$3;

    invoke-direct {v2, p0}, Lorg/xwalk/core/internal/XWalkSettings$3;-><init>(Lorg/xwalk/core/internal/XWalkSettings;)V

    invoke-virtual {v0, v2}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->maybeRunOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 699
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSupportMultipleWindows(Z)V
    .locals 2
    .param p1, "support"    # Z

    .prologue
    .line 434
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 435
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mSupportMultipleWindows:Z

    if-eq v0, p1, :cond_0

    .line 436
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mSupportMultipleWindows:Z

    .line 437
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V

    .line 439
    :cond_0
    monitor-exit v1

    .line 440
    return-void

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUseWideViewPort(Z)V
    .locals 2
    .param p1, "use"    # Z

    .prologue
    .line 455
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 456
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mUseWideViewport:Z

    if-eq v0, p1, :cond_0

    .line 457
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mUseWideViewport:Z

    .line 458
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V

    .line 460
    :cond_0
    monitor-exit v1

    .line 461
    return-void

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 4
    .param p1, "ua"    # Ljava/lang/String;

    .prologue
    .line 606
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 607
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mUserAgent:Ljava/lang/String;

    .line 608
    .local v0, "oldUserAgent":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 609
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkSettings$LazyDefaultUserAgent;->access$500()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mUserAgent:Ljava/lang/String;

    .line 613
    :goto_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 614
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    new-instance v3, Lorg/xwalk/core/internal/XWalkSettings$1;

    invoke-direct {v3, p0}, Lorg/xwalk/core/internal/XWalkSettings$1;-><init>(Lorg/xwalk/core/internal/XWalkSettings;)V

    invoke-virtual {v1, v3}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->maybeRunOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 623
    :cond_1
    monitor-exit v2

    .line 624
    return-void

    .line 611
    :cond_2
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mUserAgent:Ljava/lang/String;

    goto :goto_0

    .line 623
    .end local v0    # "oldUserAgent":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setWebContents(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 6
    .param p1, "webContents"    # Lorg/chromium/content_public/browser/WebContents;

    .prologue
    const-wide/16 v4, 0x0

    .line 166
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettings;->mNativeXWalkSettings:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 168
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettings;->mNativeXWalkSettings:J

    invoke-direct {p0, v2, v3}, Lorg/xwalk/core/internal/XWalkSettings;->nativeDestroy(J)V

    .line 169
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettings;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettings;->mNativeXWalkSettings:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 171
    :cond_0
    if-eqz p1, :cond_1

    .line 172
    :try_start_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->bindUiThread()V

    .line 173
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkSettings;->nativeInit(Lorg/chromium/content_public/browser/WebContents;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettings;->mNativeXWalkSettings:J

    .line 174
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettings;->mNativeXWalkSettings:J

    invoke-direct {p0, v2, v3}, Lorg/xwalk/core/internal/XWalkSettings;->nativeUpdateEverythingLocked(J)V

    .line 176
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    return-void
.end method

.method public supportMultipleWindows()Z
    .locals 2

    .prologue
    .line 446
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 447
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettings;->mSupportMultipleWindows:Z

    monitor-exit v1

    return v0

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
