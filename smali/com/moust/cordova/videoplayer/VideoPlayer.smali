.class public Lcom/moust/cordova/videoplayer/VideoPlayer;
.super Lorg/apache/cordova/CordovaPlugin;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field protected static final ASSETS:Ljava/lang/String; = "/android_asset/"

.field protected static final LOG_TAG:Ljava/lang/String; = "VideoPlayer"


# instance fields
.field private callbackContext:Lorg/apache/cordova/CallbackContext;

.field private dialog:Landroid/app/Dialog;

.field private player:Landroid/media/MediaPlayer;

.field private videoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/moust/cordova/videoplayer/VideoPlayer;
    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 38
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/moust/cordova/videoplayer/VideoPlayer;->callbackContext:Lorg/apache/cordova/CallbackContext;

    return-void
.end method

.method static synthetic access$000(Lcom/moust/cordova/videoplayer/VideoPlayer;)Landroid/media/MediaPlayer;
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "x0":Lcom/moust/cordova/videoplayer/VideoPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/moust/cordova/videoplayer/VideoPlayer;->player:Landroid/media/MediaPlayer;

    move-object v0, v1

    .end local v0    # "x0":Lcom/moust/cordova/videoplayer/VideoPlayer;
    return-object v0
.end method

.method static synthetic access$100(Lcom/moust/cordova/videoplayer/VideoPlayer;)Lorg/apache/cordova/CallbackContext;
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "x0":Lcom/moust/cordova/videoplayer/VideoPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/moust/cordova/videoplayer/VideoPlayer;->callbackContext:Lorg/apache/cordova/CallbackContext;

    move-object v0, v1

    .end local v0    # "x0":Lcom/moust/cordova/videoplayer/VideoPlayer;
    return-object v0
.end method

