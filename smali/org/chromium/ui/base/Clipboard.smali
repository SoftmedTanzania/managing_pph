.class public Lorg/chromium/ui/base/Clipboard;
.super Ljava/lang/Object;
.source "Clipboard.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "ui"
.end annotation


# static fields
.field private static final IS_HTML_CLIPBOARD_SUPPORTED:Z


# instance fields
.field private final mClipboardManager:Landroid/content/ClipboardManager;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/base/Clipboard;->IS_HTML_CLIPBOARD_SUPPORTED:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/chromium/ui/base/Clipboard;->mContext:Landroid/content/Context;

    .line 41
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lorg/chromium/ui/base/Clipboard;->mClipboardManager:Landroid/content/ClipboardManager;

    .line 43
    return-void
.end method

.method private static create(Landroid/content/Context;)Lorg/chromium/ui/base/Clipboard;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lorg/chromium/ui/base/Clipboard;

    invoke-direct {v0, p0}, Lorg/chromium/ui/base/Clipboard;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getCoercedText()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 75
    iget-object v2, p0, Lorg/chromium/ui/base/Clipboard;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 76
    .local v0, "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 77
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/ui/base/Clipboard;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 78
    .local v1, "sequence":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 79
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    .end local v1    # "sequence":Ljava/lang/CharSequence;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getHTMLText()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 94
    sget-boolean v1, Lorg/chromium/ui/base/Clipboard;->IS_HTML_CLIPBOARD_SUPPORTED:Z

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lorg/chromium/ui/base/Clipboard;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 96
    .local v0, "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v1

    .line 100
    .end local v0    # "clip":Landroid/content/ClipData;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isHTMLClipboardSupported()Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 160
    sget-boolean v0, Lorg/chromium/ui/base/Clipboard;->IS_HTML_CLIPBOARD_SUPPORTED:Z

    return v0
.end method

.method private setPrimaryClipNoException(Landroid/content/ClipData;)V
    .locals 4
    .param p1, "clip"    # Landroid/content/ClipData;

    .prologue
    .line 165
    :try_start_0
    iget-object v2, p0, Lorg/chromium/ui/base/Clipboard;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 168
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/chromium/ui/base/Clipboard;->mContext:Landroid/content/Context;

    sget v3, Lorg/chromium/ui/R$string;->copy_to_clipboard_failure_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lorg/chromium/ui/base/Clipboard;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public setHTMLText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/chromium/ui/base/Clipboard;->setHTMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public setHTMLText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 140
    sget-boolean v0, Lorg/chromium/ui/base/Clipboard;->IS_HTML_CLIPBOARD_SUPPORTED:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-static {p2, p3, p1}, Landroid/content/ClipData;->newHtmlText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/Clipboard;->setPrimaryClipNoException(Landroid/content/ClipData;)V

    .line 143
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/chromium/ui/base/Clipboard;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-static {p1, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/Clipboard;->setPrimaryClipNoException(Landroid/content/ClipData;)V

    .line 114
    return-void
.end method
