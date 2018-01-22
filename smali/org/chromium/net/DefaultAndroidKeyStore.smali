.class public Lorg/chromium/net/DefaultAndroidKeyStore;
.super Ljava/lang/Object;
.source "DefaultAndroidKeyStore.java"

# interfaces
.implements Lorg/chromium/net/AndroidKeyStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidKeyStoreInProcessImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private getOpenSSLKeyForPrivateKey(Lorg/chromium/net/AndroidPrivateKey;)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # Lorg/chromium/net/AndroidPrivateKey;

    .prologue
    const/4 v5, 0x0

    .line 143
    check-cast p1, Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;

    .end local p1    # "key":Lorg/chromium/net/AndroidPrivateKey;
    invoke-virtual {p1}, Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;->getJavaKey()Ljava/security/PrivateKey;

    move-result-object v2

    .line 145
    .local v2, "javaKey":Ljava/security/PrivateKey;
    if-nez v2, :cond_1

    .line 146
    const-string v6, "AndroidKeyStoreInProcessImpl"

    const-string v7, "key == null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 196
    :cond_0
    :goto_0
    return-object v3

    .line 149
    :cond_1
    instance-of v6, v2, Ljava/security/interfaces/RSAPrivateKey;

    if-nez v6, :cond_2

    .line 150
    const-string v6, "AndroidKeyStoreInProcessImpl"

    const-string v7, "does not implement RSAPrivateKey"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 151
    goto :goto_0

    .line 157
    :cond_2
    :try_start_0
    const-string v6, "org.apache.harmony.xnet.provider.jsse.OpenSSLRSAPrivateKey"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 166
    .local v4, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 170
    const-string v6, "AndroidKeyStoreInProcessImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Private key is not an OpenSSLRSAPrivateKey instance, its class name is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 172
    goto :goto_0

    .line 159
    .end local v4    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "AndroidKeyStoreInProcessImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find system OpenSSLRSAPrivateKey class: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 164
    goto :goto_0

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :try_start_1
    const-string v6, "getOpenSSLKey"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 181
    .local v1, "getKey":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    const/4 v3, 0x0

    .line 184
    .local v3, "opensslKey":Ljava/lang/Object;
    const/4 v6, 0x0

    :try_start_2
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 186
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 188
    if-nez v3, :cond_0

    .line 190
    const-string v6, "AndroidKeyStoreInProcessImpl"

    const-string v7, "getOpenSSLKey() returned null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 191
    goto :goto_0

    .line 186
    :catchall_0
    move-exception v6

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    throw v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 194
    .end local v1    # "getKey":Ljava/lang/reflect/Method;
    .end local v3    # "opensslKey":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 195
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v6, "AndroidKeyStoreInProcessImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while trying to retrieve system EVP_PKEY handle: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 196
    goto/16 :goto_0
.end method


# virtual methods
.method public createKey(Ljava/security/PrivateKey;)Lorg/chromium/net/AndroidPrivateKey;
    .locals 1
    .param p1, "javaKey"    # Ljava/security/PrivateKey;

    .prologue
    .line 49
    new-instance v0, Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;

    invoke-direct {v0, p1, p0}, Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;-><init>(Ljava/security/PrivateKey;Lorg/chromium/net/DefaultAndroidKeyStore;)V

    return-object v0
.end method

