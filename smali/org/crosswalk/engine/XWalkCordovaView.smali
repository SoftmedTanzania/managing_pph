.class public Lorg/crosswalk/engine/XWalkCordovaView;
.super Lorg/xwalk/core/XWalkView;
.source "XWalkCordovaView.java"

# interfaces
.implements Lorg/apache/cordova/CordovaWebViewEngine$EngineView;


# static fields
.field private static hasSetStaticPref:Z


# instance fields
.field protected parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

.field protected resourceClient:Lorg/crosswalk/engine/XWalkCordovaResourceClient;

.field protected uiClient:Lorg/crosswalk/engine/XWalkCordovaUiClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/crosswalk/engine/XWalkCordovaView;->setGlobalPrefs(Landroid/content/Context;Lorg/apache/cordova/CordovaPreferences;)Landroid/content/Context;

    move-result-object v4

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lorg/xwalk/core/XWalkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/apache/cordova/CordovaPreferences;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "preferences":Lorg/apache/cordova/CordovaPreferences;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lorg/crosswalk/engine/XWalkCordovaView;->setGlobalPrefs(Landroid/content/Context;Lorg/apache/cordova/CordovaPreferences;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    check-cast v5, Landroid/util/AttributeSet;

    invoke-direct {v3, v4, v5}, Lorg/xwalk/core/XWalkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method private static setGlobalPrefs(Landroid/content/Context;Lorg/apache/cordova/CordovaPreferences;)Landroid/content/Context;
    .locals 9

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "preferences":Lorg/apache/cordova/CordovaPreferences;
    sget-boolean v5, Lorg/crosswalk/engine/XWalkCordovaView;->hasSetStaticPref:Z

    if-nez v5, :cond_2

    .line 27
    const/4 v5, 0x1

    sput-boolean v5, Lorg/crosswalk/engine/XWalkCordovaView;->hasSetStaticPref:Z

    .line 28
    const/4 v5, 0x0

    move-object v2, v5

    .line 30
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    move-object v5, v0

    :try_start_0
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v2, v5

    .line 33
    .line 34
    move-object v5, v1

    if-nez v5, :cond_3

    const/4 v5, 0x0

    :goto_0
    move v3, v5

    .line 35
    .local v3, "prefAnimatable":Z
    move-object v5, v2

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v5, :cond_4

    const/4 v5, 0x0

    :goto_1
    move v4, v5

    .line 37
    .local v4, "manifestAnimatable":Z
    const-string v5, "animatable-xwalk-view"

    move v6, v3

    if-nez v6, :cond_0

    move v6, v4

    if-eqz v6, :cond_5

    :cond_0
    const/4 v6, 0x1

    :goto_2
    invoke-static {v5, v6}, Lorg/xwalk/core/XWalkPreferences;->setValue(Ljava/lang/String;Z)V

    .line 38
    move-object v5, v2

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 39
    const-string v5, "remote-debugging"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lorg/xwalk/core/XWalkPreferences;->setValue(Ljava/lang/String;Z)V

    .line 41
    :cond_1
    const-string v5, "javascript-can-open-window"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lorg/xwalk/core/XWalkPreferences;->setValue(Ljava/lang/String;Z)V

    .line 42
    const-string v5, "allow-universal-access-from-file"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lorg/xwalk/core/XWalkPreferences;->setValue(Ljava/lang/String;Z)V

    .line 44
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "prefAnimatable":Z
    .end local v4    # "manifestAnimatable":Z
    :cond_2
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "context":Landroid/content/Context;
    return-object v0

    .line 31
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 32
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 34
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    move-object v5, v1

    const-string v6, "CrosswalkAnimatable"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/apache/cordova/CordovaPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    goto :goto_0

    .line 35
    .local v3, "prefAnimatable":Z
    :cond_4
    move-object v5, v2

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "CrosswalkAnimatable"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    goto :goto_1

    .line 37
    .restart local v4    # "manifestAnimatable":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaView;
    move-object v1, p1

    .local v1, "event":Landroid/view/KeyEvent;
    move-object v3, v0

    iget-object v3, v3, Lorg/crosswalk/engine/XWalkCordovaView;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v3, v3, Lorg/crosswalk/engine/XWalkWebViewEngine;->client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

    move-object v4, v1

    invoke-interface {v3, v4}, Lorg/apache/cordova/CordovaWebViewEngine$Client;->onDispatchKeyEvent(Landroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v3

    move-object v2, v3

    .line 86
    .local v2, "ret":Ljava/lang/Boolean;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 87
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v0, v3

    .line 89
    .end local v0    # "this":Lorg/crosswalk/engine/XWalkCordovaView;
    :goto_0
    return v0

    .restart local v0    # "this":Lorg/crosswalk/engine/XWalkCordovaView;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lorg/xwalk/core/XWalkView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getCordovaWebView()Lorg/apache/cordova/CordovaWebView;
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaView;
    move-object v1, v0

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkCordovaView;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lorg/crosswalk/engine/XWalkCordovaView;
    return-object v0

    .restart local v0    # "this":Lorg/crosswalk/engine/XWalkCordovaView;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkCordovaView;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    invoke-virtual {v1}, Lorg/crosswalk/engine/XWalkWebViewEngine;->getCordovaWebView()Lorg/apache/cordova/CordovaWebView;

    move-result-object v1

    goto :goto_0
.end method

.method init(Lorg/crosswalk/engine/XWalkWebViewEngine;)V
    .locals 7

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaView;
    move-object v1, p1

    .local v1, "parentEngine":Lorg/crosswalk/engine/XWalkWebViewEngine;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/crosswalk/engine/XWalkCordovaView;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    .line 57
    move-object v2, v0

    iget-object v2, v2, Lorg/crosswalk/engine/XWalkCordovaView;->resourceClient:Lorg/crosswalk/engine/XWalkCordovaResourceClient;

    if-nez v2, :cond_0

    .line 58
    move-object v2, v0

    new-instance v3, Lorg/crosswalk/engine/XWalkCordovaResourceClient;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/crosswalk/engine/XWalkCordovaResourceClient;-><init>(Lorg/crosswalk/engine/XWalkWebViewEngine;)V

    invoke-virtual {v2, v3}, Lorg/crosswalk/engine/XWalkCordovaView;->setResourceClient(Lorg/xwalk/core/XWalkResourceClient;)V

    .line 60
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/crosswalk/engine/XWalkCordovaView;->uiClient:Lorg/crosswalk/engine/XWalkCordovaUiClient;

    if-nez v2, :cond_1

    .line 61
    move-object v2, v0

    new-instance v3, Lorg/crosswalk/engine/XWalkCordovaUiClient;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/crosswalk/engine/XWalkCordovaUiClient;-><init>(Lorg/crosswalk/engine/XWalkWebViewEngine;)V

    invoke-virtual {v2, v3}, Lorg/crosswalk/engine/XWalkCordovaView;->setUIClient(Lorg/xwalk/core/XWalkUIClient;)V

    .line 63
    :cond_1
    return-void
.end method

.method public pauseTimers()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public pauseTimersForReal()V
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaView;
    move-object v1, v0

    invoke-super {v1}, Lorg/xwalk/core/XWalkView;->pauseTimers()V

    .line 100
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaView;
    move v1, p1

    .local v1, "color":I
    move-object v2, v0

    iget-object v2, v2, Lorg/crosswalk/engine/XWalkCordovaView;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/crosswalk/engine/XWalkCordovaView;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    invoke-virtual {v2}, Lorg/crosswalk/engine/XWalkWebViewEngine;->isXWalkReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lorg/xwalk/core/XWalkView;->setBackgroundColor(I)V

    .line 112
    :cond_0
    return-void
.end method

.method public setResourceClient(Lorg/xwalk/core/XWalkResourceClient;)V
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaView;
    move-object v1, p1

    .local v1, "client":Lorg/xwalk/core/XWalkResourceClient;
    move-object v2, v1

    instance-of v2, v2, Lorg/crosswalk/engine/XWalkCordovaResourceClient;

    if-eqz v2, :cond_0

    .line 69
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lorg/crosswalk/engine/XWalkCordovaResourceClient;

    iput-object v3, v2, Lorg/crosswalk/engine/XWalkCordovaView;->resourceClient:Lorg/crosswalk/engine/XWalkCordovaResourceClient;

    .line 71
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/xwalk/core/XWalkView;->setResourceClient(Lorg/xwalk/core/XWalkResourceClient;)V

    .line 72
    return-void
.end method

.method public setUIClient(Lorg/xwalk/core/XWalkUIClient;)V
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaView;
    move-object v1, p1

    .local v1, "client":Lorg/xwalk/core/XWalkUIClient;
    move-object v2, v1

    instance-of v2, v2, Lorg/crosswalk/engine/XWalkCordovaUiClient;

    if-eqz v2, :cond_0

    .line 78
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lorg/crosswalk/engine/XWalkCordovaUiClient;

    iput-object v3, v2, Lorg/crosswalk/engine/XWalkCordovaView;->uiClient:Lorg/crosswalk/engine/XWalkCordovaUiClient;

    .line 80
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/xwalk/core/XWalkView;->setUIClient(Lorg/xwalk/core/XWalkUIClient;)V

    .line 81
    return-void
.end method
