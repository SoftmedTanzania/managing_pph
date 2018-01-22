.class public Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;
.super Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;
.source "ClientCertRequestHandlerBridge.java"


# instance fields
.field private cancelMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private getHostMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getPortMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private ignoreMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private internal:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

.field private proceedPrivateKeyListMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;)V
    .locals 5
    .param p1, "internal"    # Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 24
    invoke-direct {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;-><init>()V

    .line 42
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "proceed"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->proceedPrivateKeyListMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 57
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "ignore"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->ignoreMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 72
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "cancel"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->cancelMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 90
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getHost"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getHostMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 108
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getPort"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getPortMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 25
    iput-object p1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    .line 26
    invoke-virtual {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->reflectionInit()V

    .line 27
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->cancelMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public cancelSuper()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    if-nez v0, :cond_0

    .line 66
    invoke-super {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->cancel()V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->cancel()V

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getHostMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHostSuper()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    iget-object v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    if-nez v1, :cond_1

    .line 82
    invoke-super {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 87
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 84
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->getHost()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public getPort()I
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getPortMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPortSuper()I
    .locals 2

    .prologue
    .line 99
    iget-object v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    if-nez v1, :cond_0

    .line 100
    invoke-super {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->getPort()I

    move-result v0

    .line 105
    .local v0, "ret":I
    :goto_0
    return v0

    .line 102
    .end local v0    # "ret":I
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->getPort()I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_0
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public ignore()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->ignoreMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public ignoreSuper()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    if-nez v0, :cond_0

    .line 51
    invoke-super {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->ignore()V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->ignore()V

    goto :goto_0
.end method

.method public proceed(Ljava/security/PrivateKey;Ljava/util/List;)V
    .locals 3
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->proceedPrivateKeyListMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public proceedSuper(Ljava/security/PrivateKey;Ljava/util/List;)V
    .locals 1
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    if-nez v0, :cond_0

    .line 36
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->proceed(Ljava/security/PrivateKey;Ljava/util/List;)V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->proceed(Ljava/security/PrivateKey;Ljava/util/List;)V

    goto :goto_0
.end method

.method reflectionInit()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 112
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 113
    iget-object v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 115
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/ReflectConstructor;

    iget-object v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v2, "ClientCertRequestHandler"

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 117
    .local v0, "constructor":Lorg/xwalk/core/internal/ReflectConstructor;
    new-array v1, v8, [Ljava/lang/Object;

    aput-object p0, v1, v6

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->wrapper:Ljava/lang/Object;

    .line 119
    iget-object v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->proceedPrivateKeyListMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "proceed"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/security/PrivateKey;

    aput-object v5, v4, v6

    const-class v5, Ljava/util/List;

    aput-object v5, v4, v8

    invoke-virtual {v1, v2, v7, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 121
    iget-object v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->ignoreMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "ignore"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v7, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 123
    iget-object v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->cancelMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "cancel"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v7, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 125
    iget-object v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getHostMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "getHost"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v7, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 127
    iget-object v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getPortMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "getPort"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v7, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto :goto_0
.end method
