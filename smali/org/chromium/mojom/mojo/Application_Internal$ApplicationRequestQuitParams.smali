.class final Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "Application_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/Application_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ApplicationRequestQuitParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/Struct$DataHeader;

.field private static final STRUCT_SIZE:I = 0x8

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/Struct$DataHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 350
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/Struct$DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/Struct$DataHeader;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/Struct$DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/Struct$DataHeader;

    .line 351
    sget-object v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/Struct$DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;-><init>(I)V

    .line 359
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 354
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 355
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;
    .locals 3
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    .line 367
    if-nez p0, :cond_0

    .line 368
    const/4 v1, 0x0

    .line 372
    :goto_0
    return-object v1

    .line 370
    :cond_0
    sget-object v2, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/Struct$DataHeader;

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/Struct$DataHeader;)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v0

    .line 371
    .local v0, "mainDataHeader":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    new-instance v1, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;

    iget v2, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    invoke-direct {v1, v2}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;-><init>(I)V

    .line 372
    .local v1, "result":Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;
    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 362
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 1
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    .line 378
    sget-object v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/Struct$DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    .line 379
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 386
    if-ne p1, p0, :cond_1

    .line 392
    :cond_0
    :goto_0
    return v0

    .line 388
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 389
    goto :goto_0

    .line 390
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 391
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 400
    const/16 v0, 0x1f

    .line 401
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 402
    .local v1, "result":I
    return v1
.end method
