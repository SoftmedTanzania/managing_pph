.class public Lorg/xwalk/core/XWalkPreferences;
.super Ljava/lang/Object;
.source "XWalkPreferences.java"


# static fields
.field public static final ALLOW_UNIVERSAL_ACCESS_FROM_FILE:Ljava/lang/String; = "allow-universal-access-from-file"

.field public static final ANIMATABLE_XWALK_VIEW:Ljava/lang/String; = "animatable-xwalk-view"

.field public static final JAVASCRIPT_CAN_OPEN_WINDOW:Ljava/lang/String; = "javascript-can-open-window"

.field public static final PROFILE_NAME:Ljava/lang/String; = "profile-name"

.field public static final REMOTE_DEBUGGING:Ljava/lang/String; = "remote-debugging"

.field public static final SUPPORT_MULTIPLE_WINDOWS:Ljava/lang/String; = "support-multiple-windows"

.field private static coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

.field private static getBooleanValueStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private static getIntegerValueStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private static getStringValueStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private static getValueStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private static setValueStringStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private static setValueStringbooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private static setValueStringintMethod:Lorg/xwalk/core/ReflectMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 106
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setValue"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/xwalk/core/XWalkPreferences;->setValueStringbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 125
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setValue"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/xwalk/core/XWalkPreferences;->setValueStringintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 144
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setValue"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/xwalk/core/XWalkPreferences;->setValueStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 159
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getValue"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/xwalk/core/XWalkPreferences;->getValueStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 173
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getBooleanValue"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/xwalk/core/XWalkPreferences;->getBooleanValueStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 187
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getIntegerValue"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/xwalk/core/XWalkPreferences;->getIntegerValueStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 201
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getStringValue"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/xwalk/core/XWalkPreferences;->getStringValueStringMethod:Lorg/xwalk/core/ReflectMethod;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBooleanValue(Ljava/lang/String;)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-static {}, Lorg/xwalk/core/XWalkPreferences;->reflectionInit()V

    .line 170
    sget-object v0, Lorg/xwalk/core/XWalkPreferences;->getBooleanValueStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getIntegerValue(Ljava/lang/String;)I
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {}, Lorg/xwalk/core/XWalkPreferences;->reflectionInit()V

    .line 184
    sget-object v0, Lorg/xwalk/core/XWalkPreferences;->getIntegerValueStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-static {}, Lorg/xwalk/core/XWalkPreferences;->reflectionInit()V

    .line 198
    sget-object v0, Lorg/xwalk/core/XWalkPreferences;->getStringValueStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getValue(Ljava/lang/String;)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-static {}, Lorg/xwalk/core/XWalkPreferences;->reflectionInit()V

    .line 156
    sget-object v0, Lorg/xwalk/core/XWalkPreferences;->getValueStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static reflectionInit()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 205
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-eqz v1, :cond_0

    .line 224
    .local v0, "bridgeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 207
    .end local v0    # "bridgeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->initEmbeddedMode()V

    .line 209
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->getInstance()Lorg/xwalk/core/XWalkCoreWrapper;

    move-result-object v1

    sput-object v1, Lorg/xwalk/core/XWalkPreferences;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    .line 210
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_1

    .line 211
    const-class v1, Lorg/xwalk/core/XWalkPreferences;

    invoke-static {v1}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectClass(Ljava/lang/Class;)V

    goto :goto_0

    .line 215
    :cond_1
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v2, "XWalkPreferencesBridge"

    invoke-virtual {v1, v2}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 217
    .restart local v0    # "bridgeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->setValueStringbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setValue"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v1, v7, v0, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 218
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->setValueStringintMethod:Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setValue"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v1, v7, v0, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 219
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->setValueStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setValue"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v7, v0, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 220
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->getValueStringMethod:Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getValue"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v7, v0, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 221
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->getBooleanValueStringMethod:Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getBooleanValue"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v7, v0, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 222
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->getIntegerValueStringMethod:Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getIntegerValue"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v7, v0, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 223
    sget-object v1, Lorg/xwalk/core/XWalkPreferences;->getStringValueStringMethod:Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getStringValue"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v7, v0, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0
.end method

.method public static setValue(Ljava/lang/String;I)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    invoke-static {}, Lorg/xwalk/core/XWalkPreferences;->reflectionInit()V

    .line 117
    sget-object v0, Lorg/xwalk/core/XWalkPreferences;->setValueStringintMethod:Lorg/xwalk/core/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lorg/xwalk/core/XWalkPreferences;->setValueStringintMethod:Lorg/xwalk/core/ReflectMethod;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/xwalk/core/ReflectMethod;->setArguments([Ljava/lang/Object;)V

    .line 119
    sget-object v0, Lorg/xwalk/core/XWalkPreferences;->setValueStringintMethod:Lorg/xwalk/core/ReflectMethod;

    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectMethod(Lorg/xwalk/core/ReflectMethod;)V

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    sget-object v0, Lorg/xwalk/core/XWalkPreferences;->setValueStringintMethod:Lorg/xwalk/core/ReflectMethod;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    invoke-static {}, Lorg/xwalk/core/XWalkPreferences;->reflectionInit()V

    .line 136
    sget-object v0, Lorg/xwalk/core/XWalkPreferences;->setValueStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lorg/xwalk/core/XWalkPreferences;->setValueStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lorg/xwalk/core/ReflectMethod;->setArguments([Ljava/lang/Object;)V

    .line 138
    sget-object v0, Lorg/xwalk/core/XWalkPreferences;->setValueStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectMethod(Lorg/xwalk/core/ReflectMethod;)V

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    sget-object v0, Lorg/xwalk/core/XWalkPreferences;->setValueStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setValue(Ljava/lang/String;Z)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-static {}, Lorg/xwalk/core/XWalkPreferences;->reflectionInit()V

    .line 98
    sget-object v0, Lorg/xwalk/core/XWalkPreferences;->setValueStringbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lorg/xwalk/core/XWalkPreferences;->setValueStringbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/xwalk/core/ReflectMethod;->setArguments([Ljava/lang/Object;)V

    .line 100
    sget-object v0, Lorg/xwalk/core/XWalkPreferences;->setValueStringbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectMethod(Lorg/xwalk/core/ReflectMethod;)V

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    sget-object v0, Lorg/xwalk/core/XWalkPreferences;->setValueStringbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
