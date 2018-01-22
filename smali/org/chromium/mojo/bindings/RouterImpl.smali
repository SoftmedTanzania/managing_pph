.class public Lorg/chromium/mojo/bindings/RouterImpl;
.super Ljava/lang/Object;
.source "RouterImpl.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Router;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo/bindings/RouterImpl$ResponderThunk;,
        Lorg/chromium/mojo/bindings/RouterImpl$HandleIncomingMessageThunk;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mConnector:Lorg/chromium/mojo/bindings/Connector;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

.field private mNextRequestId:J

.field private mResponders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lorg/chromium/mojo/bindings/MessageReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lorg/chromium/mojo/bindings/RouterImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/mojo/bindings/RouterImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/mojo/system/MessagePipeHandle;)V
    .locals 1
    .param p1, "messagePipeHandle"    # Lorg/chromium/mojo/system/MessagePipeHandle;

    .prologue
    .line 114
    invoke-static {p1}, Lorg/chromium/mojo/bindings/BindingsHelper;->getDefaultAsyncWaiterForHandle(Lorg/chromium/mojo/system/Handle;)Lorg/chromium/mojo/system/AsyncWaiter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/RouterImpl;-><init>(Lorg/chromium/mojo/system/MessagePipeHandle;Lorg/chromium/mojo/system/AsyncWaiter;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Lorg/chromium/mojo/system/MessagePipeHandle;Lorg/chromium/mojo/system/AsyncWaiter;)V
    .locals 5
    .param p1, "messagePipeHandle"    # Lorg/chromium/mojo/system/MessagePipeHandle;
    .param p2, "asyncWaiter"    # Lorg/chromium/mojo/system/AsyncWaiter;

    .prologue
    const/4 v4, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mNextRequestId:J

    .line 99
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mResponders:Ljava/util/Map;

    .line 125
    new-instance v1, Lorg/chromium/mojo/bindings/Connector;

    invoke-direct {v1, p1, p2}, Lorg/chromium/mojo/bindings/Connector;-><init>(Lorg/chromium/mojo/system/MessagePipeHandle;Lorg/chromium/mojo/system/AsyncWaiter;)V

    iput-object v1, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mConnector:Lorg/chromium/mojo/bindings/Connector;

    .line 126
    iget-object v1, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mConnector:Lorg/chromium/mojo/bindings/Connector;

    new-instance v2, Lorg/chromium/mojo/bindings/RouterImpl$HandleIncomingMessageThunk;

    invoke-direct {v2, p0, v4}, Lorg/chromium/mojo/bindings/RouterImpl$HandleIncomingMessageThunk;-><init>(Lorg/chromium/mojo/bindings/RouterImpl;Lorg/chromium/mojo/bindings/RouterImpl$1;)V

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/Connector;->setIncomingMessageReceiver(Lorg/chromium/mojo/bindings/MessageReceiver;)V

    .line 127
    invoke-interface {p1}, Lorg/chromium/mojo/system/MessagePipeHandle;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v0

    .line 128
    .local v0, "core":Lorg/chromium/mojo/system/Core;
    if-eqz v0, :cond_0

    .line 129
    invoke-static {v0}, Lorg/chromium/mojo/bindings/ExecutorFactory;->getExecutorForCurrentThread(Lorg/chromium/mojo/system/Core;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iput-object v4, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mExecutor:Ljava/util/concurrent/Executor;

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/chromium/mojo/bindings/RouterImpl;Lorg/chromium/mojo/bindings/Message;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/mojo/bindings/RouterImpl;
    .param p1, "x1"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/RouterImpl;->handleIncomingMessage(Lorg/chromium/mojo/bindings/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/mojo/bindings/RouterImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/mojo/bindings/RouterImpl;

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/RouterImpl;->handleConnectorClose()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/mojo/bindings/RouterImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/mojo/bindings/RouterImpl;

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/RouterImpl;->closeOnHandleThread()V

    return-void
.end method

.method private closeOnHandleThread()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/chromium/mojo/bindings/RouterImpl$1;

    invoke-direct {v1, p0}, Lorg/chromium/mojo/bindings/RouterImpl$1;-><init>(Lorg/chromium/mojo/bindings/RouterImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 263
    :cond_0
    return-void
.end method

.method private handleConnectorClose()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    invoke-interface {v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->close()V

    .line 246
    :cond_0
    return-void
.end method

.method private handleIncomingMessage(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 7
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    const/4 v4, 0x0

    .line 216
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v0

    .line 217
    .local v0, "header":Lorg/chromium/mojo/bindings/MessageHeader;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 218
    iget-object v5, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    if-eqz v5, :cond_1

    .line 219
    iget-object v4, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    new-instance v5, Lorg/chromium/mojo/bindings/RouterImpl$ResponderThunk;

    invoke-direct {v5, p0}, Lorg/chromium/mojo/bindings/RouterImpl$ResponderThunk;-><init>(Lorg/chromium/mojo/bindings/RouterImpl;)V

    invoke-interface {v4, p1, v5}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result v4

    .line 239
    :cond_0
    :goto_0
    return v4

    .line 223
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/RouterImpl;->close()V

    goto :goto_0

    .line 225
    :cond_2
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 226
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v2

    .line 227
    .local v2, "requestId":J
    iget-object v5, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mResponders:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 228
    .local v1, "responder":Lorg/chromium/mojo/bindings/MessageReceiver;
    if-eqz v1, :cond_0

    .line 231
    iget-object v4, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mResponders:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-interface {v1, p1}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    move-result v4

    goto :goto_0

    .line 234
    .end local v1    # "responder":Lorg/chromium/mojo/bindings/MessageReceiver;
    .end local v2    # "requestId":J
    :cond_3
    iget-object v5, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    if-eqz v5, :cond_0

    .line 235
    iget-object v4, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    invoke-interface {v4, p1}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    move-result v4

    goto :goto_0
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 1
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 157
    iget-object v0, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mConnector:Lorg/chromium/mojo/bindings/Connector;

    invoke-virtual {v0, p1}, Lorg/chromium/mojo/bindings/Connector;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    move-result v0

    return v0
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 8
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;
    .param p2, "responder"    # Lorg/chromium/mojo/bindings/MessageReceiver;

    .prologue
    const-wide/16 v6, 0x1

    const/4 v1, 0x1

    .line 166
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 168
    .local v0, "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    sget-boolean v4, Lorg/chromium/mojo/bindings/RouterImpl;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 171
    :cond_0
    iget-wide v2, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mNextRequestId:J

    add-long v4, v2, v6

    iput-wide v4, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mNextRequestId:J

    .line 173
    .local v2, "requestId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 174
    iget-wide v2, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mNextRequestId:J

    .end local v2    # "requestId":J
    add-long v4, v2, v6

    iput-wide v4, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mNextRequestId:J

    .line 176
    .restart local v2    # "requestId":J
    :cond_1
    iget-object v4, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mResponders:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 177
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to find a new request identifier."

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_2
    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->setRequestId(J)V

    .line 180
    iget-object v4, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mConnector:Lorg/chromium/mojo/bindings/Connector;

    invoke-virtual {v4, v0}, Lorg/chromium/mojo/bindings/Connector;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 181
    const/4 v1, 0x0

    .line 185
    :goto_0
    return v1

    .line 184
    :cond_3
    iget-object v4, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mResponders:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mConnector:Lorg/chromium/mojo/bindings/Connector;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Connector;->close()V

    .line 202
    return-void
.end method

.method public bridge synthetic passHandle()Lorg/chromium/mojo/system/Handle;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/RouterImpl;->passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    return-object v0
.end method

.method public passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mConnector:Lorg/chromium/mojo/bindings/Connector;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Connector;->passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    return-object v0
.end method

.method public setErrorHandler(Lorg/chromium/mojo/bindings/ConnectionErrorHandler;)V
    .locals 1
    .param p1, "errorHandler"    # Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

    .prologue
    .line 209
    iget-object v0, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mConnector:Lorg/chromium/mojo/bindings/Connector;

    invoke-virtual {v0, p1}, Lorg/chromium/mojo/bindings/Connector;->setErrorHandler(Lorg/chromium/mojo/bindings/ConnectionErrorHandler;)V

    .line 210
    return-void
.end method

.method public setIncomingMessageReceiver(Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0
    .param p1, "incomingMessageReceiver"    # Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    .prologue
    .line 148
    iput-object p1, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    .line 149
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mConnector:Lorg/chromium/mojo/bindings/Connector;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Connector;->start()V

    .line 141
    return-void
.end method
