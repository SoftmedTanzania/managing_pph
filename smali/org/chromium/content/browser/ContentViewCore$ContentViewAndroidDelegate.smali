.class Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;
.super Ljava/lang/Object;
.source "ContentViewCore.java"

# interfaces
.implements Lorg/chromium/ui/base/ViewAndroidDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ContentViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentViewAndroidDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAnchorViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentContainerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    const-class v0, Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/view/ViewGroup;Lorg/chromium/content/browser/RenderCoordinates;)V
    .locals 1
    .param p1, "containerView"    # Landroid/view/ViewGroup;
    .param p2, "renderCoordinates"    # Lorg/chromium/content/browser/RenderCoordinates;

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mAnchorViews:Ljava/util/Map;

    .line 206
    iput-object p2, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    .line 207
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mCurrentContainerView:Ljava/lang/ref/WeakReference;

    .line 208
    return-void
.end method

.method private doSetAnchorViewPosition(Landroid/view/View;FFFF)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v7, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mCurrentContainerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 236
    .local v0, "containerView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 239
    sget-boolean v7, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->$assertionsDisabled:Z

    if-nez v7, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eq v7, v0, :cond_2

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 241
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->create(Landroid/content/Context;)Lorg/chromium/ui/gfx/DeviceDisplayInfo;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDIPScale()D

    move-result-wide v8

    double-to-float v3, v8

    .line 245
    .local v3, "scale":F
    mul-float v7, p2, v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 246
    .local v1, "leftMargin":I
    iget-object v7, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v7}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v7

    mul-float v8, p3, v3

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 247
    .local v6, "topMargin":I
    mul-float v7, p4, v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 249
    .local v4, "scaledWidth":I
    instance-of v7, v0, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_5

    .line 251
    invoke-static {v0}, Lorg/chromium/base/ApiCompatibilityUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 252
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v7

    add-float v8, p4, p2

    mul-float/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int v5, v7, v8

    .line 257
    .local v5, "startMargin":I
    :goto_1
    add-int v7, v4, v5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    if-le v7, v8, :cond_3

    .line 258
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    sub-int v4, v7, v5

    .line 260
    :cond_3
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    mul-float v7, p5, v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-direct {v2, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 262
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v2, v5}, Lorg/chromium/base/ApiCompatibilityUtils;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 263
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 264
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 255
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "startMargin":I
    :cond_4
    move v5, v1

    .restart local v5    # "startMargin":I
    goto :goto_1

    .line 265
    .end local v5    # "startMargin":I
    :cond_5
    instance-of v7, v0, Landroid/widget/AbsoluteLayout;

    if-eqz v7, :cond_6

    .line 271
    iget-object v7, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v7}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPixInt()I

    move-result v7

    add-int/2addr v1, v7

    .line 272
    iget-object v7, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v7}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPixInt()I

    move-result v7

    add-int/2addr v6, v7

    .line 274
    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    mul-float v7, p5, v3

    float-to-int v7, v7

    invoke-direct {v2, v4, v7, v1, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 277
    .local v2, "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 279
    .end local v2    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_6
    const-string v7, "ContentViewCore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown layout "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public acquireAnchorView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 212
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mCurrentContainerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 213
    .local v1, "containerView":Landroid/view/ViewGroup;
    if-nez v1, :cond_0

    move-object v0, v2

    .line 217
    :goto_0
    return-object v0

    .line 214
    :cond_0
    new-instance v0, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 215
    .local v0, "anchorView":Landroid/view/View;
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mAnchorViews:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public releaseAnchorView(Landroid/view/View;)V
    .locals 2
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 285
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mAnchorViews:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mCurrentContainerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 287
    .local v0, "containerView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 290
    :cond_0
    return-void
.end method

.method public setAnchorViewPosition(Landroid/view/View;FFFF)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 223
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mAnchorViews:Ljava/util/Map;

    new-instance v1, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;

    invoke-direct {v1, p2, p3, p4, p5}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;-><init>(FFFF)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-direct/range {p0 .. p5}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->doSetAnchorViewPosition(Landroid/view/View;FFFF)V

    .line 225
    return-void
.end method

.method updateCurrentContainerView(Landroid/view/ViewGroup;)V
    .locals 10
    .param p1, "containerView"    # Landroid/view/ViewGroup;

    .prologue
    .line 298
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mCurrentContainerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 299
    .local v8, "oldContainerView":Landroid/view/ViewGroup;
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mCurrentContainerView:Ljava/lang/ref/WeakReference;

    .line 300
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mAnchorViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 301
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 302
    .local v1, "anchorView":Landroid/view/View;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;

    .line 303
    .local v9, "position":Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;
    if-eqz v8, :cond_1

    .line 304
    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 306
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 307
    if-eqz v9, :cond_0

    .line 308
    invoke-static {v9}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->access$000(Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;)F

    move-result v2

    invoke-static {v9}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->access$100(Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;)F

    move-result v3

    invoke-static {v9}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->access$200(Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;)F

    move-result v4

    invoke-static {v9}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->access$300(Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;)F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->doSetAnchorViewPosition(Landroid/view/View;FFFF)V

    goto :goto_0

    .line 312
    .end local v1    # "anchorView":Landroid/view/View;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;>;"
    .end local v9    # "position":Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;
    :cond_2
    return-void
.end method
