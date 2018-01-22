.class public Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;
.super Ljava/lang/Object;
.source "ClientCertRequestHandlerInternal.java"

# interfaces
.implements Lorg/xwalk/core/internal/ClientCertRequestInternal;


# annotations
.annotation build Lorg/xwalk/core/internal/XWalkAPI;
    createInternally = true
    impl = Lorg/xwalk/core/internal/ClientCertRequestInternal;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClientCertRequestHandlerInternal"


# instance fields
.field private mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

.field private mHost:Ljava/lang/String;

.field private mId:I

.field private mIsCalled:Z

.field private mPort:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mId:I

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mHost:Ljava/lang/String;

    .line 41
    iput v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mPort:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    .line 43
    return-void
.end method

.method constructor <init>(Lorg/xwalk/core/internal/XWalkContentsClientBridge;ILjava/lang/String;I)V
    .locals 0
    .param p1, "contentsClient"    # Lorg/xwalk/core/internal/XWalkContentsClientBridge;
    .param p2, "id"    # I
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p2, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mId:I

    .line 31
    iput-object p3, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mHost:Ljava/lang/String;

    .line 32
    iput p4, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mPort:I

    .line 33
    iput-object p1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;
    .param p1, "x1"    # Ljava/security/PrivateKey;
    .param p2, "x2"    # [Ljava/security/cert/X509Certificate;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->proceedOnUiThread(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method static synthetic access$100(Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->ignoreOnUiThread()V

    return-void
.end method

.method static synthetic access$200(Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->cancelOnUiThread()V

    return-void
.end method

.method private cancelOnUiThread()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->checkIfCalled()V

    .line 125
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iget-object v0, v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLookupTable:Lorg/xwalk/core/internal/ClientCertLookupTable;

    iget-object v2, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mHost:Ljava/lang/String;

    iget v3, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mPort:I

    invoke-virtual {v0, v2, v3}, Lorg/xwalk/core/internal/ClientCertLookupTable;->deny(Ljava/lang/String;I)V

    move-object v0, v1

    .line 126
    check-cast v0, [[B

    invoke-direct {p0, v1, v0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->provideResponse(Lorg/chromium/net/AndroidPrivateKey;[[B)V

    .line 127
    return-void
.end method

.method private checkIfCalled()V
    .locals 2

    .prologue
    .line 130
    iget-boolean v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mIsCalled:Z

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The callback was already called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mIsCalled:Z

    .line 135
    return-void
.end method

.method private ignoreOnUiThread()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->checkIfCalled()V

    move-object v0, v1

    .line 120
    check-cast v0, [[B

    invoke-direct {p0, v1, v0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->provideResponse(Lorg/chromium/net/AndroidPrivateKey;[[B)V

    .line 121
    return-void
.end method

.method private proceedOnUiThread(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .locals 8
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "chain"    # [Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v5, 0x0

    .line 90
    invoke-direct {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->checkIfCalled()V

    .line 91
    iget-object v4, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iget-object v4, v4, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLocalKeyStore:Lorg/chromium/net/DefaultAndroidKeyStore;

    invoke-virtual {v4, p1}, Lorg/chromium/net/DefaultAndroidKeyStore;->createKey(Ljava/security/PrivateKey;)Lorg/chromium/net/AndroidPrivateKey;

    move-result-object v3

    .line 93
    .local v3, "key":Lorg/chromium/net/AndroidPrivateKey;
    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    array-length v4, p2

    if-nez v4, :cond_1

    .line 94
    :cond_0
    const-string v4, "ClientCertRequestHandlerInternal"

    const-string v6, "Empty client certificate chain?"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 95
    check-cast v4, [[B

    invoke-direct {p0, v5, v4}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->provideResponse(Lorg/chromium/net/AndroidPrivateKey;[[B)V

    .line 116
    :goto_0
    return-void

    .line 101
    :cond_1
    array-length v4, p2

    new-array v1, v4, [[B

    .line 104
    .local v1, "encodedChain":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_0
    array-length v4, p2

    if-ge v2, v4, :cond_2

    .line 105
    aget-object v4, p2, v2

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    aput-object v4, v1, v2
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    const-string v4, "ClientCertRequestHandlerInternal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not retrieve encoded certificate chain: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 109
    check-cast v4, [[B

    invoke-direct {p0, v5, v4}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->provideResponse(Lorg/chromium/net/AndroidPrivateKey;[[B)V

    goto :goto_0

    .line 114
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_2
    iget-object v4, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iget-object v4, v4, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLookupTable:Lorg/xwalk/core/internal/ClientCertLookupTable;

    iget-object v5, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mHost:Ljava/lang/String;

    iget v6, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mPort:I

    invoke-virtual {v4, v5, v6, v3, v1}, Lorg/xwalk/core/internal/ClientCertLookupTable;->allow(Ljava/lang/String;ILorg/chromium/net/AndroidPrivateKey;[[B)V

    .line 115
    invoke-direct {p0, v3, v1}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->provideResponse(Lorg/chromium/net/AndroidPrivateKey;[[B)V

    goto :goto_0
.end method

.method private provideResponse(Lorg/chromium/net/AndroidPrivateKey;[[B)V
    .locals 2
    .param p1, "androidKey"    # Lorg/chromium/net/AndroidPrivateKey;
    .param p2, "certChain"    # [[B

    .prologue
    .line 138
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iget v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mId:I

    invoke-virtual {v0, v1, p2, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->provideClientCertificateResponse(I[[BLorg/chromium/net/AndroidPrivateKey;)V

    .line 139
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal$3;

    invoke-direct {v0, p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal$3;-><init>(Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method public getHost()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 86
    iget v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mPort:I

    return v0
.end method

.method public ignore()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal$2;

    invoke-direct {v0, p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal$2;-><init>(Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method

.method public proceed(Ljava/security/PrivateKey;Ljava/util/List;)V
    .locals 1
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 47
    .local p2, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal$1;-><init>(Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;Ljava/util/List;Ljava/security/PrivateKey;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method
