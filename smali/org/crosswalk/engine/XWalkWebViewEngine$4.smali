.class Lorg/crosswalk/engine/XWalkWebViewEngine$4;
.super Lorg/apache/cordova/CordovaPlugin;
.source "XWalkWebViewEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/crosswalk/engine/XWalkWebViewEngine;->loadUrl(Ljava/lang/String;Z)V
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
    .line 215
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkWebViewEngine$4;
    move-object v1, p1

    .local v1, "this$0":Lorg/crosswalk/engine/XWalkWebViewEngine;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/crosswalk/engine/XWalkWebViewEngine$4;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public onResume(Z)V
    .locals 3

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkWebViewEngine$4;
    move v1, p1

    .local v1, "multitasking":Z
    move-object v2, v0

    iget-object v2, v2, Lorg/crosswalk/engine/XWalkWebViewEngine$4;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v2, v2, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v2}, Lorg/xwalk/core/XWalkActivityDelegate;->onResume()V

    .line 219
    return-void
.end method
