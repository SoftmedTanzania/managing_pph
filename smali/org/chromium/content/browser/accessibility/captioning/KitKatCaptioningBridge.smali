.class public Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;
.super Ljava/lang/Object;
.source "KitKatCaptioningBridge.java"

# interfaces
.implements Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge$1;,
        Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge$KitKatCaptioningChangeListener;
    }
.end annotation


# instance fields
.field private final mCaptioningChangeDelegate:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;

.field private final mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private final mCaptioningManager:Landroid/view/accessibility/CaptioningManager;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 2
    .param p1, "contenViewCore"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge$KitKatCaptioningChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge$KitKatCaptioningChangeListener;-><init>(Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge$1;)V

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 62
    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;

    invoke-direct {v0, p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeDelegate:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;

    .line 63
    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 66
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeDelegate:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;
    .param p1, "x1"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->getCaptioningStyleFrom(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;

    move-result-object v0

    return-object v0
.end method

.method private getCaptioningStyleFrom(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;
    .locals 1
    .param p1, "userStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .prologue
    .line 105
    invoke-static {p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->createFrom(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public registerBridge()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 86
    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->syncToDelegate()V

    .line 87
    return-void
.end method

.method public syncToDelegate()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeDelegate:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->onEnabledChanged(Z)V

    .line 74
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeDelegate:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->onFontScaleChanged(F)V

    .line 75
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeDelegate:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->onLocaleChanged(Ljava/util/Locale;)V

    .line 76
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeDelegate:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->getCaptioningStyleFrom(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->onUserStyleChanged(Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;)V

    .line 78
    return-void
.end method

.method public unregisterBridge()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 95
    return-void
.end method
