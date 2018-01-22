.class Lorg/crosswalk/engine/XWalkCordovaUiClient$4;
.super Lorg/apache/cordova/CordovaPlugin;
.source "XWalkCordovaUiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/crosswalk/engine/XWalkCordovaUiClient;->openFileChooser(Lorg/xwalk/core/XWalkView;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/crosswalk/engine/XWalkCordovaUiClient;


# direct methods
.method constructor <init>(Lorg/crosswalk/engine/XWalkCordovaUiClient;)V
    .locals 4

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaUiClient$4;
    move-object v1, p1

    .local v1, "this$0":Lorg/crosswalk/engine/XWalkCordovaUiClient;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/crosswalk/engine/XWalkCordovaUiClient$4;->this$0:Lorg/crosswalk/engine/XWalkCordovaUiClient;

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaUiClient$4;
    move v1, p1

    .local v1, "requestCode":I
    move v2, p2

    .local v2, "resultCode":I
    move-object v3, p3

    .local v3, "intent":Landroid/content/Intent;
    move-object v4, v0

    iget-object v4, v4, Lorg/crosswalk/engine/XWalkCordovaUiClient$4;->this$0:Lorg/crosswalk/engine/XWalkCordovaUiClient;

    iget-object v4, v4, Lorg/crosswalk/engine/XWalkCordovaUiClient;->parentEngine:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v4, v4, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lorg/crosswalk/engine/XWalkCordovaView;->onActivityResult(IILandroid/content/Intent;)V

    .line 182
    return-void
.end method
