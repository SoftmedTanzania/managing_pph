.class Lorg/xwalk/core/XWalkLibraryLoader;
.super Ljava/lang/Object;
.source "XWalkLibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;,
        Lorg/xwalk/core/XWalkLibraryLoader$ActivateTask;,
        Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;,
        Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;,
        Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;,
        Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XWalkLib"

.field private static final XWALK_APK_NAME:Ljava/lang/String; = "XWalkRuntimeLib.apk"

.field private static sActiveTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    return-void
.end method

.method static synthetic access$002(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Landroid/os/AsyncTask;

    .prologue
    .line 34
    sput-object p0, Lorg/xwalk/core/XWalkLibraryLoader;->sActiveTask:Landroid/os/AsyncTask;

    return-object p0
.end method

.method public static cancelDecompress()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 172
    sget-object v0, Lorg/xwalk/core/XWalkLibraryLoader;->sActiveTask:Landroid/os/AsyncTask;

    check-cast v0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;

    .line 173
    .local v0, "task":Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->cancel(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static cancelDownload()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 206
    sget-object v0, Lorg/xwalk/core/XWalkLibraryLoader;->sActiveTask:Landroid/os/AsyncTask;

    check-cast v0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;

    .line 207
    .local v0, "task":Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->cancel(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLibraryStatus()I
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->getCoreStatus()I

    move-result v0

    return v0
.end method

.method public static isLibraryReady()Z
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->getInstance()Lorg/xwalk/core/XWalkCoreWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSharedLibrary()Z
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->getInstance()Lorg/xwalk/core/XWalkCoreWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->isSharedMode()Z

    move-result v0

    return v0
.end method

.method public static prepareToInit(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handlePreInit(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public static startActivate(Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;Landroid/app/Activity;)V
    .locals 2
    .param p0, "listener"    # Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 184
    new-instance v0, Lorg/xwalk/core/XWalkLibraryLoader$ActivateTask;

    invoke-direct {v0, p0, p1}, Lorg/xwalk/core/XWalkLibraryLoader$ActivateTask;-><init>(Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;Landroid/app/Activity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/XWalkLibraryLoader$ActivateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 185
    return-void
.end method

.method public static startDecompress(Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;Landroid/content/Context;)V
    .locals 2
    .param p0, "listener"    # Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    new-instance v0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;

    invoke-direct {v0, p0, p1}, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;-><init>(Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 164
    return-void
.end method

.method public static startDownload(Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "listener"    # Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 197
    new-instance v0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;

    invoke-direct {v0, p0, p1, p2}, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;-><init>(Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/XWalkLibraryLoader$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 198
    return-void
.end method
