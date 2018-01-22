.class Lcom/moust/cordova/videoplayer/VideoPlayer$1;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moust/cordova/videoplayer/VideoPlayer;->execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moust/cordova/videoplayer/VideoPlayer;

.field final synthetic val$options:Lorg/json/JSONObject;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/moust/cordova/videoplayer/VideoPlayer;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/moust/cordova/videoplayer/VideoPlayer$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/moust/cordova/videoplayer/VideoPlayer;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/moust/cordova/videoplayer/VideoPlayer$1;->this$0:Lcom/moust/cordova/videoplayer/VideoPlayer;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/moust/cordova/videoplayer/VideoPlayer$1;->val$path:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/moust/cordova/videoplayer/VideoPlayer$1;->val$options:Lorg/json/JSONObject;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/moust/cordova/videoplayer/VideoPlayer$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/moust/cordova/videoplayer/VideoPlayer$1;->this$0:Lcom/moust/cordova/videoplayer/VideoPlayer;

    move-object v2, v0

    iget-object v2, v2, Lcom/moust/cordova/videoplayer/VideoPlayer$1;->val$path:Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Lcom/moust/cordova/videoplayer/VideoPlayer$1;->val$options:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lcom/moust/cordova/videoplayer/VideoPlayer;->openVideoDialog(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 78
    return-void
.end method
