.class public Lorg/chromium/mojo/bindings/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo/bindings/Decoder$Validator;
    }
.end annotation


# instance fields
.field private final mBaseOffset:I

.field private final mMessage:Lorg/chromium/mojo/bindings/Message;

.field private final mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/bindings/Message;)V
    .locals 4
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 106
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder$Validator;

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->getHandles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v3, v1}, Lorg/chromium/mojo/bindings/Decoder$Validator;-><init>(JI)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/Decoder$Validator;I)V

    .line 107
    return-void
.end method

.method private constructor <init>(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/Decoder$Validator;I)V
    .locals 2
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;
    .param p2, "validator"    # Lorg/chromium/mojo/bindings/Decoder$Validator;
    .param p3, "baseOffset"    # I

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    .line 111
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 112
    iput p3, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    .line 113
    iput-object p2, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    .line 114
    return-void
.end method

.method private getDecoderAtPosition(I)Lorg/chromium/mojo/bindings/Decoder;
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 631
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    iget-object v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    iget-object v2, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    invoke-direct {v0, v1, v2, p1}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/Decoder$Validator;I)V

    return-object v0
.end method

.method private readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;
    .locals 9
    .param p1, "elementSize"    # J
    .param p3, "expectedLength"    # I

    .prologue
    .line 655
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeader()Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v0

    .line 656
    .local v0, "dataHeader":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v1, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->size:I

    int-to-long v2, v1

    const-wide/16 v4, 0x8

    iget v1, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    int-to-long v6, v1

    mul-long/2addr v6, p1

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 658
    new-instance v1, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v2, "Array header is incorrect."

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 660
    :cond_0
    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    iget v1, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    if-eq v1, p3, :cond_1

    .line 662
    new-instance v1, Lorg/chromium/mojo/bindings/DeserializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect array length. Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 665
    :cond_1
    return-object v0
.end method

.method private readDataHeaderForBooleanArray(I)Lorg/chromium/mojo/bindings/Struct$DataHeader;
    .locals 4
    .param p1, "expectedLength"    # I

    .prologue
    .line 639
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeader()Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v0

    .line 640
    .local v0, "dataHeader":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v1, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->size:I

    iget v2, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x8

    if-ge v1, v2, :cond_0

    .line 641
    new-instance v1, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v2, "Array header is incorrect."

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 643
    :cond_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    iget v1, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    if-eq v1, p1, :cond_1

    .line 645
    new-instance v1, Lorg/chromium/mojo/bindings/DeserializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect array length. Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 648
    :cond_1
    return-object v0
.end method

