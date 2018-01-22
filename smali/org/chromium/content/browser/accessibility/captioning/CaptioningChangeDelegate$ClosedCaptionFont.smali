.class public final enum Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;
.super Ljava/lang/Enum;
.source "CaptioningChangeDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClosedCaptionFont"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

.field public static final enum CASUAL:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

.field public static final enum CURSIVE:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

.field public static final enum DEFAULT:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

.field public static final enum MONOSPACE:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

.field public static final enum SANS_SERIF:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

.field public static final enum SANS_SERIF_CONDENSED:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

.field public static final enum SANS_SERIF_MONOSPACE:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

.field public static final enum SANS_SERIF_SMALLCAPS:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

.field public static final enum SERIF:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

.field public static final enum SERIF_MONOSPACE:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;


# instance fields
.field private final mFontFamily:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 203
    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    const-string v1, "DEFAULT"

    const-string v2, ""

    invoke-direct {v0, v1, v4, v2}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->DEFAULT:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    .line 204
    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    const-string v1, "SANS_SERIF"

    const-string v2, "sans-serif"

    invoke-direct {v0, v1, v5, v2}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->SANS_SERIF:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    .line 205
    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    const-string v1, "SANS_SERIF_CONDENSED"

    const-string v2, "sans-serif-condensed"

    invoke-direct {v0, v1, v6, v2}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->SANS_SERIF_CONDENSED:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    .line 206
    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    const-string v1, "SANS_SERIF_MONOSPACE"

    const-string v2, "sans-serif-monospace"

    invoke-direct {v0, v1, v7, v2}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->SANS_SERIF_MONOSPACE:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    .line 207
    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    const-string v1, "SERIF"

    const-string v2, "serif"

    invoke-direct {v0, v1, v8, v2}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->SERIF:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    .line 208
    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    const-string v1, "SERIF_MONOSPACE"

    const/4 v2, 0x5

    const-string v3, "serif-monospace"

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->SERIF_MONOSPACE:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    .line 209
    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    const-string v1, "CASUAL"

    const/4 v2, 0x6

    const-string v3, "casual"

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->CASUAL:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    .line 210
    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    const-string v1, "CURSIVE"

    const/4 v2, 0x7

    const-string v3, "cursive"

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->CURSIVE:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    .line 211
    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    const-string v1, "SANS_SERIF_SMALLCAPS"

    const/16 v2, 0x8

    const-string v3, "sans-serif-smallcaps"

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->SANS_SERIF_SMALLCAPS:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    .line 213
    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    const-string v1, "MONOSPACE"

    const/16 v2, 0x9

    const-string v3, "monospace"

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->MONOSPACE:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    .line 199
    const/16 v0, 0xa

    new-array v0, v0, [Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    sget-object v1, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->DEFAULT:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->SANS_SERIF:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->SANS_SERIF_CONDENSED:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    aput-object v1, v0, v6

    sget-object v1, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->SANS_SERIF_MONOSPACE:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    aput-object v1, v0, v7

    sget-object v1, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->SERIF:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->SERIF_MONOSPACE:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->CASUAL:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->CURSIVE:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->SANS_SERIF_SMALLCAPS:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->MONOSPACE:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->$VALUES:[Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "fontFamily"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 218
    iput-object p3, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->mFontFamily:Ljava/lang/String;

    .line 219
    return-void
.end method

.method private static belongsToFontFamily(Landroid/graphics/Typeface;Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;)Z
    .locals 2
    .param p0, "typeFace"    # Landroid/graphics/Typeface;
    .param p1, "font"    # Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    .prologue
    .line 247
    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static fromSystemFont(Landroid/graphics/Typeface;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;
    .locals 5
    .param p0, "typeFace"    # Landroid/graphics/Typeface;

    .prologue
    .line 228
    if-nez p0, :cond_1

    sget-object v1, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->DEFAULT:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    .line 236
    :cond_0
    :goto_0
    return-object v1

    .line 229
    :cond_1
    invoke-static {}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->values()[Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    move-result-object v0

    .local v0, "arr$":[Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 230
    .local v1, "font":Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;
    invoke-static {p0, v1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->belongsToFontFamily(Landroid/graphics/Typeface;Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 236
    .end local v1    # "font":Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;
    :cond_2
    sget-object v1, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->DEFAULT:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 199
    const-class v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    return-object v0
.end method

.method public static values()[Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->$VALUES:[Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    invoke-virtual {v0}, [Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;

    return-object v0
.end method


# virtual methods
.method public getFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;->mFontFamily:Ljava/lang/String;

    return-object v0
.end method
