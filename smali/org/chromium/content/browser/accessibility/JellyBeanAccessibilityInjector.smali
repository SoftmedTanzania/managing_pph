.class Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;
.super Lorg/chromium/content/browser/accessibility/AccessibilityInjector;
.source "JellyBeanAccessibilityInjector.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector$1;,
        Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector$CallbackHandler;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_ANDROIDVOX_TEMPLATE:Ljava/lang/String; = "cvox.AndroidVox.performAction(\'%1s\')"

.field private static final ALIAS_TRAVERSAL_JS_INTERFACE:Ljava/lang/String; = "accessibilityTraversal"


# instance fields
.field private mAccessibilityJSONObject:Lorg/json/JSONObject;

.field private mCallback:Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector$CallbackHandler;


# direct methods
.method protected constructor <init>(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0
    .param p1, "view"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 44
    return-void
.end method

.method private sendActionToAndroidVox(ILandroid/os/Bundle;)Z
    .locals 10
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 118
    iget-object v7, p0, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;->mCallback:Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector$CallbackHandler;

    if-nez v7, :cond_0

    .line 152
    :goto_0
    return v6

    .line 119
    :cond_0
    iget-object v7, p0, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;->mAccessibilityJSONObject:Lorg/json/JSONObject;

    if-nez v7, :cond_4

    .line 120
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iput-object v7, p0, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;->mAccessibilityJSONObject:Lorg/json/JSONObject;

    .line 131
    :cond_1
    :try_start_0
    iget-object v7, p0, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;->mAccessibilityJSONObject:Lorg/json/JSONObject;

    const-string v8, "action"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    if-eqz p2, :cond_3

    .line 133
    const/16 v7, 0x100

    if-eq p1, v7, :cond_2

    const/16 v7, 0x200

    if-ne p1, v7, :cond_5

    .line 135
    :cond_2
    const-string v7, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 137
    .local v2, "granularity":I
    iget-object v7, p0, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;->mAccessibilityJSONObject:Lorg/json/JSONObject;

    const-string v8, "granularity"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v2    # "granularity":I
    :cond_3
    :goto_1
    iget-object v7, p0, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;->mAccessibilityJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "jsonString":Ljava/lang/String;
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "cvox.AndroidVox.performAction(\'%1s\')"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v6

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "jsCode":Ljava/lang/String;
    iget-object v6, p0, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;->mCallback:Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector$CallbackHandler;

    iget-object v7, p0, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v6, v7, v3}, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector$CallbackHandler;->access$100(Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector$CallbackHandler;Lorg/chromium/content/browser/ContentViewCore;Ljava/lang/String;)Z

    move-result v6

    goto :goto_0

    .line 123
    .end local v3    # "jsCode":Ljava/lang/String;
    .end local v4    # "jsonString":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;->mAccessibilityJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 124
    .local v5, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 125
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 138
    .end local v5    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_5
    const/16 v7, 0x400

    if-eq p1, v7, :cond_6

    const/16 v7, 0x800

    if-ne p1, v7, :cond_3

    .line 140
    :cond_6
    :try_start_1
    const-string v7, "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "element":Ljava/lang/String;
    iget-object v7, p0, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;->mAccessibilityJSONObject:Lorg/json/JSONObject;

    const-string v8, "element"

    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 145
    .end local v0    # "element":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 146
    .local v1, "ex":Lorg/json/JSONException;
    goto :goto_0
.end method


# virtual methods
.method protected addAccessibilityApis()V
    .locals 4

    .prologue
    .line 91
    invoke-super {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->addAccessibilityApis()V

    .line 93
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;->mCallback:Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector$CallbackHandler;

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector$CallbackHandler;

    const-string v2, "accessibilityTraversal"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector$CallbackHandler;-><init>(Ljava/lang/String;Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector$1;)V

    iput-object v1, p0, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;->mCallback:Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector$CallbackHandler;

    .line 96
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;->mCallback:Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector$CallbackHandler;

    const-string v3, "accessibilityTraversal"

    invoke-virtual {v1, v2, v3}, Lorg/chromium/content/browser/ContentViewCore;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 49
    const/16 v0, 0x1f

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 54
    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 55
    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 56
    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 57
    const/16 v0, 0x800

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 58
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 60
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;->accessibilityIsAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;->mInjectedScriptEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;->mScriptInjected:Z

    if-nez v1, :cond_2

    .line 79
    :cond_0
    const/4 v0, 0x0

    .line 86
    :cond_1
    :goto_0
    return v0

    .line 82
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;->sendActionToAndroidVox(ILandroid/os/Bundle;)Z

    move-result v0

    .line 84
    .local v0, "actionSuccessful":Z
    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->showImeIfNeeded()V

    goto :goto_0
.end method

.method protected removeAccessibilityApis()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->removeAccessibilityApis()V

    .line 104
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;->mCallback:Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector$CallbackHandler;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector;->mCallback:Lorg/chromium/content/browser/accessibility/JellyBeanAccessibilityInjector$CallbackHandler;

    .line 108
    :cond_0
    return-void
.end method

.method public supportsAccessibilityAction(I)Z
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 64
    const/16 v0, 0x100

    if-eq p1, v0, :cond_0

    const/16 v0, 0x200

    if-eq p1, v0, :cond_0

    const/16 v0, 0x400

    if-eq p1, v0, :cond_0

    const/16 v0, 0x800

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    .line 69
    :cond_0
    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
