.class Lorg/xwalk/core/internal/XWalkSettings$EventHandler;
.super Ljava/lang/Object;
.source "XWalkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/internal/XWalkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final UPDATE_WEBKIT_PREFERENCES:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lorg/xwalk/core/internal/XWalkSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-class v0, Lorg/xwalk/core/internal/XWalkSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/xwalk/core/internal/XWalkSettings;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->this$0:Lorg/xwalk/core/internal/XWalkSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method static synthetic access$600(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettings$EventHandler;

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->updateWebkitPreferencesLocked()V

    return-void
.end method

.method private updateWebkitPreferencesLocked()V
    .locals 4

    .prologue
    .line 121
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->this$0:Lorg/xwalk/core/internal/XWalkSettings;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings;->access$100(Lorg/xwalk/core/internal/XWalkSettings;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->this$0:Lorg/xwalk/core/internal/XWalkSettings;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings;->access$400(Lorg/xwalk/core/internal/XWalkSettings;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 141
    :cond_1
    :goto_0
    return-void

    .line 123
    :cond_2
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 124
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->this$0:Lorg/xwalk/core/internal/XWalkSettings;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings;->access$200(Lorg/xwalk/core/internal/XWalkSettings;)V

    goto :goto_0

    .line 128
    :cond_3
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->this$0:Lorg/xwalk/core/internal/XWalkSettings;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings;->access$300(Lorg/xwalk/core/internal/XWalkSettings;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->this$0:Lorg/xwalk/core/internal/XWalkSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/xwalk/core/internal/XWalkSettings;->access$302(Lorg/xwalk/core/internal/XWalkSettings;Z)Z

    .line 132
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 136
    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->this$0:Lorg/xwalk/core/internal/XWalkSettings;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings;->access$300(Lorg/xwalk/core/internal/XWalkSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->this$0:Lorg/xwalk/core/internal/XWalkSettings;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings;->access$100(Lorg/xwalk/core/internal/XWalkSettings;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 139
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method bindUiThread()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 98
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/XWalkSettings$EventHandler$1;

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->getUiThreadLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/xwalk/core/internal/XWalkSettings$EventHandler$1;-><init>(Lorg/xwalk/core/internal/XWalkSettings$EventHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method maybeRunOnUiThreadBlocking(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 115
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings$EventHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 116
    invoke-static {p1}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 118
    :cond_0
    return-void
.end method
