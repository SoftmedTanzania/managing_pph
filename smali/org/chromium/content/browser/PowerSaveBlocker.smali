.class Lorg/chromium/content/browser/PowerSaveBlocker;
.super Ljava/lang/Object;
.source "PowerSaveBlocker.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mKeepScreenOnView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lorg/chromium/content/browser/PowerSaveBlocker;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/PowerSaveBlocker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyBlock(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 6
    .param p1, "contentViewCore"    # Lorg/chromium/content/browser/ContentViewCore;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 29
    sget-boolean v3, Lorg/chromium/content/browser/PowerSaveBlocker;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/chromium/content/browser/PowerSaveBlocker;->mKeepScreenOnView:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 30
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object v0

    .line 31
    .local v0, "delegate":Lorg/chromium/ui/base/ViewAndroidDelegate;
    invoke-interface {v0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->acquireAnchorView()Landroid/view/View;

    move-result-object v1

    .line 32
    .local v1, "anchorView":Landroid/view/View;
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lorg/chromium/content/browser/PowerSaveBlocker;->mKeepScreenOnView:Ljava/lang/ref/WeakReference;

    move v3, v2

    move v4, v2

    move v5, v2

    .line 33
    invoke-interface/range {v0 .. v5}, Lorg/chromium/ui/base/ViewAndroidDelegate;->setAnchorViewPosition(Landroid/view/View;FFFF)V

    .line 34
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 35
    return-void
.end method

.method private static create()Lorg/chromium/content/browser/PowerSaveBlocker;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lorg/chromium/content/browser/PowerSaveBlocker;

    invoke-direct {v0}, Lorg/chromium/content/browser/PowerSaveBlocker;-><init>()V

    return-object v0
.end method

.method private removeBlock(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 3
    .param p1, "contentViewCore"    # Lorg/chromium/content/browser/ContentViewCore;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 39
    sget-boolean v2, Lorg/chromium/content/browser/PowerSaveBlocker;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/chromium/content/browser/PowerSaveBlocker;->mKeepScreenOnView:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 40
    :cond_0
    iget-object v2, p0, Lorg/chromium/content/browser/PowerSaveBlocker;->mKeepScreenOnView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 41
    .local v0, "anchorView":Landroid/view/View;
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/chromium/content/browser/PowerSaveBlocker;->mKeepScreenOnView:Ljava/lang/ref/WeakReference;

    .line 42
    if-nez v0, :cond_1

    .line 47
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object v1

    .line 45
    .local v1, "delegate":Lorg/chromium/ui/base/ViewAndroidDelegate;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 46
    invoke-interface {v1, v0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->releaseAnchorView(Landroid/view/View;)V

    goto :goto_0
.end method