.method private validateBufferSize(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "size"    # I

    .prologue
    .line 669
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 670
    new-instance v0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v1, "Buffer is smaller than expected."

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 672
    :cond_0
    return-void
.end method


# virtual methods
.method public readAndValidateDataHeader([Lorg/chromium/mojo/bindings/Struct$DataHeader;)Lorg/chromium/mojo/bindings/Struct$DataHeader;
    .locals 7
    .param p1, "versionArray"    # [Lorg/chromium/mojo/bindings/Struct$DataHeader;

    .prologue
    .line 140
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeader()Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v1

    .line 141
    .local v1, "header":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    array-length v5, p1

    add-int/lit8 v3, v5, -0x1

    .line 142
    .local v3, "maxVersionIndex":I
    iget v5, v1, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    aget-object v6, p1, v3

    iget v6, v6, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    if-gt v5, v6, :cond_3

    .line 143
    const/4 v4, 0x0

    .line 144
    .local v4, "referenceHeader":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    move v2, v3

    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_0

    .line 145
    aget-object v0, p1, v2

    .line 146
    .local v0, "dataHeader":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v5, v1, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    iget v6, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    if-lt v5, v6, :cond_2

    .line 147
    move-object v4, v0

    .line 151
    .end local v0    # "dataHeader":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    :cond_0
    if-eqz v4, :cond_1

    iget v5, v4, Lorg/chromium/mojo/bindings/Struct$DataHeader;->size:I

    iget v6, v1, Lorg/chromium/mojo/bindings/Struct$DataHeader;->size:I

    if-eq v5, v6, :cond_4

    .line 152
    :cond_1
    new-instance v5, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v6, "Header doesn\'t correspond to any known version."

    invoke-direct {v5, v6}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 144
    .restart local v0    # "dataHeader":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 156
    .end local v0    # "dataHeader":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    .end local v2    # "index":I
    .end local v4    # "referenceHeader":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    :cond_3
    iget v5, v1, Lorg/chromium/mojo/bindings/Struct$DataHeader;->size:I

    aget-object v6, p1, v3

    iget v6, v6, Lorg/chromium/mojo/bindings/Struct$DataHeader;->size:I

    if-ge v5, v6, :cond_4

    .line 157
    new-instance v5, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v6, "Message newer than the last known version cannot be shorter than required by the last known version."

    invoke-direct {v5, v6}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 161
    :cond_4
    return-object v1
.end method

.method public readBoolean(II)Z
    .locals 3
    .param p1, "offset"    # I
    .param p2, "bit"    # I

    .prologue
    const/4 v0, 0x1

    .line 199
    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 200
    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readByte(I)B

    move-result v1

    shl-int v2, v0, p2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readBooleans(III)[Z
    .locals 10
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    const/4 v8, 0x1

    .line 267
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v7

    invoke-virtual {p0, p1, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    .line 268
    .local v2, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v2, :cond_1

    .line 269
    const/4 v5, 0x0

    .line 284
    :cond_0
    return-object v5

    .line 271
    :cond_1
    invoke-direct {v2, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForBooleanArray(I)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v6

    .line 272
    .local v6, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v7, v6, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    add-int/lit8 v7, v7, 0x7

    div-int/lit8 v7, v7, 0x8

    new-array v1, v7, [B

    .line 273
    .local v1, "bytes":[B
    iget-object v7, v2, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v7}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v7

    iget v9, v2, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v9, v9, 0x8

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 274
    iget-object v7, v2, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v7}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 275
    iget v7, v6, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    new-array v5, v7, [Z

    .line 276
    .local v5, "result":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v1

    if-ge v3, v7, :cond_0

    .line 277
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    const/16 v7, 0x8

    if-ge v4, v7, :cond_4

    .line 278
    mul-int/lit8 v7, v3, 0x8

    add-int v0, v7, v4

    .line 279
    .local v0, "booleanIndex":I
    array-length v7, v5

    if-ge v0, v7, :cond_2

    .line 280
    aget-byte v7, v1, v3

    shl-int v9, v8, v4

    and-int/2addr v7, v9

    if-eqz v7, :cond_3

    move v7, v8

    :goto_2
    aput-boolean v7, v5, v0

    .line 277
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 280
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 276
    .end local v0    # "booleanIndex":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public readByte(I)B
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 191
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 192
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public readBytes(III)[B
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 291
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 292
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_0

    .line 293
    const/4 v1, 0x0

    .line 299
    :goto_0
    return-object v1

    .line 295
    :cond_0
    const-wide/16 v4, 0x1

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v2

    .line 296
    .local v2, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v3, v2, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    new-array v1, v3, [B

    .line 297
    .local v1, "result":[B
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, v0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 298
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public readConsumerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z

    .prologue
    .line 404
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readUntypedHandle(IZ)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/mojo/system/UntypedHandle;->toDataPipeConsumerHandle()Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    move-result-object v0

    return-object v0
.end method

.method public readConsumerHandles(III)[Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 509
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v4

    invoke-virtual {p0, p1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 510
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_1

    .line 511
    const/4 v2, 0x0

    .line 520
    :cond_0
    return-object v2

    .line 513
    :cond_1
    const-wide/16 v4, 0x4

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v3

    .line 514
    .local v3, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v4, v3, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    new-array v2, v4, [Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 515
    .local v2, "result":[Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 516
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x8

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readConsumerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    move-result-object v4

    aput-object v4, v2, v1

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readDataHeader()Lorg/chromium/mojo/bindings/Struct$DataHeader;
    .locals 8

    .prologue
    .line 121
    iget-object v3, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    iget v4, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    int-to-long v4, v4

    iget v6, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v6, v6, 0x8

    int-to-long v6, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/Decoder$Validator;->claimMemory(JJ)V

    .line 122
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    .line 123
    .local v2, "size":I
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    .line 124
    .local v0, "elementsOrVersion":I
    if-gez v2, :cond_0

    .line 125
    new-instance v3, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v4, "Negative size. Unsigned integers are not valid for java."

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 128
    :cond_0
    if-gez v0, :cond_1

    .line 129
    new-instance v3, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v4, "Negative elements or version. Unsigned integers are not valid for java."

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 134
    :cond_1
    iget-object v3, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    iget v4, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    iget v6, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v6, v2

    int-to-long v6, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/Decoder$Validator;->claimMemory(JJ)V

    .line 135
    new-instance v1, Lorg/chromium/mojo/bindings/Struct$DataHeader;

    invoke-direct {v1, v2, v0}, Lorg/chromium/mojo/bindings/Struct$DataHeader;-><init>(II)V

    .line 136
    .local v1, "res":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    return-object v1
.end method

.method public readDataHeaderForMap()V
    .locals 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeader()Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v0

    .line 177
    .local v0, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v1, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->size:I

    sget-object v2, Lorg/chromium/mojo/bindings/BindingsHelper;->MAP_STRUCT_HEADER:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    iget v2, v2, Lorg/chromium/mojo/bindings/Struct$DataHeader;->size:I

    if-eq v1, v2, :cond_0

    .line 178
    new-instance v1, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v2, "Incorrect header for map. The size is incorrect."

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_0
    iget v1, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    sget-object v2, Lorg/chromium/mojo/bindings/BindingsHelper;->MAP_STRUCT_HEADER:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    iget v2, v2, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    if-eq v1, v2, :cond_1

    .line 182
    new-instance v1, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v2, "Incorrect header for map. The version is incorrect."

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_1
    return-void
.end method

.method public readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/Struct$DataHeader;
    .locals 2
    .param p1, "expectedLength"    # I

    .prologue
    .line 169
    const-wide/16 v0, 0x8

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v0

    return-object v0
.end method

.method public readDouble(I)D
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 239
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 240
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public readDoubles(III)[D
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 366
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 367
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_0

    .line 368
    const/4 v1, 0x0

    .line 374
    :goto_0
    return-object v1

    .line 370
    :cond_0
    const-wide/16 v4, 0x8

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v2

    .line 371
    .local v2, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v3, v2, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    new-array v1, v3, [D

    .line 372
    .local v1, "result":[D
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, v0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 373
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/DoubleBuffer;->get([D)Ljava/nio/DoubleBuffer;

    goto :goto_0
.end method

.method public readFloat(I)F
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 223
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 224
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public readFloats(III)[F
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 336
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 337
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_0

    .line 338
    const/4 v1, 0x0

    .line 344
    :goto_0
    return-object v1

    .line 340
    :cond_0
    const-wide/16 v4, 0x4

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v2

    .line 341
    .local v2, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v3, v2, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    new-array v1, v3, [F

    .line 342
    .local v1, "result":[F
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, v0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 343
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    goto :goto_0
.end method

.method public readHandle(IZ)Lorg/chromium/mojo/system/Handle;
    .locals 3
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    .line 382
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 383
    if-nez p2, :cond_0

    .line 384
    new-instance v1, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v2, "Trying to decode an invalid handle for a non-nullable type."

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 387
    :cond_0
    sget-object v1, Lorg/chromium/mojo/system/InvalidHandle;->INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;

    .line 390
    :goto_0
    return-object v1

    .line 389
    :cond_1
    iget-object v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    invoke-virtual {v1, v0}, Lorg/chromium/mojo/bindings/Decoder$Validator;->claimHandle(I)V

    .line 390
    iget-object v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Message;->getHandles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/mojo/system/Handle;

    goto :goto_0
.end method

.method public readHandles(III)[Lorg/chromium/mojo/system/Handle;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 471
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v4

    invoke-virtual {p0, p1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 472
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_1

    .line 473
    const/4 v2, 0x0

    .line 482
    :cond_0
    return-object v2

    .line 475
    :cond_1
    const-wide/16 v4, 0x4

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v3

    .line 476
    .local v3, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v4, v3, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    new-array v2, v4, [Lorg/chromium/mojo/system/Handle;

    .line 477
    .local v2, "result":[Lorg/chromium/mojo/system/Handle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 478
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x8

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readHandle(IZ)Lorg/chromium/mojo/system/Handle;

    move-result-object v4

    aput-object v4, v2, v1

    .line 477
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readInt(I)I
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 215
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 216
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lorg/chromium/mojo/bindings/Interface;",
            ">(IZ)",
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<TI;>;"
        }
    .end annotation

    .prologue
    .line 448
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readMessagePipeHandle(IZ)Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    .line 449
    .local v0, "handle":Lorg/chromium/mojo/system/MessagePipeHandle;
    if-nez v0, :cond_0

    .line 450
    const/4 v1, 0x0

    .line 452
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-direct {v1, v0}, Lorg/chromium/mojo/bindings/InterfaceRequest;-><init>(Lorg/chromium/mojo/system/MessagePipeHandle;)V

    goto :goto_0
.end method

.method public readInterfaceRequests(III)[Lorg/chromium/mojo/bindings/InterfaceRequest;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lorg/chromium/mojo/bindings/Interface;",
            ">(III)[",
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<TI;>;"
        }
    .end annotation

    .prologue
    .line 612
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v4

    invoke-virtual {p0, p1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 613
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_1

    .line 614
    const/4 v2, 0x0

    .line 624
    :cond_0
    return-object v2

    .line 616
    :cond_1
    const-wide/16 v4, 0x4

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v3

    .line 618
    .local v3, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v4, v3, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    new-array v2, v4, [Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 619
    .local v2, "result":[Lorg/chromium/mojo/bindings/InterfaceRequest;, "[Lorg/chromium/mojo/bindings/InterfaceRequest<TI;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 620
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x8

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v4

    aput-object v4, v2, v1

    .line 619
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readInts(III)[I
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 321
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 322
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_0

    .line 323
    const/4 v1, 0x0

    .line 329
    :goto_0
    return-object v1

    .line 325
    :cond_0
    const-wide/16 v4, 0x4

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v2

    .line 326
    .local v2, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v3, v2, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    new-array v1, v3, [I

    .line 327
    .local v1, "result":[I
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, v0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 328
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    goto :goto_0
.end method

.method public readLong(I)J
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 231
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 232
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongs(III)[J
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 351
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 352
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_0

    .line 353
    const/4 v1, 0x0

    .line 359
    :goto_0
    return-object v1

    .line 355
    :cond_0
    const-wide/16 v4, 0x8

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v2

    .line 356
    .local v2, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v3, v2, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    new-array v1, v3, [J

    .line 357
    .local v1, "result":[J
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, v0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 358
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    goto :goto_0
.end method

.method public readMessagePipeHandle(IZ)Lorg/chromium/mojo/system/MessagePipeHandle;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z

    .prologue
    .line 418
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readUntypedHandle(IZ)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/mojo/system/UntypedHandle;->toMessagePipeHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    return-object v0
.end method

.method public readMessagePipeHandles(III)[Lorg/chromium/mojo/system/MessagePipeHandle;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 548
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v4

    invoke-virtual {p0, p1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 549
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_1

    .line 550
    const/4 v2, 0x0

    .line 559
    :cond_0
    return-object v2

    .line 552
    :cond_1
    const-wide/16 v4, 0x4

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v3

    .line 553
    .local v3, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v4, v3, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    new-array v2, v4, [Lorg/chromium/mojo/system/MessagePipeHandle;

    .line 554
    .local v2, "result":[Lorg/chromium/mojo/system/MessagePipeHandle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 555
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x8

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readMessagePipeHandle(IZ)Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v4

    aput-object v4, v2, v1

    .line 554
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z

    .prologue
    .line 248
    iget v4, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int v0, v4, p1

    .line 249
    .local v0, "basePosition":I
    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v2

    .line 250
    .local v2, "pointerOffset":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 251
    if-nez p2, :cond_0

    .line 252
    new-instance v4, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v5, "Trying to decode null pointer for a non-nullable type."

    invoke-direct {v4, v5}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 255
    :cond_0
    const/4 v4, 0x0

    .line 259
    :goto_0
    return-object v4

    .line 257
    :cond_1
    int-to-long v4, v0

    add-long/2addr v4, v2

    long-to-int v1, v4

    .line 259
    .local v1, "newPosition":I
    invoke-direct {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->getDecoderAtPosition(I)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    goto :goto_0
.end method

.method public readProducerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ProducerHandle;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z

    .prologue
    .line 411
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readUntypedHandle(IZ)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/mojo/system/UntypedHandle;->toDataPipeProducerHandle()Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    move-result-object v0

    return-object v0
.end method

.method public readProducerHandles(III)[Lorg/chromium/mojo/system/DataPipe$ProducerHandle;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 528
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v4

    invoke-virtual {p0, p1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 529
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_1

    .line 530
    const/4 v2, 0x0

    .line 539
    :cond_0
    return-object v2

    .line 532
    :cond_1
    const-wide/16 v4, 0x4

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v3

    .line 533
    .local v3, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v4, v3, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    new-array v2, v4, [Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    .line 534
    .local v2, "result":[Lorg/chromium/mojo/system/DataPipe$ProducerHandle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 535
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x8

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readProducerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    move-result-object v4

    aput-object v4, v2, v1

    .line 534
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;
    .locals 3
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lorg/chromium/mojo/bindings/Interface$Proxy;",
            ">(IZ",
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<*TP;>;)TP;"
        }
    .end annotation

    .prologue
    .line 435
    .local p3, "manager":Lorg/chromium/mojo/bindings/Interface$Manager;, "Lorg/chromium/mojo/bindings/Interface$Manager<*TP;>;"
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readMessagePipeHandle(IZ)Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    .line 436
    .local v0, "handle":Lorg/chromium/mojo/system/MessagePipeHandle;
    invoke-interface {v0}, Lorg/chromium/mojo/system/MessagePipeHandle;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 437
    const/4 v2, 0x0

    .line 440
    :goto_0
    return-object v2

    .line 439
    :cond_0
    add-int/lit8 v2, p1, 0x4

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v1

    .line 440
    .local v1, "version":I
    invoke-virtual {p3, v0, v1}, Lorg/chromium/mojo/bindings/Interface$Manager;->attachProxy(Lorg/chromium/mojo/system/MessagePipeHandle;I)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v2

    goto :goto_0
.end method

.method public readServiceInterfaces(IIILorg/chromium/mojo/bindings/Interface$Manager;)[Lorg/chromium/mojo/bindings/Interface;
    .locals 8
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lorg/chromium/mojo/bindings/Interface;",
            "P::",
            "Lorg/chromium/mojo/bindings/Interface$Proxy;",
            ">(III",
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<TS;TP;>;)[TS;"
        }
    .end annotation

    .prologue
    .line 588
    .local p4, "manager":Lorg/chromium/mojo/bindings/Interface$Manager;, "Lorg/chromium/mojo/bindings/Interface$Manager<TS;TP;>;"
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v5

    invoke-virtual {p0, p1, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 589
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_1

    .line 590
    const/4 v2, 0x0

    .line 604
    :cond_0
    return-object v2

    .line 592
    :cond_1
    const-wide/16 v6, 0x8

    invoke-direct {v0, v6, v7, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v3

    .line 594
    .local v3, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v5, v3, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    invoke-virtual {p4, v5}, Lorg/chromium/mojo/bindings/Interface$Manager;->buildArray(I)[Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    .line 595
    .local v2, "result":[Lorg/chromium/mojo/bindings/Interface;, "[TS;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_0

    .line 599
    mul-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x8

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v6

    invoke-virtual {v0, v5, v6, p4}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v4

    .line 602
    .local v4, "value":Lorg/chromium/mojo/bindings/Interface;, "TS;"
    aput-object v4, v2, v1

    .line 595
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readSharedBufferHandle(IZ)Lorg/chromium/mojo/system/SharedBufferHandle;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z

    .prologue
    .line 425
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readUntypedHandle(IZ)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/mojo/system/UntypedHandle;->toSharedBufferHandle()Lorg/chromium/mojo/system/SharedBufferHandle;

    move-result-object v0

    return-object v0
.end method

.method public readSharedBufferHandles(III)[Lorg/chromium/mojo/system/SharedBufferHandle;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 568
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v4

    invoke-virtual {p0, p1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 569
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_1

    .line 570
    const/4 v2, 0x0

    .line 579
    :cond_0
    return-object v2

    .line 572
    :cond_1
    const-wide/16 v4, 0x4

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v3

    .line 573
    .local v3, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v4, v3, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    new-array v2, v4, [Lorg/chromium/mojo/system/SharedBufferHandle;

    .line 574
    .local v2, "result":[Lorg/chromium/mojo/system/SharedBufferHandle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 575
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x8

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readSharedBufferHandle(IZ)Lorg/chromium/mojo/system/SharedBufferHandle;

    move-result-object v4

    aput-object v4, v2, v1

    .line 574
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readShort(I)S
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 207
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 208
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public readShorts(III)[S
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 306
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 307
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_0

    .line 308
    const/4 v1, 0x0

    .line 314
    :goto_0
    return-object v1

    .line 310
    :cond_0
    const-wide/16 v4, 0x2

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v2

    .line 311
    .local v2, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v3, v2, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    new-array v1, v3, [S

    .line 312
    .local v1, "result":[S
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, v0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 313
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    goto :goto_0
.end method

.method public readString(IZ)Ljava/lang/String;
    .locals 4
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z

    .prologue
    .line 459
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 460
    .local v0, "arrayNullability":I
    :goto_0
    const/4 v2, -0x1

    invoke-virtual {p0, p1, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBytes(III)[B

    move-result-object v1

    .line 461
    .local v1, "bytes":[B
    if-nez v1, :cond_1

    .line 462
    const/4 v2, 0x0

    .line 464
    :goto_1
    return-object v2

    .line 459
    .end local v0    # "arrayNullability":I
    .end local v1    # "bytes":[B
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 464
    .restart local v0    # "arrayNullability":I
    .restart local v1    # "bytes":[B
    :cond_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "utf8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_1
.end method

.method public readUntypedHandle(IZ)Lorg/chromium/mojo/system/UntypedHandle;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z

    .prologue
    .line 397
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readHandle(IZ)Lorg/chromium/mojo/system/Handle;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/mojo/system/Handle;->toUntypedHandle()Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object v0

    return-object v0
.end method

.method public readUntypedHandles(III)[Lorg/chromium/mojo/system/UntypedHandle;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 490
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v4

    invoke-virtual {p0, p1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 491
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_1

    .line 492
    const/4 v2, 0x0

    .line 501
    :cond_0
    return-object v2

    .line 494
    :cond_1
    const-wide/16 v4, 0x4

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v3

    .line 495
    .local v3, "si":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    iget v4, v3, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    new-array v2, v4, [Lorg/chromium/mojo/system/UntypedHandle;

    .line 496
    .local v2, "result":[Lorg/chromium/mojo/system/UntypedHandle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 497
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x8

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readUntypedHandle(IZ)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object v4

    aput-object v4, v2, v1

    .line 496
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
