.class Lorg/crosswalk/engine/XWalkWebViewEngine$3;
.super Ljava/lang/Object;
.source "XWalkWebViewEngine.java"

# interfaces
.implements Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode$OnlineEventsBridgeModeDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/crosswalk/engine/XWalkWebViewEngine;->init(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebViewEngine$Client;Lorg/apache/cordova/CordovaResourceApi;Lorg/apache/cordova/PluginManager;Lorg/apache/cordova/NativeToJsMessageQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;


# direct methods
.method constructor <init>(Lorg/crosswalk/engine/XWalkWebViewEngine;)V
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkWebViewEngine$3;
    move-object v1, p1

    .local v1, "this$0":Lorg/crosswalk/engine/XWalkWebViewEngine;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/crosswalk/engine/XWalkWebViewEngine$3;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkWebViewEngine$3;
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v0

    iget-object v2, v2, Lorg/crosswalk/engine/XWalkWebViewEngine$3;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v2, v2, Lorg/crosswalk/engine/XWalkWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkWebViewEngine$3;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Lorg/crosswalk/engine/XWalkWebViewEngine$3;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v2, v2, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/crosswalk/engine/XWalkCordovaView;->setNetworkAvailable(Z)V

    .line 111
    return-void
.end method
