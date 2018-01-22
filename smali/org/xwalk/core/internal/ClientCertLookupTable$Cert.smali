.class public Lorg/xwalk/core/internal/ClientCertLookupTable$Cert;
.super Ljava/lang/Object;
.source "ClientCertLookupTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/internal/ClientCertLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cert"
.end annotation


# instance fields
.field certChain:[[B

.field privateKey:Lorg/chromium/net/AndroidPrivateKey;


# direct methods
.method public constructor <init>(Lorg/chromium/net/AndroidPrivateKey;[[B)V
    .locals 4
    .param p1, "privateKey"    # Lorg/chromium/net/AndroidPrivateKey;
    .param p2, "certChain"    # [[B

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/xwalk/core/internal/ClientCertLookupTable$Cert;->privateKey:Lorg/chromium/net/AndroidPrivateKey;

    .line 70
    array-length v2, p2

    new-array v1, v2, [[B

    .line 72
    .local v1, "newChain":[[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 73
    aget-object v2, p2, v0

    aget-object v3, p2, v0

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    aput-object v2, v1, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    iput-object v1, p0, Lorg/xwalk/core/internal/ClientCertLookupTable$Cert;->certChain:[[B

    .line 77
    return-void
.end method
