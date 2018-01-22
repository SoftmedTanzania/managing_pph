.class public Lorg/crosswalk/engine/XWalkCordovaResourceClient;
.super Lorg/xwalk/core/XWalkResourceClient;
.source "XWalkCordovaResourceClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XWalkCordovaResourceClient"


# instance fields
.field protected parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;


# direct methods
.method public constructor <init>(Lorg/crosswalk/engine/XWalkWebViewEngine;)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaResourceClient;
    move-object v1, p1

    .local v1, "parentEngine":Lorg/crosswalk/engine/XWalkWebViewEngine;
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-direct {v2, v3}, Lorg/xwalk/core/XWalkResourceClient;-><init>(Lorg/xwalk/core/XWalkView;)V

    .line 44
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/crosswalk/engine/XWalkCordovaResourceClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    .line 45
    return-void
.end method


# virtual methods
.method public onReceivedLoadError(Lorg/xwalk/core/XWalkView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaResourceClient;
    move-object v1, p1

    .local v1, "view":Lorg/xwalk/core/XWalkView;
    move v2, p2

    .local v2, "errorCode":I
    move-object v3, p3

    .local v3, "description":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "failingUrl":Ljava/lang/String;
    const-string v5, "XWalkCordovaResourceClient"

    const-string v6, "CordovaWebViewClient.onReceivedError: Error code=%s Description=%s URL=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v3

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move-object v10, v4

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    move-object v5, v0

    iget-object v5, v5, Lorg/crosswalk/engine/XWalkCordovaResourceClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v5, v5, Lorg/crosswalk/engine/XWalkWebViewEngine;->client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

    move v6, v2

    move-object v7, v3

    move-object v8, v4

    invoke-interface {v5, v6, v7, v8}, Lorg/apache/cordova/CordovaWebViewEngine$Client;->onReceivedError(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public onReceivedSslError(Lorg/xwalk/core/XWalkView;Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/XWalkView;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/net/http/SslError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaResourceClient;
    move-object v1, p1

    .local v1, "view":Lorg/xwalk/core/XWalkView;
    move-object v2, p2

    .local v2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    move-object v3, p3

    .local v3, "error":Landroid/net/http/SslError;
    move-object v8, v0

    iget-object v8, v8, Lorg/crosswalk/engine/XWalkCordovaResourceClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v8, v8, Lorg/crosswalk/engine/XWalkWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v8}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 110
    .local v4, "packageName":Ljava/lang/String;
    move-object v8, v0

    iget-object v8, v8, Lorg/crosswalk/engine/XWalkCordovaResourceClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v8, v8, Lorg/crosswalk/engine/XWalkWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v8}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    move-object v5, v8

    .line 114
    .local v5, "pm":Landroid/content/pm/PackageManager;
    move-object v8, v5

    move-object v9, v4

    const/16 v10, 0x80

    :try_start_0
    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    move-object v6, v8

    .line 115
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object v8, v6

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v9, 0x2

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_0

    .line 117
    move-object v8, v2

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 125
    .line 126
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-void

    .line 120
    .restart local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    move-object v8, v2

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 124
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v8, v2

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public shouldInterceptLoadRequest(Lorg/xwalk/core/XWalkView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 13

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaResourceClient;
    move-object v1, p1

    .local v1, "view":Lorg/xwalk/core/XWalkView;
    move-object v2, p2

    .local v2, "url":Ljava/lang/String;
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lorg/crosswalk/engine/XWalkCordovaResourceClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v7, v7, Lorg/crosswalk/engine/XWalkWebViewEngine;->pluginManager:Lorg/apache/cordova/PluginManager;

    move-object v8, v2

    invoke-virtual {v7, v8}, Lorg/apache/cordova/PluginManager;->shouldAllowRequest(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 69
    const-string v7, "XWalkCordovaResourceClient"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "URL blocked by whitelist: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/cordova/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v7, Landroid/webkit/WebResourceResponse;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "text/plain"

    const-string v10, "UTF-8"

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    move-object v0, v7

    .line 90
    .end local v0    # "this":Lorg/crosswalk/engine/XWalkCordovaResourceClient;
    :goto_0
    return-object v0

    .line 74
    .restart local v0    # "this":Lorg/crosswalk/engine/XWalkCordovaResourceClient;
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lorg/crosswalk/engine/XWalkCordovaResourceClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v7, v7, Lorg/crosswalk/engine/XWalkWebViewEngine;->resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    move-object v3, v7

    .line 75
    .local v3, "resourceApi":Lorg/apache/cordova/CordovaResourceApi;
    move-object v7, v2

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object v4, v7

    .line 77
    .local v4, "origUri":Landroid/net/Uri;
    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v7, v8}, Lorg/apache/cordova/CordovaResourceApi;->remapUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    move-object v5, v7

    .line 79
    .local v5, "remappedUri":Landroid/net/Uri;
    move-object v7, v4

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 80
    move-object v7, v3

    move-object v8, v5

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/apache/cordova/CordovaResourceApi;->openForRead(Landroid/net/Uri;Z)Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;

    move-result-object v7

    move-object v6, v7

    .line 81
    .local v6, "result":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    new-instance v7, Landroid/webkit/WebResourceResponse;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v6

    iget-object v9, v9, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->mimeType:Ljava/lang/String;

    const-string v10, "UTF-8"

    move-object v11, v6

    iget-object v11, v11, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    invoke-direct {v8, v9, v10, v11}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    goto :goto_0

    .line 84
    .end local v6    # "result":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    :cond_1
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 85
    .end local v3    # "resourceApi":Lorg/apache/cordova/CordovaResourceApi;
    .end local v4    # "origUri":Landroid/net/Uri;
    .end local v5    # "remappedUri":Landroid/net/Uri;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 86
    .local v3, "e":Ljava/io/IOException;
    move-object v7, v3

    instance-of v7, v7, Ljava/io/FileNotFoundException;

    if-nez v7, :cond_2

    .line 87
    const-string v7, "XWalkCordovaResourceClient"

    const-string v8, "Error occurred while loading a file (returning a 404)."

    move-object v9, v3

    invoke-static {v7, v8, v9}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    :cond_2
    new-instance v7, Landroid/webkit/WebResourceResponse;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "text/plain"

    const-string v10, "UTF-8"

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    move-object v0, v7

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Lorg/xwalk/core/XWalkView;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaResourceClient;
    move-object v1, p1

    .local v1, "view":Lorg/xwalk/core/XWalkView;
    move-object v2, p2

    .local v2, "url":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lorg/crosswalk/engine/XWalkCordovaResourceClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v3, v3, Lorg/crosswalk/engine/XWalkWebViewEngine;->client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

    move-object v4, v2

    invoke-interface {v3, v4}, Lorg/apache/cordova/CordovaWebViewEngine$Client;->onNavigationAttempt(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lorg/crosswalk/engine/XWalkCordovaResourceClient;
    return v0
.end method
