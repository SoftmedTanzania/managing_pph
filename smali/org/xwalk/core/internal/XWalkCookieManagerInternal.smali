.class public Lorg/xwalk/core/internal/XWalkCookieManagerInternal;
.super Ljava/lang/Object;
.source "XWalkCookieManagerInternal.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "xwalk"
.end annotation

.annotation build Lorg/xwalk/core/internal/XWalkAPI;
    createExternally = true
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeAcceptCookie()Z
.end method

.method private native nativeAllowFileSchemeCookies()Z
.end method

.method private native nativeFlushCookieStore()V
.end method

.method private native nativeGetCookie(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeHasCookies()Z
.end method

.method private native nativeRemoveAllCookie()V
.end method

.method private native nativeRemoveExpiredCookie()V
.end method

.method private native nativeRemoveSessionCookie()V
.end method

.method private native nativeSetAcceptCookie(Z)V
.end method

.method private native nativeSetAcceptFileSchemeCookies(Z)V
.end method

.method private native nativeSetCookie(Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public acceptCookie()Z
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->nativeAcceptCookie()Z

    move-result v0

    return v0
.end method

.method public allowFileSchemeCookies()Z
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->nativeAllowFileSchemeCookies()Z

    move-result v0

    return v0
.end method

.method public flushCookieStore()V
    .locals 0
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->nativeFlushCookieStore()V

    .line 107
    return-void
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->nativeGetCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "cookie":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .end local v0    # "cookie":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public hasCookies()Z
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->nativeHasCookies()Z

    move-result v0

    return v0
.end method

.method public removeAllCookie()V
    .locals 0
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->nativeRemoveAllCookie()V

    .line 80
    return-void
.end method

.method public removeExpiredCookie()V
    .locals 0
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->nativeRemoveExpiredCookie()V

    .line 98
    return-void
.end method

.method public removeSessionCookie()V
    .locals 0
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->nativeRemoveSessionCookie()V

    .line 71
    return-void
.end method

.method public setAcceptCookie(Z)V
    .locals 0
    .param p1, "accept"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->nativeSetAcceptCookie(Z)V

    .line 25
    return-void
.end method

.method public setAcceptFileSchemeCookies(Z)V
    .locals 0
    .param p1, "accept"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->nativeSetAcceptFileSchemeCookies(Z)V

    .line 133
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->nativeSetCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method
