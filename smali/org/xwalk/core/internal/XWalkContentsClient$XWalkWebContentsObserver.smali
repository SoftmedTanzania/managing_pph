.class public Lorg/xwalk/core/internal/XWalkContentsClient$XWalkWebContentsObserver;
.super Lorg/chromium/content_public/browser/WebContentsObserver;
.source "XWalkContentsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/internal/XWalkContentsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XWalkWebContentsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/internal/XWalkContentsClient;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/internal/XWalkContentsClient;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0
    .param p2, "webContents"    # Lorg/chromium/content_public/browser/WebContents;

    .prologue
    .line 58
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentsClient$XWalkWebContentsObserver;->this$0:Lorg/xwalk/core/internal/XWalkContentsClient;

    .line 59
    invoke-direct {p0, p2}, Lorg/chromium/content_public/browser/WebContentsObserver;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    .line 60
    return-void
.end method


# virtual methods
.method public didChangeThemeColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClient$XWalkWebContentsObserver;->this$0:Lorg/xwalk/core/internal/XWalkContentsClient;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClient;->onDidChangeThemeColor(I)V

    .line 65
    return-void
.end method

.method public didFailLoad(ZZILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "isProvisionalLoad"    # Z
    .param p2, "isMainFrame"    # Z
    .param p3, "errorCode"    # I
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, -0x3

    if-eq p3, v0, :cond_0

    if-nez p2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClient$XWalkWebContentsObserver;->this$0:Lorg/xwalk/core/internal/XWalkContentsClient;

    invoke-static {p3}, Lorg/xwalk/core/internal/ErrorCodeConversionHelper;->convertErrorCode(I)I

    move-result v1

    invoke-virtual {v0, v1, p4, p5}, Lorg/xwalk/core/internal/XWalkContentsClient;->onReceivedError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public didFinishLoad(JLjava/lang/String;Z)V
    .locals 0
    .param p1, "frameId"    # J
    .param p3, "validatedUrl"    # Ljava/lang/String;
    .param p4, "isMainFrame"    # Z

    .prologue
    .line 102
    return-void
.end method

.method public didNavigateAnyFrame(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    .line 91
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClient$XWalkWebContentsObserver;->this$0:Lorg/xwalk/core/internal/XWalkContentsClient;

    invoke-virtual {v0, p1, p3}, Lorg/xwalk/core/internal/XWalkContentsClient;->doUpdateVisitedHistory(Ljava/lang/String;Z)V

    .line 92
    return-void
.end method

.method public didStopLoading(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClient$XWalkWebContentsObserver;->this$0:Lorg/xwalk/core/internal/XWalkContentsClient;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClient;->onPageFinished(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public documentLoadedInFrame(J)V
    .locals 1
    .param p1, "frameId"    # J

    .prologue
    .line 106
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClient$XWalkWebContentsObserver;->this$0:Lorg/xwalk/core/internal/XWalkContentsClient;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContentsClient;->onDocumentLoadedInFrame(J)V

    .line 107
    return-void
.end method
