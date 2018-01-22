.class public Lorg/xwalk/core/internal/XWalkResourceClientBridge;
.super Lorg/xwalk/core/internal/XWalkResourceClientInternal;
.source "XWalkResourceClientBridge.java"


# instance fields
.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private onDocumentLoadedInFrameXWalkViewInternallongMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onLoadFinishedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onLoadStartedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onProgressChangedXWalkViewInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onReceivedClientCertRequestXWalkViewInternalClientCertRequestInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onReceivedLoadErrorXWalkViewInternalintStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onReceivedSslErrorXWalkViewInternalValueCallbackSslErrorMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private shouldInterceptLoadRequestXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private shouldOverrideUrlLoadingXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/Object;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "wrapper"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 29
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    .line 52
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onDocumentLoadedInFrame"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onDocumentLoadedInFrameXWalkViewInternallongMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 71
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onLoadStarted"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadStartedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 90
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onLoadFinished"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadFinishedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 109
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onProgressChanged"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onProgressChangedXWalkViewInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 131
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "shouldInterceptLoadRequest"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequestXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 150
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onReceivedLoadError"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedLoadErrorXWalkViewInternalintStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 172
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "shouldOverrideUrlLoading"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldOverrideUrlLoadingXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 191
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onReceivedSslError"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedSslErrorXWalkViewInternalValueCallbackSslErrorMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 210
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onReceivedClientCertRequest"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedClientCertRequestXWalkViewInternalClientCertRequestInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 31
    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    .line 32
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->reflectionInit()V

    .line 33
    return-void
.end method


# virtual methods
.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public onDocumentLoadedInFrame(Lorg/xwalk/core/internal/XWalkViewBridge;J)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "frameId"    # J

    .prologue
    .line 45
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onDocumentLoadedInFrameXWalkViewInternallongMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public onDocumentLoadedInFrame(Lorg/xwalk/core/internal/XWalkViewInternal;J)V
    .locals 2
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "frameId"    # J

    .prologue
    .line 37
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 38
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onDocumentLoadedInFrame(Lorg/xwalk/core/internal/XWalkViewBridge;J)V

    .line 42
    :goto_0
    return-void

    .line 40
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onDocumentLoadedInFrame(Lorg/xwalk/core/internal/XWalkViewInternal;J)V

    goto :goto_0
.end method

.method public onDocumentLoadedInFrameSuper(Lorg/xwalk/core/internal/XWalkViewBridge;J)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "frameId"    # J

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onDocumentLoadedInFrame(Lorg/xwalk/core/internal/XWalkViewInternal;J)V

    .line 50
    return-void
.end method

