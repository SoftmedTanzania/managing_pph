.class public Lorg/crosswalk/engine/XWalkWebViewEngine;
.super Ljava/lang/Object;
.source "XWalkWebViewEngine.java"

# interfaces
.implements Lorg/apache/cordova/CordovaWebViewEngine;


# static fields
.field public static final TAG:Ljava/lang/String; = "XWalkWebViewEngine"

.field public static final XWALK_USER_AGENT:Ljava/lang/String; = "xwalkUserAgent"


# instance fields
.field protected activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

.field protected bridge:Lorg/apache/cordova/CordovaBridge;

.field protected client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

.field protected cookieManager:Lorg/crosswalk/engine/XWalkCordovaCookieManager;

.field protected cordova:Lorg/apache/cordova/CordovaInterface;

.field protected nativeToJsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

.field protected parentWebView:Lorg/apache/cordova/CordovaWebView;

.field protected pluginManager:Lorg/apache/cordova/PluginManager;

.field protected preferences:Lorg/apache/cordova/CordovaPreferences;

.field protected resourceApi:Lorg/apache/cordova/CordovaResourceApi;

.field protected startUrl:Ljava/lang/String;

.field protected final webView:Lorg/crosswalk/engine/XWalkCordovaView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/apache/cordova/CordovaPreferences;)V
    .locals 12

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkWebViewEngine;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "preferences":Lorg/apache/cordova/CordovaPreferences;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 65
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lorg/crosswalk/engine/XWalkWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    .line 66
    new-instance v5, Lorg/crosswalk/engine/XWalkWebViewEngine$1;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    invoke-direct {v6, v7}, Lorg/crosswalk/engine/XWalkWebViewEngine$1;-><init>(Lorg/crosswalk/engine/XWalkWebViewEngine;)V

    move-object v3, v5

    .line 72
    .local v3, "cancelCommand":Ljava/lang/Runnable;
    new-instance v5, Lorg/crosswalk/engine/XWalkWebViewEngine$2;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    invoke-direct {v6, v7}, Lorg/crosswalk/engine/XWalkWebViewEngine$2;-><init>(Lorg/crosswalk/engine/XWalkWebViewEngine;)V

    move-object v4, v5

    .line 83
    .local v4, "completeCommand":Ljava/lang/Runnable;
    move-object v5, v0

    new-instance v6, Lorg/xwalk/core/XWalkActivityDelegate;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    check-cast v8, Landroid/app/Activity;

    move-object v9, v3

    move-object v10, v4

    invoke-direct {v7, v8, v9, v10}, Lorg/xwalk/core/XWalkActivityDelegate;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v6, v5, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    .line 85
    move-object v5, v0

    new-instance v6, Lorg/crosswalk/engine/XWalkCordovaView;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Lorg/crosswalk/engine/XWalkCordovaView;-><init>(Landroid/content/Context;Lorg/apache/cordova/CordovaPreferences;)V

    iput-object v6, v5, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lorg/crosswalk/engine/XWalkWebViewEngine;)V
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "x0":Lorg/crosswalk/engine/XWalkWebViewEngine;
    move-object v1, v0

    invoke-direct {v1}, Lorg/crosswalk/engine/XWalkWebViewEngine;->initWebViewSettings()V

    return-void
.end method

.method static synthetic access$100(Lorg/xwalk/core/XWalkView;Lorg/apache/cordova/CordovaBridge;)V
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "x0":Lorg/xwalk/core/XWalkView;
    move-object v1, p1

    .local v1, "x1":Lorg/apache/cordova/CordovaBridge;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lorg/crosswalk/engine/XWalkWebViewEngine;->exposeJsInterface(Lorg/xwalk/core/XWalkView;Lorg/apache/cordova/CordovaBridge;)V

    return-void
.end method

