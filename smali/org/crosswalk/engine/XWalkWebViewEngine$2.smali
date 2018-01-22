.class Lorg/crosswalk/engine/XWalkWebViewEngine$2;
.super Ljava/lang/Object;
.source "XWalkWebViewEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/crosswalk/engine/XWalkWebViewEngine;-><init>(Landroid/content/Context;Lorg/apache/cordova/CordovaPreferences;)V
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
    .line 72
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkWebViewEngine$2;
    move-object v1, p1

    .local v1, "this$0":Lorg/crosswalk/engine/XWalkWebViewEngine;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkWebViewEngine$2;
    move-object v1, v0

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    new-instance v2, Lorg/crosswalk/engine/XWalkCordovaCookieManager;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/crosswalk/engine/XWalkCordovaCookieManager;-><init>()V

    iput-object v2, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->cookieManager:Lorg/crosswalk/engine/XWalkCordovaCookieManager;

    .line 77
    move-object v1, v0

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    invoke-static {v1}, Lorg/crosswalk/engine/XWalkWebViewEngine;->access$000(Lorg/crosswalk/engine/XWalkWebViewEngine;)V

    .line 78
    move-object v1, v0

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    move-object v2, v0

    iget-object v2, v2, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v2, v2, Lorg/crosswalk/engine/XWalkWebViewEngine;->bridge:Lorg/apache/cordova/CordovaBridge;

    invoke-static {v1, v2}, Lorg/crosswalk/engine/XWalkWebViewEngine;->access$100(Lorg/xwalk/core/XWalkView;Lorg/apache/cordova/CordovaBridge;)V

    .line 80
    move-object v1, v0

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    move-object v2, v0

    iget-object v2, v2, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v2, v2, Lorg/crosswalk/engine/XWalkWebViewEngine;->startUrl:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/crosswalk/engine/XWalkWebViewEngine;->loadUrl(Ljava/lang/String;Z)V

    .line 81
    return-void
.end method
