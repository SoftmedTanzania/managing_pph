.class public Lorg/xwalk/core/internal/XWalkExtensionBridge;
.super Lorg/xwalk/core/internal/XWalkExtensionInternal;
.source "XWalkExtensionBridge.java"


# instance fields
.field private broadcastMessageStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private onInstanceCreatedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onInstanceDestroyedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onSyncMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private postMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "jsApi"    # Ljava/lang/String;
    .param p3, "wrapper"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 18
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkExtensionInternal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "postMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 51
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "broadcastMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->broadcastMessageStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 62
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onInstanceCreated"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceCreatedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 73
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onInstanceDestroyed"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceDestroyedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 81
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 89
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onSyncMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onSyncMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 20
    iput-object p3, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    .line 21
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkExtensionBridge;->reflectionInit()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "jsApi"    # Ljava/lang/String;
    .param p3, "entryPoints"    # [Ljava/lang/String;
    .param p4, "wrapper"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkExtensionInternal;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 40
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "postMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 51
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "broadcastMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->broadcastMessageStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 62
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onInstanceCreated"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceCreatedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 73
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onInstanceDestroyed"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceDestroyedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 81
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 89
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onSyncMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onSyncMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 27
    iput-object p4, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    .line 28
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkExtensionBridge;->reflectionInit()V

    .line 29
    return-void
.end method


# virtual methods
.method public broadcastMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->broadcastMessageStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public broadcastMessageSuper(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkExtensionInternal;->broadcastMessage(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public onInstanceCreated(I)V
    .locals 4
    .param p1, "instanceID"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceCreatedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public onInstanceCreatedSuper(I)V
    .locals 0
    .param p1, "instanceID"    # I

    .prologue
    .line 59
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkExtensionInternal;->onInstanceCreated(I)V

    .line 60
    return-void
.end method

.method public onInstanceDestroyed(I)V
    .locals 4
    .param p1, "instanceID"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceDestroyedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public onInstanceDestroyedSuper(I)V
    .locals 0
    .param p1, "instanceID"    # I

    .prologue
    .line 70
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkExtensionInternal;->onInstanceDestroyed(I)V

    .line 71
    return-void
.end method

.method public onMessage(ILjava/lang/String;)V
    .locals 4
    .param p1, "instanceID"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public onSyncMessage(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "instanceID"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onSyncMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public postMessage(ILjava/lang/String;)V
    .locals 4
    .param p1, "instanceID"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public postMessageSuper(ILjava/lang/String;)V
    .locals 0
    .param p1, "instanceID"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkExtensionInternal;->postMessage(ILjava/lang/String;)V

    .line 38
    return-void
.end method

.method reflectionInit()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 93
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 94
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "postMessage"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 98
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->broadcastMessageStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "broadcastMessage"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 100
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceCreatedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onInstanceCreated"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 102
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceDestroyedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onInstanceDestroyed"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 104
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onMessage"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 106
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onSyncMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onSyncMessage"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto :goto_0
.end method
