.class public Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;
.super Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;
.source "XWalkNavigationHistoryBridge.java"


# instance fields
.field private canGoBackMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private canGoForwardMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private clearMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private enumDirectionClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getCurrentIndexMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getCurrentItemMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private hasItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

.field private navigateDirectionInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private sizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;)V
    .locals 5
    .param p1, "internal"    # Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 25
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;-><init>()V

    .line 16
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    invoke-direct {v0}, Lorg/xwalk/core/internal/ReflectMethod;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->enumDirectionClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 46
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "size"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->sizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 64
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "hasItemAt"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->hasItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 82
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getItemAt"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 100
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getCurrentItem"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getCurrentItemMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 118
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "canGoBack"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->canGoBackMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 136
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "canGoForward"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->canGoForwardMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 151
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "navigate"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->navigateDirectionInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 169
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getCurrentIndex"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getCurrentIndexMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 184
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "clear"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->clearMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 26
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    .line 27
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->reflectionInit()V

    .line 28
    return-void
.end method

.method private ConvertDirectionInternal(Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;

    .prologue
    .line 19
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->enumDirectionClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canGoBack()Z
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->canGoBackMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public canGoBackSuper()Z
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    if-nez v1, :cond_0

    .line 110
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->canGoBack()Z

    move-result v0

    .line 115
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 112
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->canGoBack()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public canGoForward()Z
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->canGoForwardMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public canGoForwardSuper()Z
    .locals 2

    .prologue
    .line 127
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    if-nez v1, :cond_0

    .line 128
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->canGoForward()Z

    move-result v0

    .line 133
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 130
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->canGoForward()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->clearMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-void
.end method

.method public clearSuper()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    if-nez v0, :cond_0

    .line 178
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->clear()V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->clear()V

    goto :goto_0
.end method

.method public getCurrentIndex()I
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getCurrentIndexMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCurrentIndexSuper()I
    .locals 2

    .prologue
    .line 160
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    if-nez v1, :cond_0

    .line 161
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->getCurrentIndex()I

    move-result v0

    .line 166
    .local v0, "ret":I
    :goto_0
    return v0

    .line 163
    .end local v0    # "ret":I
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->getCurrentIndex()I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_0
.end method

.method public getCurrentItem()Lorg/xwalk/core/internal/XWalkNavigationItemInternal;
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getCurrentItemMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getBridgeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;

    return-object v0
.end method

.method public getCurrentItemSuper()Lorg/xwalk/core/internal/XWalkNavigationItemBridge;
    .locals 2

    .prologue
    .line 91
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    if-nez v1, :cond_0

    .line 92
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->getCurrentItem()Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

    move-result-object v0

    .line 96
    .local v0, "ret":Lorg/xwalk/core/internal/XWalkNavigationItemInternal;
    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 97
    .end local v0    # "ret":Lorg/xwalk/core/internal/XWalkNavigationItemInternal;
    :goto_1
    return-object v0

    .line 94
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->getCurrentItem()Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

    move-result-object v0

    .restart local v0    # "ret":Lorg/xwalk/core/internal/XWalkNavigationItemInternal;
    goto :goto_0

    .line 97
    :cond_1
    instance-of v1, v0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;

    invoke-direct {v1, v0}, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;-><init>(Lorg/xwalk/core/internal/XWalkNavigationItemInternal;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public getItemAt(I)Lorg/xwalk/core/internal/XWalkNavigationItemInternal;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getBridgeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;

    return-object v0
.end method

.method public getItemAtSuper(I)Lorg/xwalk/core/internal/XWalkNavigationItemBridge;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 73
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    if-nez v1, :cond_0

    .line 74
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->getItemAt(I)Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

    move-result-object v0

    .line 78
    .local v0, "ret":Lorg/xwalk/core/internal/XWalkNavigationItemInternal;
    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 79
    .end local v0    # "ret":Lorg/xwalk/core/internal/XWalkNavigationItemInternal;
    :goto_1
    return-object v0

    .line 76
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    invoke-virtual {v1, p1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->getItemAt(I)Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

    move-result-object v0

    .restart local v0    # "ret":Lorg/xwalk/core/internal/XWalkNavigationItemInternal;
    goto :goto_0

    .line 79
    :cond_1
    instance-of v1, v0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;

    invoke-direct {v1, v0}, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;-><init>(Lorg/xwalk/core/internal/XWalkNavigationItemInternal;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public hasItemAt(I)Z
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->hasItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasItemAtSuper(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 55
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    if-nez v1, :cond_0

    .line 56
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->hasItemAt(I)Z

    move-result v0

    .line 61
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 58
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    invoke-virtual {v1, p1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->hasItemAt(I)Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public navigate(Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;I)V
    .locals 4
    .param p1, "direction"    # Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;
    .param p2, "steps"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->navigateDirectionInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->ConvertDirectionInternal(Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-void
.end method

.method public navigateSuper(Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;I)V
    .locals 1
    .param p1, "direction"    # Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;
    .param p2, "steps"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    if-nez v0, :cond_0

    .line 145
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->navigate(Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;I)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->navigate(Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;I)V

    goto :goto_0
.end method

.method reflectionInit()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 188
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 189
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v1, :cond_0

    .line 216
    :goto_0
    return-void

    .line 191
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/ReflectConstructor;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v2, "XWalkNavigationHistory"

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 193
    .local v0, "constructor":Lorg/xwalk/core/internal/ReflectConstructor;
    new-array v1, v9, [Ljava/lang/Object;

    aput-object p0, v1, v7

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    .line 195
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->enumDirectionClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v3, "XWalkNavigationHistory$Direction"

    invoke-virtual {v2, v3}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "valueOf"

    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v1, v8, v2, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 198
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->sizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "size"

    new-array v4, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v8, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 200
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->hasItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "hasItemAt"

    new-array v4, v9, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v8, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 202
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "getItemAt"

    new-array v4, v9, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v8, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 204
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getCurrentItemMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "getCurrentItem"

    new-array v4, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v8, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 206
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->canGoBackMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "canGoBack"

    new-array v4, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v8, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 208
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->canGoForwardMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "canGoForward"

    new-array v4, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v8, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 210
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->navigateDirectionInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "navigate"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    iget-object v5, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v6, "XWalkNavigationHistory$Direction"

    invoke-virtual {v5, v6}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v9

    invoke-virtual {v1, v2, v8, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 212
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getCurrentIndexMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "getCurrentIndex"

    new-array v4, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v8, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 214
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->clearMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "clear"

    new-array v4, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v8, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->sizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public sizeSuper()I
    .locals 2

    .prologue
    .line 37
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    if-nez v1, :cond_0

    .line 38
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->size()I

    move-result v0

    .line 43
    .local v0, "ret":I
    :goto_0
    return v0

    .line 40
    .end local v0    # "ret":I
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->size()I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_0
.end method
