.class Lorg/crosswalk/engine/XWalkExposedJsApi;
.super Ljava/lang/Object;
.source "XWalkExposedJsApi.java"

# interfaces
.implements Lorg/apache/cordova/ExposedJsApi;


# instance fields
.field private final bridge:Lorg/apache/cordova/CordovaBridge;


# direct methods
.method constructor <init>(Lorg/apache/cordova/CordovaBridge;)V
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkExposedJsApi;
    move-object v1, p1

    .local v1, "bridge":Lorg/apache/cordova/CordovaBridge;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/crosswalk/engine/XWalkExposedJsApi;->bridge:Lorg/apache/cordova/CordovaBridge;

    .line 33
    return-void
.end method


# virtual methods
.method public exec(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation runtime Lorg/xwalk/core/JavascriptInterface;
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkExposedJsApi;
    move v1, p1

    .local v1, "bridgeSecret":I
    move-object v2, p2

    .local v2, "service":Ljava/lang/String;
    move-object v3, p3

    .local v3, "action":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "callbackId":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "arguments":Ljava/lang/String;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    if-nez v6, :cond_0

    .line 38
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 40
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lorg/crosswalk/engine/XWalkExposedJsApi;->bridge:Lorg/apache/cordova/CordovaBridge;

    move v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/apache/cordova/CordovaBridge;->jsExec(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lorg/crosswalk/engine/XWalkExposedJsApi;
    return-object v0
.end method

.method public retrieveJsMessages(IZ)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation runtime Lorg/xwalk/core/JavascriptInterface;
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkExposedJsApi;
    move v1, p1

    .local v1, "bridgeSecret":I
    move v2, p2

    .local v2, "fromOnlineEvent":Z
    move-object v3, v0

    iget-object v3, v3, Lorg/crosswalk/engine/XWalkExposedJsApi;->bridge:Lorg/apache/cordova/CordovaBridge;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/cordova/CordovaBridge;->jsRetrieveJsMessages(IZ)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lorg/crosswalk/engine/XWalkExposedJsApi;
    return-object v0
.end method

.method public setNativeToJsBridgeMode(II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation runtime Lorg/xwalk/core/JavascriptInterface;
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkExposedJsApi;
    move v1, p1

    .local v1, "bridgeSecret":I
    move v2, p2

    .local v2, "value":I
    move-object v3, v0

    iget-object v3, v3, Lorg/crosswalk/engine/XWalkExposedJsApi;->bridge:Lorg/apache/cordova/CordovaBridge;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/cordova/CordovaBridge;->jsSetNativeToJsBridgeMode(II)V

    .line 46
    return-void
.end method