.method public getDSAKeyParamQ(Lorg/chromium/net/AndroidPrivateKey;)[B
    .locals 4
    .param p1, "key"    # Lorg/chromium/net/AndroidPrivateKey;

    .prologue
    .line 64
    check-cast p1, Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;

    .end local p1    # "key":Lorg/chromium/net/AndroidPrivateKey;
    invoke-virtual {p1}, Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;->getJavaKey()Ljava/security/PrivateKey;

    move-result-object v0

    .line 65
    .local v0, "javaKey":Ljava/security/PrivateKey;
    instance-of v2, v0, Ljava/security/interfaces/DSAKey;

    if-eqz v2, :cond_0

    .line 66
    check-cast v0, Ljava/security/interfaces/DSAKey;

    .end local v0    # "javaKey":Ljava/security/PrivateKey;
    invoke-interface {v0}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    .line 67
    .local v1, "params":Ljava/security/interfaces/DSAParams;
    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 70
    .end local v1    # "params":Ljava/security/interfaces/DSAParams;
    :goto_0
    return-object v2

    .line 69
    .restart local v0    # "javaKey":Ljava/security/PrivateKey;
    :cond_0
    const-string v2, "AndroidKeyStoreInProcessImpl"

    const-string v3, "Not a DSAKey instance!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getECKeyOrder(Lorg/chromium/net/AndroidPrivateKey;)[B
    .locals 4
    .param p1, "key"    # Lorg/chromium/net/AndroidPrivateKey;

    .prologue
    .line 75
    check-cast p1, Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;

    .end local p1    # "key":Lorg/chromium/net/AndroidPrivateKey;
    invoke-virtual {p1}, Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;->getJavaKey()Ljava/security/PrivateKey;

    move-result-object v0

    .line 76
    .local v0, "javaKey":Ljava/security/PrivateKey;
    instance-of v2, v0, Ljava/security/interfaces/ECKey;

    if-eqz v2, :cond_0

    .line 77
    check-cast v0, Ljava/security/interfaces/ECKey;

    .end local v0    # "javaKey":Ljava/security/PrivateKey;
    invoke-interface {v0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    .line 78
    .local v1, "params":Ljava/security/spec/ECParameterSpec;
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 81
    .end local v1    # "params":Ljava/security/spec/ECParameterSpec;
    :goto_0
    return-object v2

    .line 80
    .restart local v0    # "javaKey":Ljava/security/PrivateKey;
    :cond_0
    const-string v2, "AndroidKeyStoreInProcessImpl"

    const-string v3, "Not an ECKey instance!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getOpenSSLEngineForPrivateKey(Lorg/chromium/net/AndroidPrivateKey;)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # Lorg/chromium/net/AndroidPrivateKey;

    .prologue
    const/4 v5, 0x0

    .line 245
    :try_start_0
    const-string v6, "org.apache.harmony.xnet.provider.jsse.OpenSSLEngine"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 255
    .local v2, "engineClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lorg/chromium/net/DefaultAndroidKeyStore;->getOpenSSLKeyForPrivateKey(Lorg/chromium/net/AndroidPrivateKey;)Ljava/lang/Object;

    move-result-object v4

    .line 256
    .local v4, "opensslKey":Ljava/lang/Object;
    if-nez v4, :cond_1

    move-object v1, v5

    .line 290
    .end local v2    # "engineClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "opensslKey":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v1

    .line 247
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "AndroidKeyStoreInProcessImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find system OpenSSLEngine class: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v5

    .line 252
    goto :goto_0

    .line 263
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "engineClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "opensslKey":Ljava/lang/Object;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getEngine"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 269
    .local v3, "getEngine":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    :try_start_2
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 270
    const/4 v1, 0x0

    .line 272
    .local v1, "engine":Ljava/lang/Object;
    const/4 v6, 0x0

    :try_start_3
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 274
    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 276
    if-nez v1, :cond_2

    .line 278
    const-string v6, "AndroidKeyStoreInProcessImpl"

    const-string v7, "getEngine() returned null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 282
    const-string v6, "AndroidKeyStoreInProcessImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Engine is not an OpenSSLEngine instance, its class name is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v5

    .line 284
    goto :goto_0

    .line 264
    .end local v1    # "engine":Ljava/lang/Object;
    .end local v3    # "getEngine":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    .line 266
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v6, "AndroidKeyStoreInProcessImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No getEngine() method on OpenSSLKey member:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v5

    .line 267
    goto/16 :goto_0

    .line 274
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "engine":Ljava/lang/Object;
    .restart local v3    # "getEngine":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v6

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 288
    .end local v1    # "engine":Ljava/lang/Object;
    .end local v3    # "getEngine":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v0

    .line 289
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v6, "AndroidKeyStoreInProcessImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while trying to retrieve OpenSSLEngine object: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v5

    .line 290
    goto/16 :goto_0
.end method

.method public getOpenSSLHandleForPrivateKey(Lorg/chromium/net/AndroidPrivateKey;)J
    .locals 10
    .param p1, "key"    # Lorg/chromium/net/AndroidPrivateKey;

    .prologue
    const-wide/16 v6, 0x0

    .line 202
    invoke-direct {p0, p1}, Lorg/chromium/net/DefaultAndroidKeyStore;->getOpenSSLKeyForPrivateKey(Lorg/chromium/net/AndroidPrivateKey;)Ljava/lang/Object;

    move-result-object v4

    .line 203
    .local v4, "opensslKey":Ljava/lang/Object;
    if-nez v4, :cond_1

    move-wide v2, v6

    .line 236
    :cond_0
    :goto_0
    return-wide v2

    .line 215
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v8, "getPkeyContext"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 221
    .local v1, "getPkeyContext":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 222
    const-wide/16 v2, 0x0

    .line 224
    .local v2, "evp_pkey":J
    const/4 v5, 0x0

    :try_start_2
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v2

    .line 226
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 228
    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    .line 230
    const-string v5, "AndroidKeyStoreInProcessImpl"

    const-string v8, "getPkeyContext() returned null"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 234
    .end local v1    # "getPkeyContext":Ljava/lang/reflect/Method;
    .end local v2    # "evp_pkey":J
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "AndroidKeyStoreInProcessImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while trying to retrieve system EVP_PKEY handle: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v6

    .line 236
    goto :goto_0

    .line 216
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 218
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "AndroidKeyStoreInProcessImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No getPkeyContext() method on OpenSSLKey member:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v6

    .line 219
    goto :goto_0

    .line 226
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "getPkeyContext":Ljava/lang/reflect/Method;
    .restart local v2    # "evp_pkey":J
    :catchall_0
    move-exception v5

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public getPrivateKeyEncodedBytes(Lorg/chromium/net/AndroidPrivateKey;)[B
    .locals 2
    .param p1, "key"    # Lorg/chromium/net/AndroidPrivateKey;

    .prologue
    .line 86
    check-cast p1, Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;

    .end local p1    # "key":Lorg/chromium/net/AndroidPrivateKey;
    invoke-virtual {p1}, Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;->getJavaKey()Ljava/security/PrivateKey;

    move-result-object v0

    .line 87
    .local v0, "javaKey":Ljava/security/PrivateKey;
    invoke-interface {v0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v1

    return-object v1
.end method

.method public getPrivateKeyType(Lorg/chromium/net/AndroidPrivateKey;)I
    .locals 3
    .param p1, "key"    # Lorg/chromium/net/AndroidPrivateKey;

    .prologue
    .line 131
    check-cast p1, Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;

    .end local p1    # "key":Lorg/chromium/net/AndroidPrivateKey;
    invoke-virtual {p1}, Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;->getJavaKey()Ljava/security/PrivateKey;

    move-result-object v0

    .line 132
    .local v0, "javaKey":Ljava/security/PrivateKey;
    invoke-interface {v0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "keyAlgorithm":Ljava/lang/String;
    const-string v2, "RSA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    const/4 v2, 0x0

    .line 138
    :goto_0
    return v2

    .line 135
    :cond_0
    const-string v2, "EC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    const/4 v2, 0x2

    goto :goto_0

    .line 138
    :cond_1
    const/16 v2, 0xff

    goto :goto_0
.end method

.method public getRSAKeyModulus(Lorg/chromium/net/AndroidPrivateKey;)[B
    .locals 3
    .param p1, "key"    # Lorg/chromium/net/AndroidPrivateKey;

    .prologue
    .line 54
    check-cast p1, Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;

    .end local p1    # "key":Lorg/chromium/net/AndroidPrivateKey;
    invoke-virtual {p1}, Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;->getJavaKey()Ljava/security/PrivateKey;

    move-result-object v0

    .line 55
    .local v0, "javaKey":Ljava/security/PrivateKey;
    instance-of v1, v0, Ljava/security/interfaces/RSAKey;

    if-eqz v1, :cond_0

    .line 56
    check-cast v0, Ljava/security/interfaces/RSAKey;

    .end local v0    # "javaKey":Ljava/security/PrivateKey;
    invoke-interface {v0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 59
    :goto_0
    return-object v1

    .line 58
    .restart local v0    # "javaKey":Ljava/security/PrivateKey;
    :cond_0
    const-string v1, "AndroidKeyStoreInProcessImpl"

    const-string v2, "Not a RSAKey instance!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public rawSignDigestWithPrivateKey(Lorg/chromium/net/AndroidPrivateKey;[B)[B
    .locals 8
    .param p1, "key"    # Lorg/chromium/net/AndroidPrivateKey;
    .param p2, "message"    # [B

    .prologue
    const/4 v4, 0x0

    .line 93
    check-cast p1, Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;

    .end local p1    # "key":Lorg/chromium/net/AndroidPrivateKey;
    invoke-virtual {p1}, Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;->getJavaKey()Ljava/security/PrivateKey;

    move-result-object v1

    .line 95
    .local v1, "javaKey":Ljava/security/PrivateKey;
    const/4 v3, 0x0

    .line 99
    .local v3, "signature":Ljava/security/Signature;
    :try_start_0
    invoke-interface {v1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "keyAlgorithm":Ljava/lang/String;
    const-string v5, "RSA"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 104
    const-string v5, "NONEwithRSA"

    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 112
    .end local v2    # "keyAlgorithm":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v3, :cond_2

    .line 113
    const-string v5, "AndroidKeyStoreInProcessImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported private key algorithm: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_1
    return-object v4

    .line 105
    .restart local v2    # "keyAlgorithm":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v5, "EC"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    const-string v5, "NONEwithECDSA"

    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 119
    .end local v2    # "keyAlgorithm":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v3, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 120
    invoke-virtual {v3, p2}, Ljava/security/Signature;->update([B)V

    .line 121
    invoke-virtual {v3}, Ljava/security/Signature;->sign()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    goto :goto_1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "AndroidKeyStoreInProcessImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while signing message with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " private key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public releaseKey(Lorg/chromium/net/AndroidPrivateKey;)V
    .locals 0
    .param p1, "key"    # Lorg/chromium/net/AndroidPrivateKey;

    .prologue
    .line 297
    return-void
.end method
