.class public Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;
.super Landroid/view/View;
.source "PopupTouchHandleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FADE_IN_DELAY_MS:I = 0x12c

.field private static final FADE_IN_DURATION_MS:I = 0xc8


# instance fields
.field private mAlpha:F

.field private final mContainer:Landroid/widget/PopupWindow;

.field private final mContext:Landroid/content/Context;

.field private mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

.field private mDelayVisibilityUpdateWAR:Z

.field private final mDelegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mFadeStartTime:J

.field private mHasPendingInvalidate:Z

.field private mHotspotX:F

.field private mHotspotY:F

.field private mInvalidationRunnable:Ljava/lang/Runnable;

.field private mOrientation:I

.field private final mParentPositionListener:Lorg/chromium/content/browser/PositionObserver$Listener;

.field private mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

.field private mParentPositionX:I

.field private mParentPositionY:I

.field private mPositionX:I

.field private mPositionY:I

.field private final mTempScreenCoords:[I

.field private mTemporarilyHidden:Z

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;)V
    .locals 6
    .param p1, "delegate"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    invoke-interface {p1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;->getParent()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 60
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTempScreenCoords:[I

    .line 62
    const/4 v2, 0x3

    iput v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mOrientation:I

    .line 114
    invoke-interface {p1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;->getParent()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContext:Landroid/content/Context;

    .line 115
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDelegate:Ljava/lang/ref/WeakReference;

    .line 116
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const v5, 0x10102c8

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    .line 117
    iget-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 118
    iget-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 119
    iget-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 120
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAlpha:F

    .line 121
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mVisible:Z

    .line 122
    new-instance v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$1;-><init>(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionListener:Lorg/chromium/content/browser/PositionObserver$Listener;

    .line 128
    return-void

    :cond_0
    move v0, v1

    .line 121
    goto :goto_0
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;II)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->updateParentPosition(II)V

    return-void
.end method

.method static synthetic access$102(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHasPendingInvalidate:Z

    return p1
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->doInvalidate()V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->isScrollInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->rescheduleFadeIn()V

    return-void
.end method

.method static synthetic access$502(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHidden:Z

    return p1
.end method

.method static synthetic access$600(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->beginFadeIn()V

    return-void
.end method

.method private beginFadeIn()V
    .locals 2

    .prologue
    .line 286
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 287
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAlpha:F

    .line 288
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mFadeStartTime:J

    .line 289
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->doInvalidate()V

    goto :goto_0
.end method

.method private doInvalidate()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->updateVisibility()V

    .line 245
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->updatePosition()V

    .line 246
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->invalidate()V

    goto :goto_0
.end method

.method private getAdjustedPositionX()I
    .locals 2

    .prologue
    .line 318
    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionX:I

    iget v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHotspotX:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getAdjustedPositionY()I
    .locals 2

    .prologue
    .line 324
    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionY:I

    iget v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHotspotY:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getContainerPositionX()I
    .locals 2

    .prologue
    .line 199
    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionX:I

    iget v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionX:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getContainerPositionY()I
    .locals 2

    .prologue
    .line 203
    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionY:I

    iget v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionY:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getDelegateAndHideIfNull()Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;
    .locals 2

    .prologue
    .line 328
    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDelegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;

    .line 330
    .local v0, "delegate":Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;
    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->hide()V

    .line 331
    :cond_0
    return-object v0
.end method

.method private getPositionX()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 397
    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionX:I

    return v0
.end method

.method private getPositionY()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 402
    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionY:I

    return v0
.end method

.method private getVisibleHeight()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 414
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getVisibleWidth()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 408
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method

.method private hide()V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHidden:Z

    .line 363
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAlpha:F

    .line 364
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 365
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 366
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    if-eqz v0, :cond_2

    .line 367
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionListener:Lorg/chromium/content/browser/PositionObserver$Listener;

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/PositionObserver;->removeListener(Lorg/chromium/content/browser/PositionObserver$Listener;)V

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    .line 371
    :cond_2
    return-void
.end method

.method private isScrollInProgress()Z
    .locals 2

    .prologue
    .line 335
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getDelegateAndHideIfNull()Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;

    move-result-object v0

    .line 336
    .local v0, "delegate":Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 337
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;->isScrollInProgress()Z

    move-result v1

    goto :goto_0
.end method

.method private rescheduleFadeIn()V
    .locals 4

    .prologue
    .line 266
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;-><init>(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

    .line 280
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 281
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-static {p0, v0, v2, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 283
    return-void
.end method

.method private scheduleInvalidate()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mInvalidationRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$2;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$2;-><init>(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mInvalidationRunnable:Ljava/lang/Runnable;

    .line 260
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHasPendingInvalidate:Z

    if-eqz v0, :cond_1

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHasPendingInvalidate:Z

    .line 262
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mInvalidationRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setFocus(FF)V
    .locals 4
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 375
    float-to-int v2, p1

    iget v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHotspotX:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int v0, v2, v3

    .line 376
    .local v0, "x":I
    float-to-int v2, p2

    iget v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHotspotY:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int v1, v2, v3

    .line 377
    .local v1, "y":I
    iget v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionX:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionY:I

    if-ne v2, v1, :cond_0

    .line 385
    :goto_0
    return-void

    .line 378
    :cond_0
    iput v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionX:I

    .line 379
    iput v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionY:I

    .line 380
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->isScrollInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 381
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->temporarilyHide()V

    goto :goto_0

    .line 383
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->scheduleInvalidate()V

    goto :goto_0
.end method

.method private setOrientation(I)V
    .locals 6
    .param p1, "orientation"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/high16 v4, 0x40800000    # 4.0f

    .line 150
    sget-boolean v3, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-ltz p1, :cond_0

    if-le p1, v5, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 152
    :cond_1
    iget v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mOrientation:I

    if-ne v3, p1, :cond_2

    .line 189
    :goto_0
    return-void

    .line 154
    :cond_2
    iget v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mOrientation:I

    if-eq v3, v5, :cond_4

    const/4 v0, 0x1

    .line 155
    .local v0, "hadValidOrientation":Z
    :goto_1
    iput p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mOrientation:I

    .line 157
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getAdjustedPositionX()I

    move-result v1

    .line 158
    .local v1, "oldAdjustedPositionX":I
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getAdjustedPositionY()I

    move-result v2

    .line 160
    .local v2, "oldAdjustedPositionY":I
    packed-switch p1, :pswitch_data_0

    .line 183
    :goto_2
    const/4 v3, 0x0

    iput v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHotspotY:F

    .line 186
    if-eqz v0, :cond_3

    int-to-float v3, v1

    int-to-float v4, v2

    invoke-direct {p0, v3, v4}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setFocus(FF)V

    .line 187
    :cond_3
    iget-object v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x437f0000    # 255.0f

    iget v5, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAlpha:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 188
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->scheduleInvalidate()V

    goto :goto_0

    .line 154
    .end local v0    # "hadValidOrientation":Z
    .end local v1    # "oldAdjustedPositionX":I
    .end local v2    # "oldAdjustedPositionY":I
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 162
    .restart local v0    # "hadValidOrientation":Z
    .restart local v1    # "oldAdjustedPositionX":I
    .restart local v2    # "oldAdjustedPositionY":I
    :pswitch_0
    iget-object v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/chromium/content/browser/input/HandleViewResources;->getLeftHandleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 163
    iget-object v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    div-float/2addr v3, v4

    iput v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHotspotX:F

    goto :goto_2

    .line 168
    :pswitch_1
    iget-object v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/chromium/content/browser/input/HandleViewResources;->getRightHandleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 169
    iget-object v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    iput v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHotspotX:F

    goto :goto_2

    .line 174
    :pswitch_2
    iget-object v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/chromium/content/browser/input/HandleViewResources;->getCenterHandleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 175
    iget-object v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHotspotX:F

    goto :goto_2

    .line 160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 389
    iput-boolean p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mVisible:Z

    .line 390
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 391
    .local v0, "visibility":I
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 393
    :goto_1
    return-void

    .line 390
    .end local v0    # "visibility":I
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 392
    .restart local v0    # "visibility":I
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->scheduleInvalidate()V

    goto :goto_1
.end method

.method private show()V
    .locals 6
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 342
    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getDelegateAndHideIfNull()Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;

    move-result-object v0

    .line 345
    .local v0, "delegate":Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;
    if-eqz v0, :cond_0

    .line 347
    invoke-interface {v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;->getParentPositionObserver()Lorg/chromium/content/browser/PositionObserver;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    .line 348
    sget-boolean v1, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 352
    :cond_2
    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    invoke-interface {v1}, Lorg/chromium/content/browser/PositionObserver;->getPositionX()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    invoke-interface {v2}, Lorg/chromium/content/browser/PositionObserver;->getPositionY()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->updateParentPosition(II)V

    .line 354
    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    iget-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionListener:Lorg/chromium/content/browser/PositionObserver$Listener;

    invoke-interface {v1, v2}, Lorg/chromium/content/browser/PositionObserver;->addListener(Lorg/chromium/content/browser/PositionObserver$Listener;)V

    .line 355
    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 356
    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;->getParent()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getContainerPositionX()I

    move-result v4

    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getContainerPositionY()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method private temporarilyHide()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHidden:Z

    .line 238
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->updateVisibility()V

    .line 239
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->rescheduleFadeIn()V

    .line 240
    return-void
.end method

.method private updateAlpha()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 229
    iget v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAlpha:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    .line 234
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 231
    .local v0, "currentTimeMillis":J
    iget-wide v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mFadeStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x43480000    # 200.0f

    div-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAlpha:F

    .line 232
    iget-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    iget v4, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAlpha:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 233
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->scheduleInvalidate()V

    goto :goto_0
.end method

.method private updateParentPosition(II)V
    .locals 1
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I

    .prologue
    .line 192
    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionY:I

    if-ne v0, p2, :cond_0

    .line 196
    :goto_0
    return-void

    .line 193
    :cond_0
    iput p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionX:I

    .line 194
    iput p2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionY:I

    .line 195
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->temporarilyHide()V

    goto :goto_0
.end method

.method private updatePosition()V
    .locals 6

    .prologue
    .line 207
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getContainerPositionX()I

    move-result v1

    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getContainerPositionY()I

    move-result v2

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 209
    return-void
.end method

.method private updateVisibility()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-boolean v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mVisible:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHidden:Z

    if-nez v2, :cond_0

    move v0, v1

    .line 216
    .local v0, "newVisibility":I
    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    iget-boolean v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDelayVisibilityUpdateWAR:Z

    if-nez v2, :cond_1

    .line 218
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDelayVisibilityUpdateWAR:Z

    .line 219
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->scheduleInvalidate()V

    .line 226
    :goto_1
    return-void

    .line 212
    .end local v0    # "newVisibility":I
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 223
    .restart local v0    # "newVisibility":I
    :cond_1
    iput-boolean v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDelayVisibilityUpdateWAR:Z

    .line 225
    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 311
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 312
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->hide()V

    .line 313
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 303
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 304
    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->updateAlpha()V

    .line 305
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 306
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v1, 0x0

    .line 294
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 295
    invoke-virtual {p0, v1, v1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setMeasuredDimension(II)V

    .line 299
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getDelegateAndHideIfNull()Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;

    move-result-object v0

    .line 134
    .local v0, "delegate":Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;
    if-nez v0, :cond_0

    .line 145
    :goto_0
    return v1

    .line 138
    :cond_0
    invoke-interface {v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;->getParent()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTempScreenCoords:[I

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTempScreenCoords:[I

    aget v6, v6, v1

    int-to-float v6, v6

    sub-float v3, v5, v6

    .line 140
    .local v3, "offsetX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTempScreenCoords:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-float v6, v6

    sub-float v4, v5, v6

    .line 141
    .local v4, "offsetY":F
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 142
    .local v2, "offsetEvent":Landroid/view/MotionEvent;
    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 143
    invoke-interface {v0, v2}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;->onTouchHandleEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 144
    .local v1, "handled":Z
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0
.end method
