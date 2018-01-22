.class public Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;
.super Ljava/lang/Object;
.source "CaptioningChangeDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;,
        Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;
    }
.end annotation


# static fields
.field public static final DEFAULT_CAPTIONING_PREF_VALUE:Ljava/lang/String; = ""
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end field

.field private static final FONT_STYLE_ITALIC:Ljava/lang/String; = "italic"


# instance fields
.field private mTextTrackBackgroundColor:Ljava/lang/String;

.field private mTextTrackEnabled:Z

.field private mTextTrackFontFamily:Ljava/lang/String;

.field private mTextTrackFontStyle:Ljava/lang/String;

.field private mTextTrackFontVariant:Ljava/lang/String;

.field private mTextTrackTextColor:Ljava/lang/String;

.field private mTextTrackTextShadow:Ljava/lang/String;

.field private mTextTrackTextSize:Ljava/lang/String;

.field private final mWeakContentViewCore:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/chromium/content/browser/ContentViewCore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 1
    .param p1, "contentViewCore"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mWeakContentViewCore:Ljava/lang/ref/WeakReference;

    .line 108
    return-void
.end method

.method public static androidColorToCssColor(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 6
    .param p0, "color"    # Ljava/lang/Integer;

    .prologue
    .line 268
    if-nez p0, :cond_0

    .line 269
    const-string v1, ""

    .line 275
    :goto_0
    return-object v1

    .line 272
    :cond_0
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#.##"

    new-instance v3, Ljava/text/DecimalFormatSymbols;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v1, v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "alpha":Ljava/lang/String;
    const-string v1, "rgba(%s, %s, %s, %s)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static androidFontScaleToPercentage(F)Ljava/lang/String;
    .locals 4
    .param p0, "fontScale"    # F

    .prologue
    .line 286
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#%"

    new-instance v2, Ljava/text/DecimalFormatSymbols;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    float-to-double v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notifySettingsChanged()V
    .locals 9

    .prologue
    .line 290
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mWeakContentViewCore:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/chromium/content/browser/ContentViewCore;

    .line 291
    .local v8, "contentViewCore":Lorg/chromium/content/browser/ContentViewCore;
    if-nez v8, :cond_0

    .line 301
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-boolean v1, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackEnabled:Z

    if-eqz v1, :cond_1

    .line 293
    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackBackgroundColor:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackFontFamily:Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackFontStyle:Ljava/lang/String;

    iget-object v4, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackFontVariant:Ljava/lang/String;

    iget-object v5, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackTextColor:Ljava/lang/String;

    iget-object v6, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackTextShadow:Ljava/lang/String;

    iget-object v7, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackTextSize:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .local v0, "settings":Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;
    invoke-virtual {v8, v0}, Lorg/chromium/content/browser/ContentViewCore;->setTextTrackSettings(Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;)V

    goto :goto_0

    .line 299
    .end local v0    # "settings":Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;
    :cond_1
    new-instance v1, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;

    invoke-direct {v1}, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;-><init>()V

    invoke-virtual {v8, v1}, Lorg/chromium/content/browser/ContentViewCore;->setTextTrackSettings(Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;)V

    goto :goto_0
.end method


# virtual methods
.method public onEnabledChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackEnabled:Z

    .line 51
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->notifySettingsChanged()V

    .line 52
    return-void
.end method

.method public onFontScaleChanged(F)V
    .locals 1
    .param p1, "fontScale"    # F

    .prologue
    .line 58
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mWeakContentViewCore:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-static {p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->androidFontScaleToPercentage(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackTextSize:Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->notifySettingsChanged()V

    goto :goto_0
.end method

.method public onLocaleChanged(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 66
    return-void
.end method

.method public onUserStyleChanged(Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;)V
    .locals 5
    .param p1, "userStyle"    # Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;

    .prologue
    .line 75
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mWeakContentViewCore:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 98
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->getForegroundColor()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->androidColorToCssColor(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackTextColor:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->getBackgroundColor()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->androidColorToCssColor(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackBackgroundColor:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->getEdgeType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->getEdgeColor()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->androidColorToCssColor(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->fromSystemEdgeAttribute(Ljava/lang/Integer;Ljava/lang/String;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    move-result-object v0

    .line 84
    .local v0, "edge":Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;
    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->getTextShadow()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackTextShadow:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    .line 87
    .local v2, "typeFace":Landroid/graphics/Typeface;
    invoke-static {v2}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->fromSystemFont(Landroid/graphics/Typeface;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    move-result-object v1

    .line 88
    .local v1, "font":Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;
    invoke-virtual {v1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->getFontFamily()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackFontFamily:Ljava/lang/String;

    .line 89
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    const-string v3, "italic"

    iput-object v3, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackFontStyle:Ljava/lang/String;

    .line 95
    :goto_1
    const-string v3, ""

    iput-object v3, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackFontVariant:Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->notifySettingsChanged()V

    goto :goto_0

    .line 92
    :cond_1
    const-string v3, ""

    iput-object v3, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackFontStyle:Ljava/lang/String;

    goto :goto_1
.end method