.method static synthetic access$102(Lcom/moust/cordova/videoplayer/VideoPlayer;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/CallbackContext;
    .locals 7

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "x0":Lcom/moust/cordova/videoplayer/VideoPlayer;
    move-object v1, p1

    .local v1, "x1":Lorg/apache/cordova/CallbackContext;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/moust/cordova/videoplayer/VideoPlayer;->callbackContext:Lorg/apache/cordova/CallbackContext;

    move-object v0, v2

    .end local v0    # "x0":Lcom/moust/cordova/videoplayer/VideoPlayer;
    return-object v0
.end method

.method public static stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "uriString":Ljava/lang/String;
    move-object v1, v0

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    move-object v1, v0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 121
    .end local v0    # "uriString":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "uriString":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 55
    move-object/from16 v0, p0

    .local v0, "this":Lcom/moust/cordova/videoplayer/VideoPlayer;
    move-object/from16 v1, p1

    .local v1, "action":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "args":Lorg/apache/cordova/CordovaArgs;
    move-object/from16 v3, p3

    .local v3, "callbackContext":Lorg/apache/cordova/CallbackContext;
    move-object v10, v1

    const-string v11, "play"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 56
    move-object v10, v0

    move-object v11, v3

    iput-object v11, v10, Lcom/moust/cordova/videoplayer/VideoPlayer;->callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 58
    move-object v10, v0

    iget-object v10, v10, Lcom/moust/cordova/videoplayer/VideoPlayer;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v10}, Lorg/apache/cordova/CordovaWebView;->getResourceApi()Lorg/apache/cordova/CordovaResourceApi;

    move-result-object v10

    move-object v4, v10

    .line 59
    .local v4, "resourceApi":Lorg/apache/cordova/CordovaResourceApi;
    move-object v10, v2

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 60
    .local v5, "target":Ljava/lang/String;
    move-object v10, v2

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/apache/cordova/CordovaArgs;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    move-object v6, v10

    .line 64
    .local v6, "options":Lorg/json/JSONObject;
    move-object v10, v4

    move-object v11, v5

    :try_start_0
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/cordova/CordovaResourceApi;->remapUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v10

    move-object v8, v10

    .line 65
    .local v8, "targetUri":Landroid/net/Uri;
    move-object v10, v8

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    move-object v7, v10

    .line 68
    .line 70
    .end local v8    # "targetUri":Landroid/net/Uri;
    .local v7, "fileUriStr":Ljava/lang/String;
    :goto_0
    const-string v10, "VideoPlayer"

    move-object v11, v7

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 72
    move-object v10, v7

    invoke-static {v10}, Lcom/moust/cordova/videoplayer/VideoPlayer;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 75
    .local v8, "path":Ljava/lang/String;
    move-object v10, v0

    iget-object v10, v10, Lcom/moust/cordova/videoplayer/VideoPlayer;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v10}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v10

    new-instance v11, Lcom/moust/cordova/videoplayer/VideoPlayer$1;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v0

    move-object v14, v8

    move-object v15, v6

    invoke-direct {v12, v13, v14, v15}, Lcom/moust/cordova/videoplayer/VideoPlayer$1;-><init>(Lcom/moust/cordova/videoplayer/VideoPlayer;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 82
    new-instance v10, Lorg/apache/cordova/PluginResult;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    sget-object v12, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v11, v12}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    move-object v9, v10

    .line 83
    .local v9, "pluginResult":Lorg/apache/cordova/PluginResult;
    move-object v10, v9

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 84
    move-object v10, v3

    move-object v11, v9

    invoke-virtual {v10, v11}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 85
    const/4 v10, 0x0

    move-object v3, v10

    .line 87
    const/4 v10, 0x1

    move v0, v10

    .line 107
    .end local v0    # "this":Lcom/moust/cordova/videoplayer/VideoPlayer;
    .end local v4    # "resourceApi":Lorg/apache/cordova/CordovaResourceApi;
    .end local v5    # "target":Ljava/lang/String;
    .end local v6    # "options":Lorg/json/JSONObject;
    .end local v7    # "fileUriStr":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "pluginResult":Lorg/apache/cordova/PluginResult;
    :goto_1
    return v0

    .line 66
    .restart local v0    # "this":Lcom/moust/cordova/videoplayer/VideoPlayer;
    .restart local v4    # "resourceApi":Lorg/apache/cordova/CordovaResourceApi;
    .restart local v5    # "target":Ljava/lang/String;
    .restart local v6    # "options":Lorg/json/JSONObject;
    :catch_0
    move-exception v10

    move-object v8, v10

    .line 67
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    move-object v10, v5

    move-object v7, v10

    .restart local v7    # "fileUriStr":Ljava/lang/String;
    goto :goto_0

    .line 89
    .end local v4    # "resourceApi":Lorg/apache/cordova/CordovaResourceApi;
    .end local v5    # "target":Ljava/lang/String;
    .end local v6    # "options":Lorg/json/JSONObject;
    .end local v7    # "fileUriStr":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    move-object v10, v1

    const-string v11, "close"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 90
    move-object v10, v0

    iget-object v10, v10, Lcom/moust/cordova/videoplayer/VideoPlayer;->dialog:Landroid/app/Dialog;

    if-eqz v10, :cond_2

    .line 91
    move-object v10, v0

    iget-object v10, v10, Lcom/moust/cordova/videoplayer/VideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v10}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 92
    move-object v10, v0

    iget-object v10, v10, Lcom/moust/cordova/videoplayer/VideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v10}, Landroid/media/MediaPlayer;->stop()V

    .line 94
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lcom/moust/cordova/videoplayer/VideoPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v10}, Landroid/media/MediaPlayer;->release()V

    .line 95
    move-object v10, v0

    iget-object v10, v10, Lcom/moust/cordova/videoplayer/VideoPlayer;->dialog:Landroid/app/Dialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->dismiss()V

    .line 98
    :cond_2
    move-object v10, v3

    if-eqz v10, :cond_3

    .line 99
    new-instance v10, Lorg/apache/cordova/PluginResult;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    sget-object v12, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v11, v12}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    move-object v4, v10

    .line 100
    .local v4, "result":Lorg/apache/cordova/PluginResult;
    move-object v10, v4

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 101
    move-object v10, v3

    move-object v11, v4

    invoke-virtual {v10, v11}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 102
    const/4 v10, 0x0

    move-object v3, v10

    .line 105
    .end local v4    # "result":Lorg/apache/cordova/PluginResult;
    :cond_3
    const/4 v10, 0x1

    move v0, v10

    goto :goto_1

    .line 107
    :cond_4
    const/4 v10, 0x0

    move v0, v10

    goto :goto_1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Lcom/moust/cordova/videoplayer/VideoPlayer;
    move-object v1, p1

    .local v1, "mp":Landroid/media/MediaPlayer;
    const-string v2, "VideoPlayer"

    const-string v3, "MediaPlayer completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 262
    move-object v2, v1

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 263
    move-object v2, v0

    iget-object v2, v2, Lcom/moust/cordova/videoplayer/VideoPlayer;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 264
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 7

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Lcom/moust/cordova/videoplayer/VideoPlayer;
    move-object v1, p1

    .local v1, "dialog":Landroid/content/DialogInterface;
    const-string v3, "VideoPlayer"

    const-string v4, "Dialog dismissed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 269
    move-object v3, v0

    iget-object v3, v3, Lcom/moust/cordova/videoplayer/VideoPlayer;->callbackContext:Lorg/apache/cordova/CallbackContext;

    if-eqz v3, :cond_0

    .line 270
    new-instance v3, Lorg/apache/cordova/PluginResult;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v4, v5}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    move-object v2, v3

    .line 271
    .local v2, "result":Lorg/apache/cordova/PluginResult;
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 272
    move-object v3, v0

    iget-object v3, v3, Lcom/moust/cordova/videoplayer/VideoPlayer;->callbackContext:Lorg/apache/cordova/CallbackContext;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 273
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/moust/cordova/videoplayer/VideoPlayer;->callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 275
    .end local v2    # "result":Lorg/apache/cordova/PluginResult;
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 8

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/moust/cordova/videoplayer/VideoPlayer;
    move-object v1, p1

    .local v1, "mp":Landroid/media/MediaPlayer;
    move v2, p2

    .local v2, "what":I
    move v3, p3

    .local v3, "extra":I
    const-string v4, "VideoPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaPlayer.onError("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 246
    move-object v4, v1

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    move-object v4, v1

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->stop()V

    .line 249
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 250
    move-object v4, v0

    iget-object v4, v4, Lcom/moust/cordova/videoplayer/VideoPlayer;->dialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 251
    const/4 v4, 0x0

    move v0, v4

    .end local v0    # "this":Lcom/moust/cordova/videoplayer/VideoPlayer;
    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lcom/moust/cordova/videoplayer/VideoPlayer;
    move-object v1, p1

    .local v1, "mp":Landroid/media/MediaPlayer;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 257
    return-void
