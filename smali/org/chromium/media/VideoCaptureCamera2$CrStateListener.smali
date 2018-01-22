.class Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "VideoCaptureCamera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/VideoCaptureCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CrStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/VideoCaptureCamera2;


# direct methods
.method private constructor <init>(Lorg/chromium/media/VideoCaptureCamera2;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;
    .param p2, "x1"    # Lorg/chromium/media/VideoCaptureCamera2$1;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;)V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 62
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/media/VideoCaptureCamera2;->access$002(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 63
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/media/VideoCaptureCamera2;->access$102(Lorg/chromium/media/VideoCaptureCamera2;Z)Z

    .line 64
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 5
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 69
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/media/VideoCaptureCamera2;->access$002(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 70
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/media/VideoCaptureCamera2;->access$102(Lorg/chromium/media/VideoCaptureCamera2;Z)Z

    .line 71
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v2, v1, Lorg/chromium/media/VideoCaptureCamera2;->mNativeVideoCaptureDeviceAndroid:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera device error "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lorg/chromium/media/VideoCaptureCamera2;->nativeOnError(JLjava/lang/String;)V

    .line 73
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    const/4 v2, 0x0

    .line 49
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->access$002(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 50
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v0, v2}, Lorg/chromium/media/VideoCaptureCamera2;->access$102(Lorg/chromium/media/VideoCaptureCamera2;Z)Z

    .line 51
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/media/VideoCaptureCamera2;->access$202(Lorg/chromium/media/VideoCaptureCamera2;Z)Z

    .line 52
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v0}, Lorg/chromium/media/VideoCaptureCamera2;->access$300(Lorg/chromium/media/VideoCaptureCamera2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v0, v2}, Lorg/chromium/media/VideoCaptureCamera2;->access$202(Lorg/chromium/media/VideoCaptureCamera2;Z)Z

    .line 54
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v2, v1, Lorg/chromium/media/VideoCaptureCamera2;->mNativeVideoCaptureDeviceAndroid:J

    const-string v1, "Error configuring camera"

    invoke-virtual {v0, v2, v3, v1}, Lorg/chromium/media/VideoCaptureCamera2;->nativeOnError(JLjava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method
