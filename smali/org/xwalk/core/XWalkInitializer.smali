.class public Lorg/xwalk/core/XWalkInitializer;
.super Ljava/lang/Object;
.source "XWalkInitializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/XWalkInitializer$1;,
        Lorg/xwalk/core/XWalkInitializer$XWalkLibraryListener;,
        Lorg/xwalk/core/XWalkInitializer$XWalkInitListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XWalkActivity"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mInitListener:Lorg/xwalk/core/XWalkInitializer$XWalkInitListener;

.field private mIsInitializing:Z

.field private mIsXWalkReady:Z


# direct methods
.method public constructor <init>(Lorg/xwalk/core/XWalkInitializer$XWalkInitListener;Landroid/app/Activity;)V
    .locals 1
    .param p1, "listener"    # Lorg/xwalk/core/XWalkInitializer$XWalkInitListener;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lorg/xwalk/core/XWalkInitializer;->mInitListener:Lorg/xwalk/core/XWalkInitializer$XWalkInitListener;

    .line 122
    iput-object p2, p0, Lorg/xwalk/core/XWalkInitializer;->mActivity:Landroid/app/Activity;

    .line 124
    iget-object v0, p0, Lorg/xwalk/core/XWalkInitializer;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/xwalk/core/XWalkLibraryLoader;->prepareToInit(Landroid/app/Activity;)V

    .line 125
    return-void
.end method

.method static synthetic access$102(Lorg/xwalk/core/XWalkInitializer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/XWalkInitializer;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lorg/xwalk/core/XWalkInitializer;->mIsInitializing:Z

    return p1
.end method

.method static synthetic access$200(Lorg/xwalk/core/XWalkInitializer;)Lorg/xwalk/core/XWalkInitializer$XWalkInitListener;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkInitializer;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/xwalk/core/XWalkInitializer;->mInitListener:Lorg/xwalk/core/XWalkInitializer$XWalkInitListener;

    return-object v0
.end method

.method static synthetic access$300(Lorg/xwalk/core/XWalkInitializer;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkInitializer;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/xwalk/core/XWalkInitializer;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$402(Lorg/xwalk/core/XWalkInitializer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/XWalkInitializer;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lorg/xwalk/core/XWalkInitializer;->mIsXWalkReady:Z

    return p1
.end method


# virtual methods
.method public cancelInit()Z
    .locals 2

    .prologue
    .line 156
    const-string v0, "XWalkActivity"

    const-string v1, "Cancel by XWalkInitializer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkInitializer;->mIsInitializing:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/xwalk/core/XWalkLibraryLoader;->cancelDecompress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initAsync()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 136
    iget-boolean v1, p0, Lorg/xwalk/core/XWalkInitializer;->mIsInitializing:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/xwalk/core/XWalkInitializer;->mIsXWalkReady:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 147
    :goto_0
    return v0

    .line 138
    :cond_1
    iput-boolean v0, p0, Lorg/xwalk/core/XWalkInitializer;->mIsInitializing:Z

    .line 139
    iget-object v1, p0, Lorg/xwalk/core/XWalkInitializer;->mInitListener:Lorg/xwalk/core/XWalkInitializer$XWalkInitListener;

    invoke-interface {v1}, Lorg/xwalk/core/XWalkInitializer$XWalkInitListener;->onXWalkInitStarted()V

    .line 140
    invoke-static {}, Lorg/xwalk/core/XWalkLibraryLoader;->isLibraryReady()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    const-string v1, "XWalkActivity"

    const-string v2, "Activate by XWalkInitializer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v1, Lorg/xwalk/core/XWalkInitializer$XWalkLibraryListener;

    invoke-direct {v1, p0, v3}, Lorg/xwalk/core/XWalkInitializer$XWalkLibraryListener;-><init>(Lorg/xwalk/core/XWalkInitializer;Lorg/xwalk/core/XWalkInitializer$1;)V

    iget-object v2, p0, Lorg/xwalk/core/XWalkInitializer;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lorg/xwalk/core/XWalkLibraryLoader;->startActivate(Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;Landroid/app/Activity;)V

    goto :goto_0

    .line 144
    :cond_2
    const-string v1, "XWalkActivity"

    const-string v2, "Initialize by XWalkInitializer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v1, Lorg/xwalk/core/XWalkInitializer$XWalkLibraryListener;

    invoke-direct {v1, p0, v3}, Lorg/xwalk/core/XWalkInitializer$XWalkLibraryListener;-><init>(Lorg/xwalk/core/XWalkInitializer;Lorg/xwalk/core/XWalkInitializer$1;)V

    iget-object v2, p0, Lorg/xwalk/core/XWalkInitializer;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lorg/xwalk/core/XWalkLibraryLoader;->startDecompress(Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;Landroid/content/Context;)V

    goto :goto_0
.end method
