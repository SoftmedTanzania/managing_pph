.class public Lorg/crosswalk/engine/XWalkCordovaUiClient;
.super Lorg/xwalk/core/XWalkUIClient;
.source "XWalkCordovaUiClient.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FILECHOOSER_RESULTCODE:I = 0x1435

.field private static final TAG:Ljava/lang/String; = "XWalkCordovaUiClient"


# instance fields
.field protected final dialogsHelper:Lorg/apache/cordova/CordovaDialogsHelper;

.field protected final parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/crosswalk/engine/XWalkCordovaUiClient;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/crosswalk/engine/XWalkCordovaUiClient;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/crosswalk/engine/XWalkWebViewEngine;)V
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaUiClient;
    move-object v1, p1

    .local v1, "parentEngine":Lorg/crosswalk/engine/XWalkWebViewEngine;
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-direct {v2, v3}, Lorg/xwalk/core/XWalkUIClient;-><init>(Lorg/xwalk/core/XWalkView;)V

    .line 44
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/crosswalk/engine/XWalkCordovaUiClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    .line 45
    move-object v2, v0

    new-instance v3, Lorg/apache/cordova/CordovaDialogsHelper;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    iget-object v5, v5, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v5}, Lorg/crosswalk/engine/XWalkCordovaView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/cordova/CordovaDialogsHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lorg/crosswalk/engine/XWalkCordovaUiClient;->dialogsHelper:Lorg/apache/cordova/CordovaDialogsHelper;

    .line 46
    return-void
.end method

.method private onJsAlert(Lorg/xwalk/core/XWalkView;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/XWalkJavascriptResult;)Z
    .locals 12

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaUiClient;
    move-object v1, p1

    .local v1, "view":Lorg/xwalk/core/XWalkView;
    move-object v2, p2

    .local v2, "url":Ljava/lang/String;
    move-object v3, p3

    .local v3, "message":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "result":Lorg/xwalk/core/XWalkJavascriptResult;
    move-object v5, v0

    iget-object v5, v5, Lorg/crosswalk/engine/XWalkCordovaUiClient;->dialogsHelper:Lorg/apache/cordova/CordovaDialogsHelper;

    move-object v6, v3

    new-instance v7, Lorg/crosswalk/engine/XWalkCordovaUiClient$1;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v4

    invoke-direct {v8, v9, v10}, Lorg/crosswalk/engine/XWalkCordovaUiClient$1;-><init>(Lorg/crosswalk/engine/XWalkCordovaUiClient;Lorg/xwalk/core/XWalkJavascriptResult;)V

    invoke-virtual {v5, v6, v7}, Lorg/apache/cordova/CordovaDialogsHelper;->showAlert(Ljava/lang/String;Lorg/apache/cordova/CordovaDialogsHelper$Result;)V

    .line 83
    const/4 v5, 0x1

    move v0, v5

    .end local v0    # "this":Lorg/crosswalk/engine/XWalkCordovaUiClient;
    return v0
.end method

.method private onJsConfirm(Lorg/xwalk/core/XWalkView;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/XWalkJavascriptResult;)Z
    .locals 12

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaUiClient;
    move-object v1, p1

    .local v1, "view":Lorg/xwalk/core/XWalkView;
    move-object v2, p2

    .local v2, "url":Ljava/lang/String;
    move-object v3, p3

    .local v3, "message":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "result":Lorg/xwalk/core/XWalkJavascriptResult;
    move-object v5, v0

    iget-object v5, v5, Lorg/crosswalk/engine/XWalkCordovaUiClient;->dialogsHelper:Lorg/apache/cordova/CordovaDialogsHelper;

    move-object v6, v3

    new-instance v7, Lorg/crosswalk/engine/XWalkCordovaUiClient$2;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v4

    invoke-direct {v8, v9, v10}, Lorg/crosswalk/engine/XWalkCordovaUiClient$2;-><init>(Lorg/crosswalk/engine/XWalkCordovaUiClient;Lorg/xwalk/core/XWalkJavascriptResult;)V

    invoke-virtual {v5, v6, v7}, Lorg/apache/cordova/CordovaDialogsHelper;->showConfirm(Ljava/lang/String;Lorg/apache/cordova/CordovaDialogsHelper$Result;)V

    .line 101
    const/4 v5, 0x1

    move v0, v5

    .end local v0    # "this":Lorg/crosswalk/engine/XWalkCordovaUiClient;
    return v0