.method public onLoadFinished(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadFinishedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public onLoadFinished(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 75
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 76
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadFinished(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V

    .line 80
    :goto_0
    return-void

    .line 78
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onLoadFinished(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLoadFinishedSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onLoadFinished(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public onLoadStarted(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadStartedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public onLoadStarted(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 56
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 57
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadStarted(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V

    .line 61
    :goto_0
    return-void

    .line 59
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onLoadStarted(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLoadStartedSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onLoadStarted(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public onProgressChanged(Lorg/xwalk/core/internal/XWalkViewBridge;I)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "progressInPercent"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onProgressChangedXWalkViewInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public onProgressChanged(Lorg/xwalk/core/internal/XWalkViewInternal;I)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "progressInPercent"    # I

    .prologue
    .line 94
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 95
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onProgressChanged(Lorg/xwalk/core/internal/XWalkViewBridge;I)V

    .line 99
    :goto_0
    return-void

    .line 97
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onProgressChanged(Lorg/xwalk/core/internal/XWalkViewInternal;I)V

    goto :goto_0
.end method

.method public onProgressChangedSuper(Lorg/xwalk/core/internal/XWalkViewBridge;I)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "progressInPercent"    # I

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onProgressChanged(Lorg/xwalk/core/internal/XWalkViewInternal;I)V

    .line 107
    return-void
.end method

.method public onReceivedClientCertRequest(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "handler"    # Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;

    .prologue
    .line 203
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedClientCertRequestXWalkViewInternalClientCertRequestInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    instance-of v0, p2, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;

    if-eqz v0, :cond_0

    .end local p2    # "handler":Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;
    :goto_0
    invoke-virtual {p2}, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    return-void

    .line 203
    .restart local p2    # "handler":Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;

    invoke-direct {v0, p2}, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;-><init>(Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;)V

    move-object p2, v0

    goto :goto_0
.end method

.method public onReceivedClientCertRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/ClientCertRequestInternal;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "handler"    # Lorg/xwalk/core/internal/ClientCertRequestInternal;

    .prologue
    .line 195
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_1

    .line 196
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    instance-of v0, p2, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;

    .end local p2    # "handler":Lorg/xwalk/core/internal/ClientCertRequestInternal;
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedClientCertRequest(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;)V

    .line 200
    :goto_1
    return-void

    .line 196
    .restart local p2    # "handler":Lorg/xwalk/core/internal/ClientCertRequestInternal;
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;

    check-cast p2, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    .end local p2    # "handler":Lorg/xwalk/core/internal/ClientCertRequestInternal;
    invoke-direct {v0, p2}, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;-><init>(Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;)V

    move-object p2, v0

    goto :goto_0

    .line 198
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    .restart local p2    # "handler":Lorg/xwalk/core/internal/ClientCertRequestInternal;
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedClientCertRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/ClientCertRequestInternal;)V

    goto :goto_1
.end method

.method public onReceivedClientCertRequestSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "handler"    # Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;

    .prologue
    .line 207
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedClientCertRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/ClientCertRequestInternal;)V

    .line 208
    return-void
.end method

.method public onReceivedLoadError(Lorg/xwalk/core/internal/XWalkViewBridge;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedLoadErrorXWalkViewInternalintStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public onReceivedLoadError(Lorg/xwalk/core/internal/XWalkViewInternal;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 135
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 136
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedLoadError(Lorg/xwalk/core/internal/XWalkViewBridge;ILjava/lang/String;Ljava/lang/String;)V

    .line 140
    :goto_0
    return-void

    .line 138
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedLoadError(Lorg/xwalk/core/internal/XWalkViewInternal;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedLoadErrorSuper(Lorg/xwalk/core/internal/XWalkViewBridge;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedLoadError(Lorg/xwalk/core/internal/XWalkViewInternal;ILjava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public onReceivedSslError(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p3, "error"    # Landroid/net/http/SslError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/internal/XWalkViewBridge;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/net/http/SslError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 184
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedSslErrorXWalkViewInternalValueCallbackSslErrorMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    return-void
.end method

.method public onReceivedSslError(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p3, "error"    # Landroid/net/http/SslError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/internal/XWalkViewInternal;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/net/http/SslError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 176
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 177
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedSslError(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V

    .line 181
    :goto_0
    return-void

    .line 179
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedSslError(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V

    goto :goto_0
.end method

.method public onReceivedSslErrorSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p3, "error"    # Landroid/net/http/SslError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/internal/XWalkViewBridge;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/net/http/SslError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 188
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedSslError(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V

    .line 189
    return-void
.end method

.method reflectionInit()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 214
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 215
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onDocumentLoadedInFrameXWalkViewInternallongMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onDocumentLoadedInFrame"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 219
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadStartedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onLoadStarted"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 221
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadFinishedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onLoadFinished"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 223
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onProgressChangedXWalkViewInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onProgressChanged"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 225
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequestXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "shouldInterceptLoadRequest"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 227
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedLoadErrorXWalkViewInternalintStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onReceivedLoadError"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v8

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v10

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 229
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldOverrideUrlLoadingXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "shouldOverrideUrlLoading"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 231
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedSslErrorXWalkViewInternalValueCallbackSslErrorMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onReceivedSslError"

    new-array v3, v10, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    const-class v4, Landroid/webkit/ValueCallback;

    aput-object v4, v3, v7

    const-class v4, Landroid/net/http/SslError;

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 233
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedClientCertRequestXWalkViewInternalClientCertRequestInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onReceivedClientCertRequest"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "ClientCertRequest"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0
.end method

.method public shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequestXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebResourceResponse;

    return-object v0
.end method

.method public shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 113
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 114
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public shouldInterceptLoadRequestSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 127
    .local v0, "ret":Landroid/webkit/WebResourceResponse;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 128
    .end local v0    # "ret":Landroid/webkit/WebResourceResponse;
    :cond_0
    return-object v0
.end method

.method public shouldOverrideUrlLoading(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldOverrideUrlLoadingXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 154
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 155
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldOverrideUrlLoading(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)Z

    move-result v0

    .line 157
    :goto_0
    return v0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->shouldOverrideUrlLoading(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoadingSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->shouldOverrideUrlLoading(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)Z

    move-result v0

    .line 169
    .local v0, "ret":Z
    return v0
.end method
