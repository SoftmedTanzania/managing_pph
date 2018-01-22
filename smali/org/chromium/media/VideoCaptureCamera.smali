.class public abstract Lorg/chromium/media/VideoCaptureCamera;
.super Lorg/chromium/media/VideoCapture;
.source "VideoCaptureCamera.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xf
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "media"
.end annotation


# static fields
.field protected static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field private static final TAG:Ljava/lang/String; = "VideoCaptureCamera"


# instance fields
.field protected mCamera:Landroid/hardware/Camera;

.field protected mGlTextures:[I

.field protected mIsRunning:Z

.field protected mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method constructor <init>(Landroid/content/Context;IJ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "nativeVideoCaptureDeviceAndroid"    # J

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/media/VideoCapture;-><init>(Landroid/content/Context;IJ)V

    .line 34
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mIsRunning:Z

    .line 38
    iput-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    .line 39
    iput-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 73
    return-void
.end method

.method protected static getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;
    .locals 5
    .param p0, "id"    # I

    .prologue
    .line 45
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 48
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :try_start_0
    invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v0    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :goto_0
    return-object v0

    .line 49
    .restart local v0    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :catch_0
    move-exception v1

    .line 50
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v2, "VideoCaptureCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCameraInfo: Camera.getCameraInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;
    .locals 5
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 60
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 66
    :goto_0
    return-object v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v2, "VideoCaptureCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCameraParameters: android.hardware.Camera.getParameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    .line 64
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public allocate(III)Z
    .locals 23
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # I

    .prologue
    .line 77
    const-string v20, "VideoCaptureCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "allocate: requested ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")@"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "fps"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/chromium/media/VideoCaptureCamera;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    .line 87
    .local v3, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    if-nez v3, :cond_0

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera;->release()V

    .line 89
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    .line 90
    const/16 v20, 0x0

    .line 213
    .end local v3    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :goto_0
    return v20

    .line 81
    :catch_0
    move-exception v7

    .line 82
    .local v7, "ex":Ljava/lang/RuntimeException;
    const-string v20, "VideoCaptureCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "allocate: Camera.open: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/16 v20, 0x0

    goto :goto_0

    .line 92
    .end local v7    # "ex":Ljava/lang/RuntimeException;
    .restart local v3    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :cond_0
    iget v0, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/chromium/media/VideoCaptureCamera;->mCameraNativeOrientation:I

    .line 94
    iget v0, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    move/from16 v20, v0

    if-nez v20, :cond_1

    const/16 v20, 0x1

    :goto_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/chromium/media/VideoCaptureCamera;->mInvertDeviceOrientationReadings:Z

    .line 96
    const-string v20, "VideoCaptureCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "allocate: Rotation dev="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/media/VideoCaptureCamera;->getDeviceRotation()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", cam="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mCameraNativeOrientation:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", facing back? "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mInvertDeviceOrientationReadings:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/chromium/media/VideoCaptureCamera;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v18

    .line 100
    .local v18, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v18, :cond_2

    .line 101
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    .line 102
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 94
    .end local v18    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_1
    const/16 v20, 0x0

    goto :goto_1

    .line 107
    .restart local v18    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_2
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v14

    .line 108
    .local v14, "listFpsRange":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-eqz v14, :cond_3

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_4

    .line 109
    :cond_3
    const-string v20, "VideoCaptureCamera"

    const-string v21, "allocate: no fps range found"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 113
    :cond_4
    move/from16 v0, p3

    mul-int/lit16 v11, v0, 0x3e8

    .line 115
    .local v11, "frameRateScaled":I
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 116
    .local v4, "chosenFpsRange":[I
    const/16 v20, 0x0

    aget v20, v4, v20

    sub-int v20, v11, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    const/16 v21, 0x1

    aget v21, v4, v21

    sub-int v21, v11, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    const/16 v20, 0x0

    aget v10, v4, v20

    .line 119
    .local v10, "frameRateNearest":I
    :goto_2
    add-int/lit16 v0, v10, 0x3e7

    move/from16 v20, v0

    move/from16 v0, v20

    div-int/lit16 v5, v0, 0x3e8

    .line 120
    .local v5, "chosenFrameRate":I
    const v9, 0x7fffffff

    .line 121
    .local v9, "fpsRangeSize":I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 122
    .local v8, "fpsRange":[I
    const/16 v20, 0x0

    aget v20, v8, v20

    move/from16 v0, v20

    if-gt v0, v11, :cond_5

    const/16 v20, 0x1

    aget v20, v8, v20

    move/from16 v0, v20

    if-gt v11, v0, :cond_5

    const/16 v20, 0x1

    aget v20, v8, v20

    const/16 v21, 0x0

    aget v21, v8, v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    if-gt v0, v9, :cond_5

    .line 124
    move-object v4, v8

    .line 125
    move/from16 v5, p3

    .line 126
    const/16 v20, 0x1

    aget v20, v8, v20

    const/16 v21, 0x0

    aget v21, v8, v21

    sub-int v9, v20, v21

    goto :goto_3

    .line 116
    .end local v5    # "chosenFrameRate":I
    .end local v8    # "fpsRange":[I
    .end local v9    # "fpsRangeSize":I
    .end local v10    # "frameRateNearest":I
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_6
    const/16 v20, 0x1

    aget v10, v4, v20

    goto :goto_2

    .line 129
    .restart local v5    # "chosenFrameRate":I
    .restart local v9    # "fpsRangeSize":I
    .restart local v10    # "frameRateNearest":I
    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_7
    const-string v20, "VideoCaptureCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "allocate: fps set to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    aget v22, v4, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget v22, v4, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v13

    .line 135
    .local v13, "listCameraSize":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const v17, 0x7fffffff

    .line 136
    .local v17, "minDiff":I
    move/from16 v16, p1

    .line 137
    .local v16, "matchedWidth":I
    move/from16 v15, p2

    .line 138
    .local v15, "matchedHeight":I
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_8
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/hardware/Camera$Size;

    .line 139
    .local v19, "size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    sub-int v20, v20, p1

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    sub-int v21, v21, p2

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v21

    add-int v6, v20, v21

    .line 141
    .local v6, "diff":I
    const-string v20, "VideoCaptureCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "allocate: supported ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "), diff="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    move/from16 v0, v17

    if-ge v6, v0, :cond_8

    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    rem-int/lit8 v20, v20, 0x20

    if-nez v20, :cond_8

    .line 148
    move/from16 v17, v6

    .line 149
    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v16, v0

    .line 150
    move-object/from16 v0, v19

    iget v15, v0, Landroid/hardware/Camera$Size;->height:I

    goto :goto_4

    .line 153
    .end local v6    # "diff":I
    .end local v19    # "size":Landroid/hardware/Camera$Size;
    :cond_9
    const v20, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 154
    const-string v20, "VideoCaptureCamera"

    const-string v21, "allocate: can not find a multiple-of-32 resolution"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 157
    :cond_a
    const-string v20, "VideoCaptureCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "allocate: matched ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 160
    const-string v20, "VideoCaptureCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Image stabilization supported, currently: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", setting it."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 167
    :goto_5
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v20

    const-string v21, "continuous-video"

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 169
    const-string v20, "continuous-video"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 174
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v15, v5, v2}, Lorg/chromium/media/VideoCaptureCamera;->setCaptureParameters(IIILandroid/hardware/Camera$Parameters;)V

    .line 175
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 176
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 177
    const/16 v20, 0x0

    aget v20, v4, v20

    const/16 v21, 0x1

    aget v21, v4, v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mCaptureFormat:Lorg/chromium/media/VideoCapture$CaptureFormat;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/chromium/media/VideoCapture$CaptureFormat;->mPixelFormat:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 180
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    .line 190
    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 191
    const v20, 0x8d65

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    invoke-static/range {v20 .. v21}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 193
    const v20, 0x8d65

    const/16 v21, 0x2801

    const v22, 0x46180400    # 9729.0f

    invoke-static/range {v20 .. v22}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 195
    const v20, 0x8d65

    const/16 v21, 0x2800

    const v22, 0x46180400    # 9729.0f

    invoke-static/range {v20 .. v22}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 198
    const v20, 0x8d65

    const/16 v21, 0x2802

    const v22, 0x812f

    invoke-static/range {v20 .. v22}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 200
    const v20, 0x8d65

    const/16 v21, 0x2803

    const v22, 0x812f

    invoke-static/range {v20 .. v22}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 203
    new-instance v20, Landroid/graphics/SurfaceTexture;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    invoke-direct/range {v20 .. v21}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/chromium/media/VideoCaptureCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 206
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 212
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/media/VideoCaptureCamera;->allocateBuffers()V

    .line 213
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 164
    :cond_b
    const-string v20, "VideoCaptureCamera"

    const-string v21, "Image stabilization not supported."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 171
    :cond_c
    const-string v20, "VideoCaptureCamera"

    const-string v21, "Continuous focus mode not supported."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 181
    :catch_1
    move-exception v7

    .line 182
    .restart local v7    # "ex":Ljava/lang/RuntimeException;
    const-string v20, "VideoCaptureCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "setParameters: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 207
    .end local v7    # "ex":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v7

    .line 208
    .local v7, "ex":Ljava/io/IOException;
    const-string v20, "VideoCaptureCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "allocate: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/16 v20, 0x0

    goto/16 :goto_0
.end method

.method abstract allocateBuffers()V
.end method

.method public deallocate()V
    .locals 4

    .prologue
    .line 266
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 279
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/media/VideoCaptureCamera;->stopCapture()Z

    .line 270
    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 271
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 272
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mCaptureFormat:Lorg/chromium/media/VideoCapture$CaptureFormat;

    .line 273
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 274
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "VideoCaptureCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deallocate: failed to deallocate camera, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method abstract setCaptureParameters(IIILandroid/hardware/Camera$Parameters;)V
.end method

.method abstract setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
.end method

.method public startCapture()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 218
    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v3, :cond_0

    .line 219
    const-string v2, "VideoCaptureCamera"

    const-string v3, "startCapture: camera is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_0
    return v1

    .line 223
    :cond_0
    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 225
    :try_start_0
    iget-boolean v3, p0, Lorg/chromium/media/VideoCaptureCamera;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 230
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v1, v2

    goto :goto_0

    .line 228
    :cond_1
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lorg/chromium/media/VideoCaptureCamera;->mIsRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 232
    invoke-virtual {p0, p0}, Lorg/chromium/media/VideoCaptureCamera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 234
    :try_start_2
    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move v1, v2

    .line 239
    goto :goto_0

    .line 230
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v2, "VideoCaptureCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startCapture: Camera.startPreview: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopCapture()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 244
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 245
    const-string v0, "VideoCaptureCamera"

    const-string v1, "stopCapture: camera is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :goto_0
    return v2

    .line 249
    :cond_0
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 251
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 256
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 254
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mIsRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 259
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/media/VideoCaptureCamera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