.end method

.method private onJsPrompt(Lorg/xwalk/core/XWalkView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/XWalkJavascriptResult;)Z
    .locals 15

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaUiClient;
    move-object/from16 v1, p1

    .local v1, "view":Lorg/xwalk/core/XWalkView;
    move-object/from16 v2, p2

    .local v2, "origin":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "message":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "defaultValue":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "result":Lorg/xwalk/core/XWalkJavascriptResult;
    move-object v7, v0

    iget-object v7, v7, Lorg/crosswalk/engine/XWalkCordovaUiClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v7, v7, Lorg/crosswalk/engine/XWalkWebViewEngine;->bridge:Lorg/apache/cordova/CordovaBridge;

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/cordova/CordovaBridge;->promptOnJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 116
    .local v6, "handledRet":Ljava/lang/String;
    move-object v7, v6

    if-eqz v7, :cond_0

    .line 117
    move-object v7, v5

    move-object v8, v6

    invoke-interface {v7, v8}, Lorg/xwalk/core/XWalkJavascriptResult;->confirmWithResult(Ljava/lang/String;)V

    .line 131
    :goto_0
    const/4 v7, 0x1

    move v0, v7

    .end local v0    # "this":Lorg/crosswalk/engine/XWalkCordovaUiClient;
    return v0

    .line 119
    .restart local v0    # "this":Lorg/crosswalk/engine/XWalkCordovaUiClient;
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lorg/crosswalk/engine/XWalkCordovaUiClient;->dialogsHelper:Lorg/apache/cordova/CordovaDialogsHelper;

    move-object v8, v3

    move-object v9, v4

    new-instance v10, Lorg/crosswalk/engine/XWalkCordovaUiClient$3;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    move-object v13, v5

    invoke-direct {v11, v12, v13}, Lorg/crosswalk/engine/XWalkCordovaUiClient$3;-><init>(Lorg/crosswalk/engine/XWalkCordovaUiClient;Lorg/xwalk/core/XWalkJavascriptResult;)V

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/cordova/CordovaDialogsHelper;->showPrompt(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CordovaDialogsHelper$Result;)V

    goto :goto_0
.end method


