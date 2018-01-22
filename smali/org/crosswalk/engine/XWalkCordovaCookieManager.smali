.class Lorg/crosswalk/engine/XWalkCordovaCookieManager;
.super Ljava/lang/Object;
.source "XWalkCordovaCookieManager.java"

# interfaces
.implements Lorg/apache/cordova/ICordovaCookieManager;


# instance fields
.field protected cookieManager:Lorg/xwalk/core/XWalkCookieManager;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaCookieManager;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 26
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/crosswalk/engine/XWalkCordovaCookieManager;->cookieManager:Lorg/xwalk/core/XWalkCookieManager;

    .line 29
    move-object v1, v0

    new-instance v2, Lorg/xwalk/core/XWalkCookieManager;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/xwalk/core/XWalkCookieManager;-><init>()V

    iput-object v2, v1, Lorg/crosswalk/engine/XWalkCordovaCookieManager;->cookieManager:Lorg/xwalk/core/XWalkCookieManager;

    .line 30
    return-void
.end method


# virtual methods
.method public clearCookies()V
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaCookieManager;
    move-object v1, v0

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkCordovaCookieManager;->cookieManager:Lorg/xwalk/core/XWalkCookieManager;

    invoke-virtual {v1}, Lorg/xwalk/core/XWalkCookieManager;->removeAllCookie()V

    .line 46
    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaCookieManager;
    move-object v1, v0

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkCordovaCookieManager;->cookieManager:Lorg/xwalk/core/XWalkCookieManager;

    invoke-virtual {v1}, Lorg/xwalk/core/XWalkCookieManager;->flushCookieStore()V

    .line 50
    return-void
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaCookieManager;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lorg/crosswalk/engine/XWalkCordovaCookieManager;->cookieManager:Lorg/xwalk/core/XWalkCookieManager;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/xwalk/core/XWalkCookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/crosswalk/engine/XWalkCordovaCookieManager;
    return-object v0
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaCookieManager;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lorg/crosswalk/engine/XWalkCordovaCookieManager;->cookieManager:Lorg/xwalk/core/XWalkCookieManager;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/xwalk/core/XWalkCookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public setCookiesEnabled(Z)V
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lorg/crosswalk/engine/XWalkCordovaCookieManager;
    move v1, p1

    .local v1, "accept":Z
    move-object v2, v0

    iget-object v2, v2, Lorg/crosswalk/engine/XWalkCordovaCookieManager;->cookieManager:Lorg/xwalk/core/XWalkCookieManager;

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/xwalk/core/XWalkCookieManager;->setAcceptCookie(Z)V

    .line 34
    return-void
.end method
