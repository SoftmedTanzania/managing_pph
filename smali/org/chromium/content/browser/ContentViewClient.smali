.class public Lorg/chromium/content/browser/ContentViewClient;
.super Ljava/lang/Object;
.source "ContentViewClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentViewClient"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shouldPropagateKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 199
    const/16 v0, 0x52

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x50

    if-eq p0, v0, :cond_0

    const/16 v0, 0x19

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x18

    if-ne p0, v0, :cond_1

    .line 211
    :cond_0
    const/4 v0, 0x0

    .line 213
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public doesPerformWebSearch()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public getContentVideoViewClient()Lorg/chromium/content/browser/ContentVideoViewClient;
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public isExternalFlingActive()Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public isJavascriptEnabled()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public onBackgroundColorChanged(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 41
    return-void
.end method

.method public onContextualActionBarHidden()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public onContextualActionBarShown()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onImeEvent()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public onImeStateChangeRequested(Z)V
    .locals 0
    .param p1, "requestShow"    # Z

    .prologue
    .line 82
    return-void
.end method

.method public onOffsetsForFullscreenChanged(FFF)V
    .locals 0
    .param p1, "topControlsOffsetYPix"    # F
    .param p2, "contentOffsetYPix"    # F
    .param p3, "overdrawBottomHeightPix"    # F

    .prologue
    .line 51
    return-void
.end method

.method public onStartContentIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intentUrl"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 145
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p2, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 152
    .local v1, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "ContentViewClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 153
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 154
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "ContentViewClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No application can handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onUpdateTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 34
    return-void
.end method

.method public performWebSearch(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchQuery"    # Ljava/lang/String;

    .prologue
    .line 126
    return-void
.end method

.method public shouldBlockMediaRequest(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 54
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 56
    .local v0, "keyCode":I
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewClient;->shouldPropagateKey(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v1

    .line 59
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x3d

    if-eq v0, v2, :cond_0

    const/16 v2, 0x33

    if-eq v0, v2, :cond_0

    const/16 v2, 0x86

    if-eq v0, v2, :cond_0

    .line 65
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startActionMode(Landroid/view/View;Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;Z)Lorg/chromium/content/browser/SelectActionMode;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "actionHandler"    # Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;
    .param p3, "floating"    # Z

    .prologue
    const/4 v2, 0x0

    .line 94
    if-eqz p3, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-object v2

    .line 95
    :cond_1
    new-instance v1, Lorg/chromium/content/browser/SelectActionModeCallback;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, p2}, Lorg/chromium/content/browser/SelectActionModeCallback;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;)V

    .line 97
    .local v1, "callback":Landroid/view/ActionMode$Callback;
    invoke-virtual {p1, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 98
    .local v0, "actionMode":Landroid/view/ActionMode;
    if-eqz v0, :cond_0

    new-instance v2, Lorg/chromium/content/browser/SelectActionMode;

    invoke-direct {v2, v0}, Lorg/chromium/content/browser/SelectActionMode;-><init>(Landroid/view/ActionMode;)V

    goto :goto_0
.end method

.method public supportsFloatingActionMode()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method
