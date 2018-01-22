.class public Lorg/chromium/content/browser/accessibility/captioning/CaptioningBridgeFactory;
.super Ljava/lang/Object;
.source "CaptioningBridgeFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge;
    .locals 2
    .param p0, "contentViewCore"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 24
    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 27
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/EmptyCaptioningBridge;

    invoke-direct {v0}, Lorg/chromium/content/browser/accessibility/captioning/EmptyCaptioningBridge;-><init>()V

    goto :goto_0
.end method
