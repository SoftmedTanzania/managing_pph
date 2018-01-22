.class public Lorg/xwalk/core/XWalkActivityDelegate;
.super Ljava/lang/Object;
.source "XWalkActivityDelegate.java"

# interfaces
.implements Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;
.implements Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;
.implements Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "XWalkActivity"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBackgroundDecorated:Z

.field private mCancelCommand:Ljava/lang/Runnable;

.field private mCompleteCommand:Ljava/lang/Runnable;

.field private mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

.field private mIsInitializing:Z

.field private mIsXWalkReady:Z

.field private mWillDecompress:Z

.field private mXWalkUpdater:Lorg/xwalk/core/XWalkUpdater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cancelCommand"    # Ljava/lang/Runnable;
    .param p3, "completeCommand"    # Ljava/lang/Runnable;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    .line 33
    iput-object p2, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mCancelCommand:Ljava/lang/Runnable;

    .line 34
    iput-object p3, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mCompleteCommand:Ljava/lang/Runnable;

    .line 36
    new-instance v0, Lorg/xwalk/core/XWalkDialogManager;

    iget-object v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/xwalk/core/XWalkDialogManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    .line 37
    new-instance v0, Lorg/xwalk/core/XWalkUpdater;

    iget-object v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    invoke-direct {v0, p0, v1, v2}, Lorg/xwalk/core/XWalkUpdater;-><init>(Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;Landroid/app/Activity;Lorg/xwalk/core/XWalkDialogManager;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mXWalkUpdater:Lorg/xwalk/core/XWalkUpdater;

    .line 39
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/xwalk/core/XWalkLibraryLoader;->prepareToInit(Landroid/app/Activity;)V

    .line 40
    return-void
.end method


# virtual methods
.method public isSharedMode()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsXWalkReady:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/xwalk/core/XWalkLibraryLoader;->isSharedLibrary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isXWalkReady()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsXWalkReady:Z

    return v0
.end method

.method public onActivateCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkDialogManager;->isShowingDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkDialogManager;->dismissDialog()V

    .line 122
    :cond_0
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mBackgroundDecorated:Z

    if-eqz v0, :cond_1

    .line 123
    const-string v0, "XWalkActivity"

    const-string v1, "Recover the background"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iput-boolean v2, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mBackgroundDecorated:Z

    .line 128
    :cond_1
    iput-boolean v2, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsInitializing:Z

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsXWalkReady:Z

    .line 130
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mCompleteCommand:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 131
    return-void
.end method

.method public onActivateFailed()V
    .locals 3

    .prologue
    .line 104
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsInitializing:Z

    .line 106
    iget-object v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mXWalkUpdater:Lorg/xwalk/core/XWalkUpdater;

    invoke-virtual {v1}, Lorg/xwalk/core/XWalkUpdater;->updateXWalkRuntime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 110
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 111
    const-string v1, "XWalkActivity"

    const-string v2, "Set the background to screen_background_dark"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const v1, 0x1080098

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 113
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mBackgroundDecorated:Z

    .line 116
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public onActivateStarted()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public onDecompressCancelled()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkDialogManager;->dismissDialog()V

    .line 82
    iput-boolean v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mWillDecompress:Z

    .line 84
    iput-boolean v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsInitializing:Z

    .line 85
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mCancelCommand:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 86
    return-void
.end method

.method public onDecompressCompleted()V
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mWillDecompress:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkDialogManager;->dismissDialog()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mWillDecompress:Z

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v0}, Lorg/xwalk/core/XWalkLibraryLoader;->startActivate(Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;Landroid/app/Activity;)V

    .line 96
    return-void
.end method

.method public onDecompressStarted()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    new-instance v1, Lorg/xwalk/core/XWalkActivityDelegate$1;

    invoke-direct {v1, p0}, Lorg/xwalk/core/XWalkActivityDelegate$1;-><init>(Lorg/xwalk/core/XWalkActivityDelegate;)V

    invoke-virtual {v0, v1}, Lorg/xwalk/core/XWalkDialogManager;->showDecompressProgress(Ljava/lang/Runnable;)V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mWillDecompress:Z

    .line 77
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsInitializing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsXWalkReady:Z

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsInitializing:Z

    .line 58
    invoke-static {}, Lorg/xwalk/core/XWalkLibraryLoader;->isLibraryReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    const-string v0, "XWalkActivity"

    const-string v1, "Activate by XWalkActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v0}, Lorg/xwalk/core/XWalkLibraryLoader;->startActivate(Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;Landroid/app/Activity;)V

    goto :goto_0

    .line 62
    :cond_2
    const-string v0, "XWalkActivity"

    const-string v1, "Initialize by XWalkActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v0}, Lorg/xwalk/core/XWalkLibraryLoader;->startDecompress(Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onXWalkUpdateCancelled()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mCancelCommand:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 136
    return-void
.end method

.method public setXWalkApkUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mXWalkUpdater:Lorg/xwalk/core/XWalkUpdater;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/XWalkUpdater;->setXWalkApkUrl(Ljava/lang/String;)V

    .line 52
    return-void
.end method
