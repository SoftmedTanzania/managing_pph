.class public Lorg/xwalk/core/internal/XWalkPreferencesBridge;
.super Lorg/xwalk/core/internal/XWalkPreferencesInternal;
.source "XWalkPreferencesBridge.java"


# instance fields
.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;-><init>()V

    return-void
.end method

.method public static getBooleanValue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIntegerValue(Ljava/lang/String;)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->getIntegerValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getValue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->getValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setValue(Ljava/lang/String;I)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 26
    invoke-static {p0, p1}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->setValue(Ljava/lang/String;I)V

    .line 27
    return-void
.end method

.method public static setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {p0, p1}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static setValue(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "enabled"    # Z

    .prologue
    .line 23
    invoke-static {p0, p1}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->setValue(Ljava/lang/String;Z)V

    .line 24
    return-void
.end method


# virtual methods
.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkPreferencesBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method reflectionInit()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkPreferencesBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 46
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkPreferencesBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v0, :cond_0

    .line 48
    :cond_0
    return-void
.end method