# virtual methods
.method public onJavascriptModalDialog(Lorg/xwalk/core/XWalkView;Lorg/xwalk/core/XWalkUIClient$JavascriptMessageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/XWalkJavascriptResult;)Z
    .locals 14

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaUiClient;
    move-object v1, p1

    .local v1, "view":Lorg/xwalk/core/XWalkView;
    move-object/from16 v2, p2

    .local v2, "type":Lorg/xwalk/core/XWalkUIClient$JavascriptMessageType;
    move-object/from16 v3, p3

    .local v3, "url":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "message":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "defaultValue":Ljava/lang/String;
    move-object/from16 v6, p6

    .local v6, "result":Lorg/xwalk/core/XWalkJavascriptResult;
    sget-object v7, Lorg/crosswalk/engine/XWalkCordovaUiClient$5;->$SwitchMap$org$xwalk$core$XWalkUIClient$JavascriptMessageType:[I

    move-object v8, v2

    invoke-virtual {v8}, Lorg/xwalk/core/XWalkUIClient$JavascriptMessageType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 64
    sget-boolean v7, Lorg/crosswalk/engine/XWalkCordovaUiClient;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 53
    :pswitch_0
    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    move-object v10, v4

    move-object v11, v6

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/crosswalk/engine/XWalkCordovaUiClient;->onJsAlert(Lorg/xwalk/core/XWalkView;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/XWalkJavascriptResult;)Z

    move-result v7

    move v0, v7

    .line 65
    .end local v0    # "this":Lorg/crosswalk/engine/XWalkCordovaUiClient;
    :goto_0
    return v0

    .line 55
    .restart local v0    # "this":Lorg/crosswalk/engine/XWalkCordovaUiClient;
    :pswitch_1
    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    move-object v10, v4

    move-object v11, v6

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/crosswalk/engine/XWalkCordovaUiClient;->onJsConfirm(Lorg/xwalk/core/XWalkView;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/XWalkJavascriptResult;)Z

    move-result v7

    move v0, v7

    goto :goto_0

    .line 57
    :pswitch_2
    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lorg/crosswalk/engine/XWalkCordovaUiClient;->onJsPrompt(Lorg/xwalk/core/XWalkView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/XWalkJavascriptResult;)Z

    move-result v7

    move v0, v7

    goto :goto_0

    .line 60
    :pswitch_3
    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    move-object v10, v4

    move-object v11, v6

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/crosswalk/engine/XWalkCordovaUiClient;->onJsConfirm(Lorg/xwalk/core/XWalkView;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/XWalkJavascriptResult;)Z

    move-result v7

    move v0, v7

    goto :goto_0

    .line 65
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPageLoadStarted(Lorg/xwalk/core/XWalkView;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaUiClient;
    move-object v1, p1

    .local v1, "view":Lorg/xwalk/core/XWalkView;
    move-object v2, p2

    .local v2, "url":Ljava/lang/String;
    move-object v3, v1

    invoke-virtual {v3}, Lorg/xwalk/core/XWalkView;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Lorg/xwalk/core/XWalkView;->getUrl()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    move-object v3, v0

    iget-object v3, v3, Lorg/crosswalk/engine/XWalkCordovaUiClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v3, v3, Lorg/crosswalk/engine/XWalkWebViewEngine;->client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

    move-object v4, v2

    invoke-interface {v3, v4}, Lorg/apache/cordova/CordovaWebViewEngine$Client;->onPageStarted(Ljava/lang/String;)V

    .line 150
    move-object v3, v0

    iget-object v3, v3, Lorg/crosswalk/engine/XWalkCordovaUiClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v3, v3, Lorg/crosswalk/engine/XWalkWebViewEngine;->bridge:Lorg/apache/cordova/CordovaBridge;

    invoke-virtual {v3}, Lorg/apache/cordova/CordovaBridge;->reset()V

    .line 152
    :cond_0
    return-void
.end method

.method public onPageLoadStopped(Lorg/xwalk/core/XWalkView;Ljava/lang/String;Lorg/xwalk/core/XWalkUIClient$LoadStatus;)V
    .locals 8

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaUiClient;
    move-object v1, p1

    .local v1, "view":Lorg/xwalk/core/XWalkView;
    move-object v2, p2

    .local v2, "url":Ljava/lang/String;
    move-object v3, p3

    .local v3, "status":Lorg/xwalk/core/XWalkUIClient$LoadStatus;
    const-string v4, "XWalkCordovaUiClient"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPageFinished("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    move-object v4, v3

    sget-object v5, Lorg/xwalk/core/XWalkUIClient$LoadStatus;->FINISHED:Lorg/xwalk/core/XWalkUIClient$LoadStatus;

    if-ne v4, v5, :cond_1

    .line 166
    move-object v4, v0

    iget-object v4, v4, Lorg/crosswalk/engine/XWalkCordovaUiClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v4, v4, Lorg/crosswalk/engine/XWalkWebViewEngine;->client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

    move-object v5, v2

    invoke-interface {v4, v5}, Lorg/apache/cordova/CordovaWebViewEngine$Client;->onPageFinishedLoading(Ljava/lang/String;)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    move-object v4, v3

    sget-object v5, Lorg/xwalk/core/XWalkUIClient$LoadStatus;->FAILED:Lorg/xwalk/core/XWalkUIClient$LoadStatus;

    if-ne v4, v5, :cond_0

    goto :goto_0
.end method

.method public openFileChooser(Lorg/xwalk/core/XWalkView;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/XWalkView;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaUiClient;
    move-object v1, p1

    .local v1, "view":Lorg/xwalk/core/XWalkView;
    move-object v2, p2

    .local v2, "uploadFile":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    move-object v3, p3

    .local v3, "acceptType":Ljava/lang/String;
    move-object v4, p4

    .local v4, "capture":Ljava/lang/String;
    move-object v5, v2

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 178
    move-object v5, v0

    iget-object v5, v5, Lorg/crosswalk/engine/XWalkCordovaUiClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v5, v5, Lorg/crosswalk/engine/XWalkWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    new-instance v6, Lorg/crosswalk/engine/XWalkCordovaUiClient$4;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lorg/crosswalk/engine/XWalkCordovaUiClient$4;-><init>(Lorg/crosswalk/engine/XWalkCordovaUiClient;)V

    invoke-interface {v5, v6}, Lorg/apache/cordova/CordovaInterface;->setActivityResultCallback(Lorg/apache/cordova/CordovaPlugin;)V

    .line 184
    return-void
.end method
