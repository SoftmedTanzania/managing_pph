.class public final Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;
.super Ljava/lang/Object;
.source "TextTrackSettings.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field private static final DEFAULT_VALUE:Ljava/lang/String; = ""


# instance fields
.field private mTextTrackBackgroundColor:Ljava/lang/String;

.field private mTextTrackFontFamily:Ljava/lang/String;

.field private mTextTrackFontStyle:Ljava/lang/String;

.field private mTextTrackFontVariant:Ljava/lang/String;

.field private mTextTrackTextColor:Ljava/lang/String;

.field private mTextTrackTextShadow:Ljava/lang/String;

.field private mTextTrackTextSize:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "textTrackBackgroundColor"    # Ljava/lang/String;
    .param p2, "textTrackFontFamily"    # Ljava/lang/String;
    .param p3, "textTrackFontStyle"    # Ljava/lang/String;
    .param p4, "textTrackFontVariant"    # Ljava/lang/String;
    .param p5, "textTrackTextColor"    # Ljava/lang/String;
    .param p6, "textTrackTextShadow"    # Ljava/lang/String;
    .param p7, "textTrackTextSize"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackBackgroundColor:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackFontFamily:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackFontStyle:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackFontVariant:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackTextColor:Ljava/lang/String;

    .line 52
    iput-object p6, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackTextShadow:Ljava/lang/String;

    .line 53
    iput-object p7, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackTextSize:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public getTextTrackBackgroundColor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackBackgroundColor:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextTrackFontFamily()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackFontFamily:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextTrackFontStyle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackFontStyle:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextTrackFontVariant()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackFontVariant:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextTrackTextColor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackTextColor:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextTrackTextShadow()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackTextShadow:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextTrackTextSize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackTextSize:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