.method private static exposeJsInterface(Lorg/xwalk/core/XWalkView;Lorg/apache/cordova/CordovaBridge;)V
    .locals 7

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "webView":Lorg/xwalk/core/XWalkView;
    move-object v1, p1

    .local v1, "bridge":Lorg/apache/cordova/CordovaBridge;
    new-instance v3, Lorg/crosswalk/engine/XWalkExposedJsApi;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/crosswalk/engine/XWalkExposedJsApi;-><init>(Lorg/apache/cordova/CordovaBridge;)V

    move-object v2, v3

    .line 146
    .local v2, "exposedJsApi":Lorg/crosswalk/engine/XWalkExposedJsApi;
    move-object v3, v0

    move-object v4, v2

    const-string v5, "_cordovaNative"

    invoke-virtual {v3, v4, v5}, Lorg/xwalk/core/XWalkView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method private initWebViewSettings()V
    .locals 6

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkWebViewEngine;
    move-object v3, v0

    iget-object v3, v3, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/crosswalk/engine/XWalkCordovaView;->setVerticalScrollBarEnabled(Z)V

    .line 134
    move-object v3, v0

    iget-object v3, v3, Lorg/crosswalk/engine/XWalkWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    if-nez v3, :cond_2

    const-string v3, ""

    :goto_0
    move-object v1, v3

    .line 135
    .local v1, "xwalkUserAgent":Ljava/lang/String;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 136
    move-object v3, v0

    iget-object v3, v3, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/crosswalk/engine/XWalkCordovaView;->setUserAgentString(Ljava/lang/String;)V

    .line 138
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/crosswalk/engine/XWalkWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v4, "BackgroundColor"

    invoke-virtual {v3, v4}, Lorg/apache/cordova/CordovaPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    move-object v3, v0

    iget-object v3, v3, Lorg/crosswalk/engine/XWalkWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v4, "BackgroundColor"

    const/high16 v5, -0x1000000

    invoke-virtual {v3, v4, v5}, Lorg/apache/cordova/CordovaPreferences;->getInteger(Ljava/lang/String;I)I

    move-result v3

    move v2, v3

    .line 140
    .local v2, "backgroundColor":I
    move-object v3, v0

    iget-object v3, v3, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    move v4, v2

    invoke-virtual {v3, v4}, Lorg/crosswalk/engine/XWalkCordovaView;->setBackgroundColor(I)V

    .line 142
    .end local v2    # "backgroundColor":I
    :cond_1
    return-void

    .line 134
    .end local v1    # "xwalkUserAgent":Ljava/lang/String;
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/crosswalk/engine/XWalkWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v4, "xwalkUserAgent"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public canGoBack()Z
    .locals 2

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkWebViewEngine;
    move-object v1, v0

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v1}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 152
    .end local v0    # "this":Lorg/crosswalk/engine/XWalkWebViewEngine;
    :goto_0
    return v0

    .restart local v0    # "this":Lorg/crosswalk/engine/XWalkWebViewEngine;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v1}, Lorg/crosswalk/engine/XWalkCordovaView;->getNavigationHistory()Lorg/xwalk/core/XWalkNavigationHistory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xwalk/core/XWalkNavigationHistory;->canGoBack()Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public clearCache()V
    .locals 3

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkWebViewEngine;
    move-object v1, v0

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v1}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    :goto_0
    return-void

    .line 196
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/crosswalk/engine/XWalkCordovaView;->clearCache(Z)V

    .line 197
    goto :goto_0
.end method

.method public clearHistory()V
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkWebViewEngine;
    move-object v1, v0

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v1}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v1}, Lorg/crosswalk/engine/XWalkCordovaView;->getNavigationHistory()Lorg/xwalk/core/XWalkNavigationHistory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xwalk/core/XWalkNavigationHistory;->clear()V

    .line 185
    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkWebViewEngine;
    move-object v1, v0

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v1}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    :goto_0
    return-void

    .line 178
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v1}, Lorg/crosswalk/engine/XWalkCordovaView;->onDestroy()V

    .line 179
    goto :goto_0
.end method

.method public getCookieManager()Lorg/apache/cordova/ICordovaCookieManager;
    .locals 2

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkWebViewEngine;
    move-object v1, v0

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->cookieManager:Lorg/crosswalk/engine/XWalkCordovaCookieManager;

    move-object v0, v1

    .end local v0    # "this":Lorg/crosswalk/engine/XWalkWebViewEngine;
    return-object v0
