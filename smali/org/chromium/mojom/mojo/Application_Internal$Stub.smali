.class final Lorg/chromium/mojom/mojo/Application_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "Application_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/Application_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub",
        "<",
        "Lorg/chromium/mojom/mojo/Application;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/mojo/Application;)V
    .locals 0
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "impl"    # Lorg/chromium/mojom/mojo/Application;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    .line 91
    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 11
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 96
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v3

    .line 98
    .local v3, "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v2

    .line 99
    .local v2, "header":Lorg/chromium/mojo/bindings/MessageHeader;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 127
    .end local v2    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v3    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :goto_0
    return v4

    .line 102
    .restart local v2    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .restart local v3    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :cond_0
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move v4, v5

    .line 124
    goto :goto_0

    .line 104
    :pswitch_1
    sget-object v4, Lorg/chromium/mojom/mojo/Application_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v4, v3}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

    move-result v4

    goto :goto_0

    .line 107
    :pswitch_2
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;

    move-result-object v0

    .line 109
    .local v0, "data":Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/Application_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v4

    check-cast v4, Lorg/chromium/mojom/mojo/Application;

    iget-object v7, v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->shell:Lorg/chromium/mojom/mojo/Shell;

    iget-object v8, v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->args:[Ljava/lang/String;

    iget-object v9, v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->url:Ljava/lang/String;

    invoke-interface {v4, v7, v8, v9}, Lorg/chromium/mojom/mojo/Application;->initialize(Lorg/chromium/mojom/mojo/Shell;[Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 110
    goto :goto_0

    .line 113
    .end local v0    # "data":Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;
    :pswitch_3
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;

    move-result-object v0

    .line 115
    .local v0, "data":Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/Application_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v4

    check-cast v4, Lorg/chromium/mojom/mojo/Application;

    iget-object v7, v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;->requestorUrl:Ljava/lang/String;

    iget-object v8, v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;->services:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v9, v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;->exposedServices:Lorg/chromium/mojom/mojo/ServiceProvider;

    iget-object v10, v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;->resolvedUrl:Ljava/lang/String;

    invoke-interface {v4, v7, v8, v9, v10}, Lorg/chromium/mojom/mojo/Application;->acceptConnection(Ljava/lang/String;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/ServiceProvider;Ljava/lang/String;)V

    move v4, v6

    .line 116
    goto :goto_0

    .line 119
    .end local v0    # "data":Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;
    :pswitch_4
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;

    .line 120
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/Application_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v4

    check-cast v4, Lorg/chromium/mojom/mojo/Application;

    invoke-interface {v4}, Lorg/chromium/mojom/mojo/Application;->requestQuit()V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v6

    .line 121
    goto :goto_0

    .line 126
    .end local v2    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v3    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :catch_0
    move-exception v1

    .local v1, "e":Lorg/chromium/mojo/bindings/DeserializationException;
    move v4, v5

    .line 127
    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 6
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;
    .param p2, "receiver"    # Lorg/chromium/mojo/bindings/MessageReceiver;

    .prologue
    const/4 v3, 0x0

    .line 134
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    .line 136
    .local v2, "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    .line 137
    .local v1, "header":Lorg/chromium/mojo/bindings/MessageHeader;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 148
    .end local v1    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v2    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :goto_0
    return v3

    .line 140
    .restart local v1    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .restart local v2    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :cond_0
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 142
    :pswitch_0
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/Application_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v4

    sget-object v5, Lorg/chromium/mojom/mojo/Application_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v4, v5, v2, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 147
    .end local v1    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v2    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Lorg/chromium/mojo/bindings/DeserializationException;
    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
