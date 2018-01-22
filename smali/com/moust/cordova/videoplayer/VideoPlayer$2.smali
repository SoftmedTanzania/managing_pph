.class Lcom/moust/cordova/videoplayer/VideoPlayer$2;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moust/cordova/videoplayer/VideoPlayer;->openVideoDialog(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moust/cordova/videoplayer/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/moust/cordova/videoplayer/VideoPlayer;)V
    .locals 4

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lcom/moust/cordova/videoplayer/VideoPlayer$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/moust/cordova/videoplayer/VideoPlayer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/moust/cordova/videoplayer/VideoPlayer$2;->this$0:Lcom/moust/cordova/videoplayer/VideoPlayer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 230
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 9

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/moust/cordova/videoplayer/VideoPlayer$2;
    move-object v1, p1

    .local v1, "holder":Landroid/view/SurfaceHolder;
    move-object v4, v0

    iget-object v4, v4, Lcom/moust/cordova/videoplayer/VideoPlayer$2;->this$0:Lcom/moust/cordova/videoplayer/VideoPlayer;

    invoke-static {v4}, Lcom/moust/cordova/videoplayer/VideoPlayer;->access$000(Lcom/moust/cordova/videoplayer/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 217
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/moust/cordova/videoplayer/VideoPlayer$2;->this$0:Lcom/moust/cordova/videoplayer/VideoPlayer;

    invoke-static {v4}, Lcom/moust/cordova/videoplayer/VideoPlayer;->access$000(Lcom/moust/cordova/videoplayer/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .line 224
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 219
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/apache/cordova/PluginResult;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sget-object v6, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    move-object v3, v4

    .line 220
    .local v3, "result":Lorg/apache/cordova/PluginResult;
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 221
    move-object v4, v0

    iget-object v4, v4, Lcom/moust/cordova/videoplayer/VideoPlayer$2;->this$0:Lcom/moust/cordova/videoplayer/VideoPlayer;

    invoke-static {v4}, Lcom/moust/cordova/videoplayer/VideoPlayer;->access$100(Lcom/moust/cordova/videoplayer/VideoPlayer;)Lorg/apache/cordova/CallbackContext;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 222
    move-object v4, v0

    iget-object v4, v4, Lcom/moust/cordova/videoplayer/VideoPlayer$2;->this$0:Lcom/moust/cordova/videoplayer/VideoPlayer;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/moust/cordova/videoplayer/VideoPlayer;->access$102(Lcom/moust/cordova/videoplayer/VideoPlayer;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/CallbackContext;

    move-result-object v4

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/moust/cordova/videoplayer/VideoPlayer$2;
    move-object v1, p1

    .local v1, "holder":Landroid/view/SurfaceHolder;
    move-object v2, v0

    iget-object v2, v2, Lcom/moust/cordova/videoplayer/VideoPlayer$2;->this$0:Lcom/moust/cordova/videoplayer/VideoPlayer;

    invoke-static {v2}, Lcom/moust/cordova/videoplayer/VideoPlayer;->access$000(Lcom/moust/cordova/videoplayer/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 228
    return-void
.end method
