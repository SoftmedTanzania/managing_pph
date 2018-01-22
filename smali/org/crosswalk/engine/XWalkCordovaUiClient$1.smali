.class Lorg/crosswalk/engine/XWalkCordovaUiClient$1;
.super Ljava/lang/Object;
.source "XWalkCordovaUiClient.java"

# interfaces
.implements Lorg/apache/cordova/CordovaDialogsHelper$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/crosswalk/engine/XWalkCordovaUiClient;->onJsAlert(Lorg/xwalk/core/XWalkView;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/XWalkJavascriptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/crosswalk/engine/XWalkCordovaUiClient;

.field final synthetic val$result:Lorg/xwalk/core/XWalkJavascriptResult;


# direct methods
.method constructor <init>(Lorg/crosswalk/engine/XWalkCordovaUiClient;Lorg/xwalk/core/XWalkJavascriptResult;)V
    .locals 5

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaUiClient$1;
    move-object v1, p1

    .local v1, "this$0":Lorg/crosswalk/engine/XWalkCordovaUiClient;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/crosswalk/engine/XWalkCordovaUiClient$1;->this$0:Lorg/crosswalk/engine/XWalkCordovaUiClient;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/crosswalk/engine/XWalkCordovaUiClient$1;->val$result:Lorg/xwalk/core/XWalkJavascriptResult;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gotResult(ZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaUiClient$1;
    move v1, p1

    .local v1, "success":Z
    move-object v2, p2

    .local v2, "value":Ljava/lang/String;
    move v3, v1

    if-eqz v3, :cond_0

    .line 77
    move-object v3, v0

    iget-object v3, v3, Lorg/crosswalk/engine/XWalkCordovaUiClient$1;->val$result:Lorg/xwalk/core/XWalkJavascriptResult;

    invoke-interface {v3}, Lorg/xwalk/core/XWalkJavascriptResult;->confirm()V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/crosswalk/engine/XWalkCordovaUiClient$1;->val$result:Lorg/xwalk/core/XWalkJavascriptResult;

    invoke-interface {v3}, Lorg/xwalk/core/XWalkJavascriptResult;->cancel()V

    goto :goto_0
.end method
