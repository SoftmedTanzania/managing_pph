.class public Lorg/apache/cordova/whitelist/WhitelistPlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "WhitelistPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WhitelistPlugin"


# instance fields
.field private allowedIntents:Lorg/apache/cordova/Whitelist;

.field private allowedNavigations:Lorg/apache/cordova/Whitelist;

.field private allowedRequests:Lorg/apache/cordova/Whitelist;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    new-instance v3, Lorg/apache/cordova/Whitelist;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lorg/apache/cordova/Whitelist;-><init>()V

    new-instance v4, Lorg/apache/cordova/Whitelist;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lorg/apache/cordova/Whitelist;-><init>()V

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/cordova/whitelist/WhitelistPlugin;-><init>(Lorg/apache/cordova/Whitelist;Lorg/apache/cordova/Whitelist;Lorg/apache/cordova/Whitelist;)V

    .line 42
    new-instance v2, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;-><init>(Lorg/apache/cordova/whitelist/WhitelistPlugin;Lorg/apache/cordova/whitelist/WhitelistPlugin$1;)V

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;->parse(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/Whitelist;Lorg/apache/cordova/Whitelist;Lorg/apache/cordova/Whitelist;)V
    .locals 8

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    move-object v1, p1

    .local v1, "allowedNavigations":Lorg/apache/cordova/Whitelist;
    move-object v2, p2

    .local v2, "allowedIntents":Lorg/apache/cordova/Whitelist;
    move-object v3, p3

    .local v3, "allowedRequests":Lorg/apache/cordova/Whitelist;
    move-object v4, v0

    invoke-direct {v4}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 49
    move-object v4, v3

    if-nez v4, :cond_0

    .line 50
    new-instance v4, Lorg/apache/cordova/Whitelist;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lorg/apache/cordova/Whitelist;-><init>()V

    move-object v3, v4

    .line 51
    move-object v4, v3

    const-string v5, "file:///*"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    .line 52
    move-object v4, v3

    const-string v5, "data:*"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    .line 54
    :cond_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedNavigations:Lorg/apache/cordova/Whitelist;

    .line 55
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedIntents:Lorg/apache/cordova/Whitelist;

    .line 56
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedRequests:Lorg/apache/cordova/Whitelist;

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    move-object v1, p1

    .local v1, "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v2, v0

    new-instance v3, Lorg/apache/cordova/Whitelist;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lorg/apache/cordova/Whitelist;-><init>()V

    new-instance v4, Lorg/apache/cordova/Whitelist;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lorg/apache/cordova/Whitelist;-><init>()V

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/cordova/whitelist/WhitelistPlugin;-><init>(Lorg/apache/cordova/Whitelist;Lorg/apache/cordova/Whitelist;Lorg/apache/cordova/Whitelist;)V

    .line 46
    new-instance v2, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;-><init>(Lorg/apache/cordova/whitelist/WhitelistPlugin;Lorg/apache/cordova/whitelist/WhitelistPlugin$1;)V

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 47
    return-void
.end method

.method static synthetic access$100(Lorg/apache/cordova/whitelist/WhitelistPlugin;)Lorg/apache/cordova/Whitelist;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "x0":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedNavigations:Lorg/apache/cordova/Whitelist;

    move-object v0, v1

    .end local v0    # "x0":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/cordova/whitelist/WhitelistPlugin;)Lorg/apache/cordova/Whitelist;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "x0":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedIntents:Lorg/apache/cordova/Whitelist;

    move-object v0, v1

    .end local v0    # "x0":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/cordova/whitelist/WhitelistPlugin;)Lorg/apache/cordova/Whitelist;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "x0":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedRequests:Lorg/apache/cordova/Whitelist;

    move-object v0, v1

    .end local v0    # "x0":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    return-object v0
.end method


# virtual methods
.method public getAllowedIntents()Lorg/apache/cordova/Whitelist;
    .locals 2

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedIntents:Lorg/apache/cordova/Whitelist;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    return-object v0
.end method

.method public getAllowedNavigations()Lorg/apache/cordova/Whitelist;
    .locals 2

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedNavigations:Lorg/apache/cordova/Whitelist;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    return-object v0
.end method

.method public getAllowedRequests()Lorg/apache/cordova/Whitelist;
    .locals 2

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedRequests:Lorg/apache/cordova/Whitelist;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    return-object v0
.end method

.method public pluginInitialize()V
    .locals 6

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedNavigations:Lorg/apache/cordova/Whitelist;

    if-nez v1, :cond_0

    .line 61
    move-object v1, v0

    new-instance v2, Lorg/apache/cordova/Whitelist;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/cordova/Whitelist;-><init>()V

    iput-object v2, v1, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedNavigations:Lorg/apache/cordova/Whitelist;

    .line 62
    move-object v1, v0

    new-instance v2, Lorg/apache/cordova/Whitelist;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/cordova/Whitelist;-><init>()V

    iput-object v2, v1, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedIntents:Lorg/apache/cordova/Whitelist;

    .line 63
    move-object v1, v0

    new-instance v2, Lorg/apache/cordova/Whitelist;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/cordova/Whitelist;-><init>()V

    iput-object v2, v1, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedRequests:Lorg/apache/cordova/Whitelist;

    .line 64
    new-instance v1, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;-><init>(Lorg/apache/cordova/whitelist/WhitelistPlugin;Lorg/apache/cordova/whitelist/WhitelistPlugin$1;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/cordova/whitelist/WhitelistPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;->parse(Landroid/content/Context;)V

    .line 66
    :cond_0
    return-void
.end method

.method public setAllowedIntents(Lorg/apache/cordova/Whitelist;)V
    .locals 4

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    move-object v1, p1

    .local v1, "allowedIntents":Lorg/apache/cordova/Whitelist;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedIntents:Lorg/apache/cordova/Whitelist;

    .line 152
    return-void
.end method

.method public setAllowedNavigations(Lorg/apache/cordova/Whitelist;)V
    .locals 4

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    move-object v1, p1

    .local v1, "allowedNavigations":Lorg/apache/cordova/Whitelist;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedNavigations:Lorg/apache/cordova/Whitelist;

    .line 144
    return-void
.end method

.method public setAllowedRequests(Lorg/apache/cordova/Whitelist;)V
    .locals 4

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    move-object v1, p1

    .local v1, "allowedRequests":Lorg/apache/cordova/Whitelist;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedRequests:Lorg/apache/cordova/Whitelist;

    .line 160
    return-void
.end method

.method public shouldAllowNavigation(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedNavigations:Lorg/apache/cordova/Whitelist;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/cordova/Whitelist;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    .line 116
    .end local v0    # "this":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public shouldAllowRequest(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/cordova/whitelist/WhitelistPlugin;->shouldAllowNavigation(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 122
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    .line 127
    .end local v0    # "this":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    :goto_0
    return-object v0

    .line 124
    .restart local v0    # "this":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedRequests:Lorg/apache/cordova/Whitelist;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/cordova/Whitelist;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 127
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public shouldOpenExternalUrl(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/cordova/whitelist/WhitelistPlugin;->allowedIntents:Lorg/apache/cordova/Whitelist;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/cordova/Whitelist;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    .line 135
    .end local v0    # "this":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method
