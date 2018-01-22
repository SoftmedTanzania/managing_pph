.class public Lorg/xwalk/core/internal/XWalkNavigationItemBridge;
.super Lorg/xwalk/core/internal/XWalkNavigationItemInternal;
.source "XWalkNavigationItemBridge.java"


# instance fields
.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private getOriginalUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getTitleMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private internal:Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkNavigationItemInternal;)V
    .locals 5
    .param p1, "internal"    # Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 18
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkNavigationItemInternal;-><init>()V

    .line 39
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getUrl"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 57
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getOriginalUrl"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->getOriginalUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 75
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getTitle"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->getTitleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 19
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

    .line 20
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->reflectionInit()V

    .line 21
    return-void
.end method


# virtual methods
.method public getOriginalUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->getOriginalUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalUrlSuper()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

    if-nez v1, :cond_1

    .line 49
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkNavigationItemInternal;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 54
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 51
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkNavigationItemInternal;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->getTitleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTitleSuper()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

    if-nez v1, :cond_1

    .line 67
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkNavigationItemInternal;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 72
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 69
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkNavigationItemInternal;->getTitle()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUrlSuper()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

    if-nez v1, :cond_1

    .line 31
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkNavigationItemInternal;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 36
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 33
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkNavigationItemInternal;->getUrl()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method reflectionInit()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 79
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 80
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/ReflectConstructor;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v2, "XWalkNavigationItem"

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 84
    .local v0, "constructor":Lorg/xwalk/core/internal/ReflectConstructor;
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v5

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->wrapper:Ljava/lang/Object;

    .line 86
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "getUrl"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v6, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 88
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->getOriginalUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "getOriginalUrl"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v6, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 90
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->getTitleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "getTitle"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v6, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto :goto_0
.end method
