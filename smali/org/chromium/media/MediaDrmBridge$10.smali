.class Lorg/chromium/media/MediaDrmBridge$10;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/MediaDrmBridge;->onResetDeviceCredentialsCompleted(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/MediaDrmBridge;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lorg/chromium/media/MediaDrmBridge;Z)V
    .locals 0

    .prologue
    .line 835
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$10;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iput-boolean p2, p0, Lorg/chromium/media/MediaDrmBridge$10;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 838
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$10;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {v0}, Lorg/chromium/media/MediaDrmBridge;->access$700(Lorg/chromium/media/MediaDrmBridge;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$10;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge$10;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {v1}, Lorg/chromium/media/MediaDrmBridge;->access$800(Lorg/chromium/media/MediaDrmBridge;)J

    move-result-wide v2

    iget-boolean v1, p0, Lorg/chromium/media/MediaDrmBridge$10;->val$success:Z

    invoke-static {v0, v2, v3, v1}, Lorg/chromium/media/MediaDrmBridge;->access$1700(Lorg/chromium/media/MediaDrmBridge;JZ)V

    .line 841
    :cond_0
    return-void
.end method