.end method

.method public getCordovaWebView()Lorg/apache/cordova/CordovaWebView;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkWebViewEngine;
    move-object v1, v0

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->parentWebView:Lorg/apache/cordova/CordovaWebView;

    move-object v0, v1

    .end local v0    # "this":Lorg/crosswalk/engine/XWalkWebViewEngine;
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkWebViewEngine;
    move-object v1, v0

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v1}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move-object v0, v1

    .line 202
    .end local v0    # "this":Lorg/crosswalk/engine/XWalkWebViewEngine;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lorg/crosswalk/engine/XWalkWebViewEngine;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v1}, Lorg/crosswalk/engine/XWalkCordovaView;->getUrl()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkWebViewEngine;
    move-object v1, v0

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    move-object v0, v1

    .end local v0    # "this":Lorg/crosswalk/engine/XWalkWebViewEngine;
    return-object v0
.end method

.method public goBack()Z
    .locals 4

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkWebViewEngine;
    move-object v1, v0

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v1}, Lorg/crosswalk/engine/XWalkCordovaView;->getNavigationHistory()Lorg/xwalk/core/XWalkNavigationHistory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xwalk/core/XWalkNavigationHistory;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    move-object v1, v0

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v1}, Lorg/crosswalk/engine/XWalkCordovaView;->getNavigationHistory()Lorg/xwalk/core/XWalkNavigationHistory;

    move-result-object v1

    sget-object v2, Lorg/xwalk/core/XWalkNavigationHistory$Direction;->BACKWARD:Lorg/xwalk/core/XWalkNavigationHistory$Direction;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/xwalk/core/XWalkNavigationHistory;->navigate(Lorg/xwalk/core/XWalkNavigationHistory$Direction;I)V

    .line 159
    const/4 v1, 0x1

    move v0, v1

    .line 161
    .end local v0    # "this":Lorg/crosswalk/engine/XWalkWebViewEngine;
    :goto_0
    return v0

    .restart local v0    # "this":Lorg/crosswalk/engine/XWalkWebViewEngine;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public init(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebViewEngine$Client;Lorg/apache/cordova/CordovaResourceApi;Lorg/apache/cordova/PluginManager;Lorg/apache/cordova/NativeToJsMessageQueue;)V
    .locals 14

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkWebViewEngine;
    move-object v1, p1

    .local v1, "parentWebView":Lorg/apache/cordova/CordovaWebView;
    move-object/from16 v2, p2

    .local v2, "cordova":Lorg/apache/cordova/CordovaInterface;
    move-object/from16 v3, p3

    .local v3, "client":Lorg/apache/cordova/CordovaWebViewEngine$Client;
    move-object/from16 v4, p4

    .local v4, "resourceApi":Lorg/apache/cordova/CordovaResourceApi;
    move-object/from16 v5, p5

    .local v5, "pluginManager":Lorg/apache/cordova/PluginManager;
    move-object/from16 v6, p6

    .local v6, "nativeToJsMessageQueue":Lorg/apache/cordova/NativeToJsMessageQueue;
    move-object v7, v0

    iget-object v7, v7, Lorg/crosswalk/engine/XWalkWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    if-eqz v7, :cond_0

    .line 95
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 97
    :cond_0
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lorg/crosswalk/engine/XWalkWebViewEngine;->parentWebView:Lorg/apache/cordova/CordovaWebView;

    .line 98
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lorg/crosswalk/engine/XWalkWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 99
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lorg/crosswalk/engine/XWalkWebViewEngine;->client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

    .line 100
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lorg/crosswalk/engine/XWalkWebViewEngine;->resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    .line 101
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lorg/crosswalk/engine/XWalkWebViewEngine;->pluginManager:Lorg/apache/cordova/PluginManager;

    .line 102
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lorg/crosswalk/engine/XWalkWebViewEngine;->nativeToJsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    .line 104
    move-object v7, v0

    iget-object v7, v7, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    move-object v8, v0

    invoke-virtual {v7, v8}, Lorg/crosswalk/engine/XWalkCordovaView;->init(Lorg/crosswalk/engine/XWalkWebViewEngine;)V

    .line 106
    move-object v7, v6

    new-instance v8, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Lorg/crosswalk/engine/XWalkWebViewEngine$3;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v0

    invoke-direct {v11, v12}, Lorg/crosswalk/engine/XWalkWebViewEngine$3;-><init>(Lorg/crosswalk/engine/XWalkWebViewEngine;)V

    invoke-direct {v9, v10}, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;-><init>(Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode$OnlineEventsBridgeModeDelegate;)V

    invoke-virtual {v7, v8}, Lorg/apache/cordova/NativeToJsMessageQueue;->addBridgeMode(Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;)V

    .line 117
    move-object v7, v0

    new-instance v8, Lorg/apache/cordova/CordovaBridge;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v5

    move-object v11, v6

    invoke-direct {v9, v10, v11}, Lorg/apache/cordova/CordovaBridge;-><init>(Lorg/apache/cordova/PluginManager;Lorg/apache/cordova/NativeToJsMessageQueue;)V

    iput-object v8, v7, Lorg/crosswalk/engine/XWalkWebViewEngine;->bridge:Lorg/apache/cordova/CordovaBridge;

    .line 118
    return-void