.end method

.method protected openVideoDialog(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 15
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/moust/cordova/videoplayer/VideoPlayer;
    move-object/from16 v1, p1

    .local v1, "path":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "options":Lorg/json/JSONObject;
    move-object v8, v0

    new-instance v9, Landroid/app/Dialog;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    iget-object v11, v11, Lcom/moust/cordova/videoplayer/VideoPlayer;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v11}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x1030006

    invoke-direct {v10, v11, v12}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v9, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->dialog:Landroid/app/Dialog;

    .line 128
    move-object v8, v0

    iget-object v8, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->dialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    const v9, 0x1030002

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 129
    move-object v8, v0

    iget-object v8, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->dialog:Landroid/app/Dialog;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    move-result v8

    .line 130
    move-object v8, v0

    iget-object v8, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->dialog:Landroid/app/Dialog;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 131
    move-object v8, v0

    iget-object v8, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->dialog:Landroid/app/Dialog;

    move-object v9, v0

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 134
    new-instance v8, Landroid/widget/LinearLayout;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    iget-object v10, v10, Lcom/moust/cordova/videoplayer/VideoPlayer;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v10}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v3, v8

    .line 135
    .local v3, "main":Landroid/widget/LinearLayout;
    move-object v8, v3

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    move-object v8, v3

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 137
    move-object v8, v3

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 138
    move-object v8, v3

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    .line 140
    move-object v8, v0

    new-instance v9, Landroid/widget/VideoView;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    iget-object v11, v11, Lcom/moust/cordova/videoplayer/VideoPlayer;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v11}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v9, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->videoView:Landroid/widget/VideoView;

    .line 141
    move-object v8, v0

    iget-object v8, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->videoView:Landroid/widget/VideoView;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    move-object v8, v3

    move-object v9, v0

    iget-object v9, v9, Lcom/moust/cordova/videoplayer/VideoPlayer;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    move-object v8, v0

    new-instance v9, Landroid/media/MediaPlayer;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v9, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->player:Landroid/media/MediaPlayer;

    .line 147
    move-object v8, v0

    iget-object v8, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->player:Landroid/media/MediaPlayer;

    move-object v9, v0

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 148
    move-object v8, v0

    iget-object v8, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->player:Landroid/media/MediaPlayer;

    move-object v9, v0

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 149
    move-object v8, v0

    iget-object v8, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->player:Landroid/media/MediaPlayer;

    move-object v9, v0

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 151
    move-object v8, v1

    const-string v9, "/android_asset/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 152
    move-object v8, v1

    const/16 v9, 0xf

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 153
    .local v4, "f":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v5, v8

    .line 155
    .local v5, "fd":Landroid/content/res/AssetFileDescriptor;
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v8}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    move-object v5, v8

    .line 156
    move-object v8, v0

    iget-object v8, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->player:Landroid/media/MediaPlayer;

    move-object v9, v5

    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v10

    move-object v12, v5

    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v12

    invoke-virtual/range {v8 .. v13}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .line 164
    .line 178
    .end local v4    # "f":Ljava/lang/String;
    .end local v5    # "fd":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    move-object v8, v2

    :try_start_1
    const-string v9, "volume"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move v4, v8

    .line 179
    .local v4, "volume":F
    const-string v8, "VideoPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setVolume: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 180
    move-object v8, v0

    iget-object v8, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->player:Landroid/media/MediaPlayer;

    move v9, v4

    move v10, v4

    invoke-virtual {v8, v9, v10}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 187
    .line 189
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    if-lt v8, v9, :cond_0

    .line 191
    move-object v8, v2

    :try_start_2
    const-string v9, "scalingMode"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    move v4, v8

    .line 192
    .local v4, "scalingMode":I
    move v8, v4

    packed-switch v8, :pswitch_data_0

    .line 198
    const-string v8, "VideoPlayer"

    const-string v9, "setVideoScalingMode VIDEO_SCALING_MODE_SCALE_TO_FIT"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 199
    move-object v8, v0

    iget-object v8, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->player:Landroid/media/MediaPlayer;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 207
    .line 210
    .end local v4    # "scalingMode":I
    :cond_0
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v8}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v8

    move-object v4, v8

    .line 211
    .local v4, "mHolder":Landroid/view/SurfaceHolder;
    move-object v8, v4

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 212
    move-object v8, v4

    new-instance v9, Lcom/moust/cordova/videoplayer/VideoPlayer$2;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    invoke-direct {v10, v11}, Lcom/moust/cordova/videoplayer/VideoPlayer$2;-><init>(Lcom/moust/cordova/videoplayer/VideoPlayer;)V

    invoke-interface {v8, v9}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 233
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    move-object v5, v8

    .line 234
    .local v5, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object v8, v5

    move-object v9, v0

    iget-object v9, v9, Lcom/moust/cordova/videoplayer/VideoPlayer;->dialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v8

    .line 235
    move-object v8, v5

    const/4 v9, -0x1

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 236
    move-object v8, v5

    const/4 v9, -0x1

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 238
    move-object v8, v0

    iget-object v8, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->dialog:Landroid/app/Dialog;

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 239
    move-object v8, v0

    iget-object v8, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->dialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 240
    move-object v8, v0

    iget-object v8, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->dialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 241
    .end local v4    # "mHolder":Landroid/view/SurfaceHolder;
    .end local v5    # "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_2
    return-void

    .line 157
    .local v4, "f":Ljava/lang/String;
    .local v5, "fd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v8

    move-object v6, v8

    .line 158
    .local v6, "e":Ljava/lang/Exception;
    new-instance v8, Lorg/apache/cordova/PluginResult;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    sget-object v10, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    move-object v11, v6

    invoke-virtual {v11}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    move-object v7, v8

    .line 159
    .local v7, "result":Lorg/apache/cordova/PluginResult;
    move-object v8, v7

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 160
    move-object v8, v0

    iget-object v8, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->callbackContext:Lorg/apache/cordova/CallbackContext;

    move-object v9, v7

    invoke-virtual {v8, v9}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 161
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 162
    goto :goto_2

    .line 167
    .end local v4    # "f":Ljava/lang/String;
    .end local v5    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "result":Lorg/apache/cordova/PluginResult;
    :cond_1
    move-object v8, v0

    :try_start_3
    iget-object v8, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->player:Landroid/media/MediaPlayer;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 174
    goto/16 :goto_0

    .line 168
    :catch_1
    move-exception v8

    move-object v4, v8

    .line 169
    .local v4, "e":Ljava/lang/Exception;
    new-instance v8, Lorg/apache/cordova/PluginResult;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    sget-object v10, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    move-object v11, v4

    invoke-virtual {v11}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    move-object v5, v8

    .line 170
    .local v5, "result":Lorg/apache/cordova/PluginResult;
    move-object v8, v5

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 171
    move-object v8, v0

    iget-object v8, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->callbackContext:Lorg/apache/cordova/CallbackContext;

    move-object v9, v5

    invoke-virtual {v8, v9}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 172
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 173
    goto :goto_2

    .line 181
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "result":Lorg/apache/cordova/PluginResult;
    :catch_2
    move-exception v8

    move-object v4, v8

    .line 182
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v8, Lorg/apache/cordova/PluginResult;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    sget-object v10, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    move-object v11, v4

    invoke-virtual {v11}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    move-object v5, v8

    .line 183
    .restart local v5    # "result":Lorg/apache/cordova/PluginResult;
    move-object v8, v5

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 184
    move-object v8, v0

    iget-object v8, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->callbackContext:Lorg/apache/cordova/CallbackContext;

    move-object v9, v5

    invoke-virtual {v8, v9}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 185
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 186
    goto :goto_2

    .line 194
    .end local v5    # "result":Lorg/apache/cordova/PluginResult;
    .local v4, "scalingMode":I
    :pswitch_0
    :try_start_4
    const-string v8, "VideoPlayer"

    const-string v9, "setVideoScalingMode VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 195
    move-object v8, v0

    iget-object v8, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->player:Landroid/media/MediaPlayer;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 196
    goto/16 :goto_1

    .line 201
    .end local v4    # "scalingMode":I
    :catch_3
    move-exception v8

    move-object v4, v8

    .line 202
    .local v4, "e":Ljava/lang/Exception;
    new-instance v8, Lorg/apache/cordova/PluginResult;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    sget-object v10, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    move-object v11, v4

    invoke-virtual {v11}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    move-object v5, v8

    .line 203
    .restart local v5    # "result":Lorg/apache/cordova/PluginResult;
    move-object v8, v5

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 204
    move-object v8, v0

    iget-object v8, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->callbackContext:Lorg/apache/cordova/CallbackContext;

    move-object v9, v5

    invoke-virtual {v8, v9}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 205
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/moust/cordova/videoplayer/VideoPlayer;->callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 206
    goto/16 :goto_2

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
