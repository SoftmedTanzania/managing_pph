.class public abstract Lorg/xwalk/core/XWalkActivity;
.super Landroid/app/Activity;
.source "XWalkActivity.java"


# instance fields
.field private mActivityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public isSharedMode()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivity;->mActivityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->isSharedMode()Z

    move-result v0

    return v0
.end method

.method public isXWalkReady()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivity;->mActivityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    new-instance v0, Lorg/xwalk/core/XWalkActivity$1;

    invoke-direct {v0, p0}, Lorg/xwalk/core/XWalkActivity$1;-><init>(Lorg/xwalk/core/XWalkActivity;)V

    .line 117
    .local v0, "cancelCommand":Ljava/lang/Runnable;
    new-instance v1, Lorg/xwalk/core/XWalkActivity$2;

    invoke-direct {v1, p0}, Lorg/xwalk/core/XWalkActivity$2;-><init>(Lorg/xwalk/core/XWalkActivity;)V

    .line 123
    .local v1, "completeCommand":Ljava/lang/Runnable;
    new-instance v2, Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-direct {v2, p0, v0, v1}, Lorg/xwalk/core/XWalkActivityDelegate;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lorg/xwalk/core/XWalkActivity;->mActivityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    .line 124
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 129
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivity;->mActivityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->onResume()V

    .line 130
    return-void
.end method

.method protected abstract onXWalkReady()V
.end method
