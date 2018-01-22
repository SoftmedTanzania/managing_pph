.class public final Lorg/chromium/mojom/device/BatteryStatus;
.super Lorg/chromium/mojo/bindings/Struct;
.source "BatteryStatus.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/Struct$DataHeader;

.field private static final STRUCT_SIZE:I = 0x28

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/Struct$DataHeader;


# instance fields
.field public charging:Z

.field public chargingTime:D

.field public dischargingTime:D

.field public level:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/Struct$DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/Struct$DataHeader;

    const/16 v2, 0x28

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/Struct$DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/mojom/device/BatteryStatus;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/Struct$DataHeader;

    .line 17
    sget-object v0, Lorg/chromium/mojom/device/BatteryStatus;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/Struct$DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/device/BatteryStatus;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/device/BatteryStatus;-><init>(I)V

    .line 34
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "version"    # I

    .prologue
    .line 25
    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    .line 28
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    .line 29
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/chromium/mojom/device/BatteryStatus;->level:D

    .line 30
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/device/BatteryStatus;
    .locals 4
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    .line 42
    if-nez p0, :cond_1

    .line 43
    const/4 v1, 0x0

    .line 59
    :cond_0
    :goto_0
    return-object v1

    .line 45
    :cond_1
    sget-object v2, Lorg/chromium/mojom/device/BatteryStatus;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/Struct$DataHeader;

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/Struct$DataHeader;)Lorg/chromium/mojo/bindings/Struct$DataHeader;

    move-result-object v0

    .line 46
    .local v0, "mainDataHeader":Lorg/chromium/mojo/bindings/Struct$DataHeader;
    new-instance v1, Lorg/chromium/mojom/device/BatteryStatus;

    iget v2, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    invoke-direct {v1, v2}, Lorg/chromium/mojom/device/BatteryStatus;-><init>(I)V

    .line 47
    .local v1, "result":Lorg/chromium/mojom/device/BatteryStatus;
    iget v2, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 48
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    .line 50
    :cond_2
    iget v2, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_3

    .line 51
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    .line 53
    :cond_3
    iget v2, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_4

    .line 54
    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    .line 56
    :cond_4
    iget v2, v0, Lorg/chromium/mojo/bindings/Struct$DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_0

    .line 57
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/mojom/device/BatteryStatus;->level:D

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/device/BatteryStatus;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 37
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/device/BatteryStatus;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/device/BatteryStatus;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    .line 65
    sget-object v1, Lorg/chromium/mojom/device/BatteryStatus;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/Struct$DataHeader;

    invoke-virtual {p1, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/Struct$DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 66
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget-boolean v1, p0, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    .line 67
    iget-wide v2, p0, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    const/16 v1, 0x10

    invoke-virtual {v0, v2, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    .line 68
    iget-wide v2, p0, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    const/16 v1, 0x18

    invoke-virtual {v0, v2, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    .line 69
    iget-wide v2, p0, Lorg/chromium/mojom/device/BatteryStatus;->level:D

    const/16 v1, 0x20

    invoke-virtual {v0, v2, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    .line 70
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    if-ne p1, p0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v1

    .line 79
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 82
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 83
    check-cast v0, Lorg/chromium/mojom/device/BatteryStatus;

    .line 84
    .local v0, "other":Lorg/chromium/mojom/device/BatteryStatus;
    iget-boolean v3, p0, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    iget-boolean v4, v0, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    iget-wide v4, p0, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    iget-wide v6, v0, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_5

    move v1, v2

    .line 87
    goto :goto_0

    .line 88
    :cond_5
    iget-wide v4, p0, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    iget-wide v6, v0, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_6

    move v1, v2

    .line 89
    goto :goto_0

    .line 90
    :cond_6
    iget-wide v4, p0, Lorg/chromium/mojom/device/BatteryStatus;->level:D

    iget-wide v6, v0, Lorg/chromium/mojom/device/BatteryStatus;->level:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    .line 91
    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 100
    const/16 v0, 0x1f

    .line 101
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 102
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Z)I

    move-result v3

    add-int v1, v2, v3

    .line 103
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    invoke-static {v4, v5}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(D)I

    move-result v3

    add-int v1, v2, v3

    .line 104
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    invoke-static {v4, v5}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(D)I

    move-result v3

    add-int v1, v2, v3

    .line 105
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lorg/chromium/mojom/device/BatteryStatus;->level:D

    invoke-static {v4, v5}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(D)I

    move-result v3

    add-int v1, v2, v3

    .line 106
    return v1
.end method