.end method

.method public isXWalkReady()Z
    .locals 2

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkWebViewEngine;
    move-object v1, v0

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v1}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lorg/crosswalk/engine/XWalkWebViewEngine;
    return v0
.end method

.method public loadUrl(Ljava/lang/String;Z)V
    .locals 10

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkWebViewEngine;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move v2, p2

    .local v2, "clearNavigationStack":Z
    move-object v4, v0

    iget-object v4, v4, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v4}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v4

    if-nez v4, :cond_0

    .line 213
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lorg/crosswalk/engine/XWalkWebViewEngine;->startUrl:Ljava/lang/String;

    .line 215
    new-instance v4, Lorg/crosswalk/engine/XWalkWebViewEngine$4;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Lorg/crosswalk/engine/XWalkWebViewEngine$4;-><init>(Lorg/crosswalk/engine/XWalkWebViewEngine;)V

    move-object v3, v4

    .line 221
    .local v3, "initPlugin":Lorg/apache/cordova/CordovaPlugin;
    move-object v4, v0

    iget-object v4, v4, Lorg/crosswalk/engine/XWalkWebViewEngine;->pluginManager:Lorg/apache/cordova/PluginManager;

    new-instance v5, Lorg/apache/cordova/PluginEntry;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "XWalkInit"

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lorg/apache/cordova/PluginEntry;-><init>(Ljava/lang/String;Lorg/apache/cordova/CordovaPlugin;)V

    invoke-virtual {v4, v5}, Lorg/apache/cordova/PluginManager;->addService(Lorg/apache/cordova/PluginEntry;)V

    .line 222
    .line 225
    .end local v3    # "initPlugin":Lorg/apache/cordova/CordovaPlugin;
    :goto_0
    return-void

    .line 224
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/crosswalk/engine/XWalkCordovaView;->load(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    goto :goto_0
.end method

.method public setPaused(Z)V
    .locals 3

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkWebViewEngine;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v2}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    :goto_0
    return-void

    .line 167
    :cond_0
    move v2, v1

    if-eqz v2, :cond_1

    .line 169
    move-object v2, v0

    iget-object v2, v2, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v2}, Lorg/crosswalk/engine/XWalkCordovaView;->pauseTimersForReal()V

    .line 173
    :goto_1
    goto :goto_0

    .line 171
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v2}, Lorg/crosswalk/engine/XWalkCordovaView;->resumeTimers()V

    goto :goto_1
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkWebViewEngine;
    move-object v1, v0

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v1}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    :goto_0
    return-void

    .line 190
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v1}, Lorg/crosswalk/engine/XWalkCordovaView;->stopLoading()V

    .line 191
    goto :goto_0
.end method
