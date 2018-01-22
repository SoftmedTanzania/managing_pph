.class Lorg/crosswalk/engine/XWalkWebViewEngine$1;
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
    .line 66
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkWebViewEngine$1;
    move-object v1, p1

    .local v1, "this$0":Lorg/crosswalk/engine/XWalkWebViewEngine;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/crosswalk/engine/XWalkWebViewEngine$1;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkWebViewEngine$1;
    move-object v1, v0

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine$1;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 70
    return-void
.end method
