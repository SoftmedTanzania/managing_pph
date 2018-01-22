.class Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;
.super Lorg/apache/cordova/ConfigXmlParser;
.source "WhitelistPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/whitelist/WhitelistPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomConfigXmlParser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/whitelist/WhitelistPlugin;


# direct methods
.method private constructor <init>(Lorg/apache/cordova/whitelist/WhitelistPlugin;)V
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;->this$0:Lorg/apache/cordova/whitelist/WhitelistPlugin;

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/cordova/ConfigXmlParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/cordova/whitelist/WhitelistPlugin;Lorg/apache/cordova/whitelist/WhitelistPlugin$1;)V
    .locals 5

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;
    move-object v1, p1

    .local v1, "x0":Lorg/apache/cordova/whitelist/WhitelistPlugin;
    move-object v2, p2

    .local v2, "x1":Lorg/apache/cordova/whitelist/WhitelistPlugin$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;-><init>(Lorg/apache/cordova/whitelist/WhitelistPlugin;)V

    return-void
.end method


# virtual methods
.method public handleEndTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .param p1, "xml"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 108
    return-void
.end method

.method public handleStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;
    move-object v1, p1

    .local v1, "xml":Lorg/xmlpull/v1/XmlPullParser;
    move-object v6, v1

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 72
    .local v2, "strNode":Ljava/lang/String;
    move-object v6, v2

    const-string v7, "content"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 73
    move-object v6, v1

    const/4 v7, 0x0

    const-string v8, "src"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 74
    .local v3, "startPage":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;->this$0:Lorg/apache/cordova/whitelist/WhitelistPlugin;

    invoke-static {v6}, Lorg/apache/cordova/whitelist/WhitelistPlugin;->access$100(Lorg/apache/cordova/whitelist/WhitelistPlugin;)Lorg/apache/cordova/Whitelist;

    move-result-object v6

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    .line 75
    .line 105
    .end local v3    # "startPage":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    move-object v6, v2

    const-string v7, "allow-navigation"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 76
    move-object v6, v1

    const/4 v7, 0x0

    const-string v8, "href"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 77
    .local v3, "origin":Ljava/lang/String;
    const-string v6, "*"

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 78
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;->this$0:Lorg/apache/cordova/whitelist/WhitelistPlugin;

    invoke-static {v6}, Lorg/apache/cordova/whitelist/WhitelistPlugin;->access$100(Lorg/apache/cordova/whitelist/WhitelistPlugin;)Lorg/apache/cordova/Whitelist;

    move-result-object v6

    const-string v7, "http://*/*"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    .line 79
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;->this$0:Lorg/apache/cordova/whitelist/WhitelistPlugin;

    invoke-static {v6}, Lorg/apache/cordova/whitelist/WhitelistPlugin;->access$100(Lorg/apache/cordova/whitelist/WhitelistPlugin;)Lorg/apache/cordova/Whitelist;

    move-result-object v6

    const-string v7, "https://*/*"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    .line 80
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;->this$0:Lorg/apache/cordova/whitelist/WhitelistPlugin;

    invoke-static {v6}, Lorg/apache/cordova/whitelist/WhitelistPlugin;->access$100(Lorg/apache/cordova/whitelist/WhitelistPlugin;)Lorg/apache/cordova/Whitelist;

    move-result-object v6

    const-string v7, "data:*"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    .line 84
    :goto_1
    goto :goto_0

    .line 82
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;->this$0:Lorg/apache/cordova/whitelist/WhitelistPlugin;

    invoke-static {v6}, Lorg/apache/cordova/whitelist/WhitelistPlugin;->access$100(Lorg/apache/cordova/whitelist/WhitelistPlugin;)Lorg/apache/cordova/Whitelist;

    move-result-object v6

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    goto :goto_1

    .line 84
    .end local v3    # "origin":Ljava/lang/String;
    :cond_3
    move-object v6, v2

    const-string v7, "allow-intent"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 85
    move-object v6, v1

    const/4 v7, 0x0

    const-string v8, "href"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 86
    .restart local v3    # "origin":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;->this$0:Lorg/apache/cordova/whitelist/WhitelistPlugin;

    invoke-static {v6}, Lorg/apache/cordova/whitelist/WhitelistPlugin;->access$200(Lorg/apache/cordova/whitelist/WhitelistPlugin;)Lorg/apache/cordova/Whitelist;

    move-result-object v6

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    .line 87
    goto :goto_0

    .end local v3    # "origin":Ljava/lang/String;
    :cond_4
    move-object v6, v2

    const-string v7, "access"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 88
    move-object v6, v1

    const/4 v7, 0x0

    const-string v8, "origin"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 89
    .restart local v3    # "origin":Ljava/lang/String;
    move-object v6, v1

    const/4 v7, 0x0

    const-string v8, "subdomains"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 90
    .local v4, "subdomains":Ljava/lang/String;
    move-object v6, v1

    const/4 v7, 0x0

    const-string v8, "launch-external"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    :goto_2
    move v5, v6

    .line 91
    .local v5, "external":Z
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 92
    move v6, v5

    if-eqz v6, :cond_7

    .line 93
    const-string v6, "WhitelistPlugin"

    const-string v7, "Found <access launch-external> within config.xml. Please use <allow-intent> instead."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 94
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;->this$0:Lorg/apache/cordova/whitelist/WhitelistPlugin;

    invoke-static {v6}, Lorg/apache/cordova/whitelist/WhitelistPlugin;->access$200(Lorg/apache/cordova/whitelist/WhitelistPlugin;)Lorg/apache/cordova/Whitelist;

    move-result-object v6

    move-object v7, v3

    move-object v8, v4

    if-eqz v8, :cond_6

    move-object v8, v4

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_6

    const/4 v8, 0x1

    :goto_3
    invoke-virtual {v6, v7, v8}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 90
    .end local v5    # "external":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 94
    .restart local v5    # "external":Z
    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    .line 96
    :cond_7
    const-string v6, "*"

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 97
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;->this$0:Lorg/apache/cordova/whitelist/WhitelistPlugin;

    invoke-static {v6}, Lorg/apache/cordova/whitelist/WhitelistPlugin;->access$300(Lorg/apache/cordova/whitelist/WhitelistPlugin;)Lorg/apache/cordova/Whitelist;

    move-result-object v6

    const-string v7, "http://*/*"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    .line 98
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;->this$0:Lorg/apache/cordova/whitelist/WhitelistPlugin;

    invoke-static {v6}, Lorg/apache/cordova/whitelist/WhitelistPlugin;->access$300(Lorg/apache/cordova/whitelist/WhitelistPlugin;)Lorg/apache/cordova/Whitelist;

    move-result-object v6

    const-string v7, "https://*/*"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 100
    :cond_8
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/cordova/whitelist/WhitelistPlugin$CustomConfigXmlParser;->this$0:Lorg/apache/cordova/whitelist/WhitelistPlugin;

    invoke-static {v6}, Lorg/apache/cordova/whitelist/WhitelistPlugin;->access$300(Lorg/apache/cordova/whitelist/WhitelistPlugin;)Lorg/apache/cordova/Whitelist;

    move-result-object v6

    move-object v7, v3

    move-object v8, v4

    if-eqz v8, :cond_9

    move-object v8, v4

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_9

    const/4 v8, 0x1

    :goto_4
    invoke-virtual {v6, v7, v8}, Lorg/apache/cordova/Whitelist;->addWhiteListEntry(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_9
    const/4 v8, 0x0

    goto :goto_4
.end method
