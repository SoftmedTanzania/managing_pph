.class final Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "Application_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/Application_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ApplicationInitializeParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/Struct$DataHeader;

.field private static final STRUCT_SIZE:I = 0x20

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/Struct$DataHeader;


# instance fields
.field public args:[Ljava/lang/String;

.field public shell:Lorg/chromium/mojom/mojo/Shell;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 156
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/Struct$DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/Struct$DataHeader;

    const/16 v2, 0x20

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/Struct$DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/Struct$DataHeader;

    .line 157
    sget-object v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/Struct$DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;-><init>(I)V

    .line 169
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 164
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 165
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;
    .locals 9
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 177
    if-nez p0, :cond_1

    move-object v3, v6

    .line 200
    :cond_0
    :goto_0
    return-object v3

    .line 180
    :cond_1
    sget-object v5, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/Struct$DataHeader;

    invoke-virtual {p0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/Struct$DataHeader;)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v2

    .line 181
    .local v2, "mainDataHeader":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    new-instance v3, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;

    iget v5, v2, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    invoke-direct {v3, v5}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;-><init>(I)V

    .line 182
    .local v3, "result":Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;
    iget v5, v2, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    if-ltz v5, :cond_2

    .line 183
    const/16 v5, 0x8

    sget-object v7, Lorg/chromium/mojom/mojo/Shell;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p0, v5, v8, v7}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v5

    check-cast v5, Lorg/chromium/mojom/mojo/Shell;

    iput-object v5, v3, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->shell:Lorg/chromium/mojom/mojo/Shell;

    .line 185
    :cond_2
    iget v5, v2, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    if-ltz v5, :cond_3

    .line 186
    const/16 v5, 0x10

    const/4 v7, 0x1

    invoke-virtual {p0, v5, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 187
    .local v0, "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_4

    .line 188
    iput-object v6, v3, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->args:[Ljava/lang/String;

    .line 197
    .end local v0    # "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    :cond_3
    iget v5, v2, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    if-ltz v5, :cond_0

    .line 198
    const/16 v5, 0x18

    invoke-virtual {p0, v5, v8}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->url:Ljava/lang/String;

    goto :goto_0

    .line 190
    .restart local v0    # "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    :cond_4
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v4

    .line 191
    .local v4, "si1":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v5, v4, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v3, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->args:[Ljava/lang/String;

    .line 192
    const/4 v1, 0x0

    .local v1, "i1":I
    :goto_1
    iget v5, v4, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    if-ge v1, v5, :cond_3

    .line 193
    iget-object v5, v3, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->args:[Ljava/lang/String;

    mul-int/lit8 v6, v1, 0x8

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v0, v6, v8}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 172
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 8
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x0

    .line 206
    sget-object v3, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    invoke-virtual {p1, v3}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/Struct$DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 207
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget-object v3, p0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->shell:Lorg/chromium/mojom/mojo/Shell;

    const/16 v4, 0x8

    sget-object v5, Lorg/chromium/mojom/mojo/Shell;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {v0, v3, v4, v6, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    .line 208
    iget-object v3, p0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->args:[Ljava/lang/String;

    if-nez v3, :cond_1

    .line 209
    const/4 v3, 0x1

    invoke-virtual {v0, v7, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 216
    :cond_0
    iget-object v3, p0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->url:Ljava/lang/String;

    const/16 v4, 0x18

    invoke-virtual {v0, v3, v4, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 217
    return-void

    .line 211
    :cond_1
    iget-object v3, p0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->args:[Ljava/lang/String;

    array-length v3, v3

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v7, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    .line 212
    .local v1, "encoder1":Lorg/chromium/mojo/bindings/Encoder;
    const/4 v2, 0x0

    .local v2, "i0":I
    :goto_0
    iget-object v3, p0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->args:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 213
    iget-object v3, p0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->args:[Ljava/lang/String;

    aget-object v3, v3, v2

    mul-int/lit8 v4, v2, 0x8

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v1, v3, v4, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 224
    if-ne p1, p0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v1

    .line 226
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 227
    goto :goto_0

    .line 228
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 229
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 230
    check-cast v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;

    .line 231
    .local v0, "other":Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;
    iget-object v3, p0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->shell:Lorg/chromium/mojom/mojo/Shell;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->shell:Lorg/chromium/mojom/mojo/Shell;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 232
    goto :goto_0

    .line 233
    :cond_4
    iget-object v3, p0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->args:[Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->args:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 234
    goto :goto_0

    .line 235
    :cond_5
    iget-object v3, p0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->url:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->url:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 236
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 245
    const/16 v0, 0x1f

    .line 246
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 247
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->shell:Lorg/chromium/mojom/mojo/Shell;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 248
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->args:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 249
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->url:Ljava/lang/String;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 250
    return v1
.end method
