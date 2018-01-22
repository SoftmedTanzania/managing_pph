.class public LSevenZip/Compression/RangeCoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static ProbPrices:[I = null

.field static final kBitModelTotal:I = 0x800

.field static final kNumBitModelTotalBits:I = 0xb

.field public static final kNumBitPriceShiftBits:I = 0x6

.field static final kNumMoveBits:I = 0x5

.field static final kNumMoveReducingBits:I = 0x2

.field static final kTopMask:I = -0x1000000


# instance fields
.field Low:J

.field Range:I

.field Stream:Ljava/io/OutputStream;

.field _cache:I

.field _cacheSize:I

.field _position:J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 124
    const/16 v5, 0x200

    new-array v5, v5, [I

    sput-object v5, LSevenZip/Compression/RangeCoder/Encoder;->ProbPrices:[I

    .line 128
    const/16 v3, 0x9

    .line 129
    .local v3, "kNumBits":I
    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 131
    sub-int v5, v3, v1

    add-int/lit8 v5, v5, -0x1

    shl-int v4, v9, v5

    .line 132
    .local v4, "start":I
    sub-int v5, v3, v1

    shl-int v0, v9, v5

    .line 133
    .local v0, "end":I
    move v2, v4

    .local v2, "j":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 134
    sget-object v5, LSevenZip/Compression/RangeCoder/Encoder;->ProbPrices:[I

    shl-int/lit8 v6, v1, 0x6

    sub-int v7, v0, v2

    shl-int/lit8 v7, v7, 0x6

    sub-int v8, v3, v1

    add-int/lit8 v8, v8, -0x1

    ushr-int/2addr v7, v8

    add-int/2addr v6, v7

    aput v6, v5, v2

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 129
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 137
    .end local v0    # "end":I
    .end local v2    # "j":I
    .end local v4    # "start":I
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetPrice(II)I
    .locals 3
    .param p0, "Prob"    # I
    .param p1, "symbol"    # I

    .prologue
    .line 141
    sget-object v0, LSevenZip/Compression/RangeCoder/Encoder;->ProbPrices:[I

    sub-int v1, p0, p1

    neg-int v2, p1

    xor-int/2addr v1, v2

    and-int/lit16 v1, v1, 0x7ff

    ushr-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public static GetPrice0(I)I
    .locals 2
    .param p0, "Prob"    # I

    .prologue
    .line 145
    sget-object v0, LSevenZip/Compression/RangeCoder/Encoder;->ProbPrices:[I

    ushr-int/lit8 v1, p0, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public static GetPrice1(I)I
    .locals 2
    .param p0, "Prob"    # I

    .prologue
    .line 149
    sget-object v0, LSevenZip/Compression/RangeCoder/Encoder;->ProbPrices:[I

    rsub-int v1, p0, 0x800

    ushr-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public static InitBitModels([S)V
    .locals 2
    .param p0, "probs"    # [S

    .prologue
    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 99
    const/16 v1, 0x400

    aput-short v1, p0, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public Encode([SII)V
    .locals 8
    .param p1, "probs"    # [S
    .param p2, "index"    # I
    .param p3, "symbol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    aget-short v1, p1, p2

    .line 105
    .local v1, "prob":I
    iget v2, p0, LSevenZip/Compression/RangeCoder/Encoder;->Range:I

    ushr-int/lit8 v2, v2, 0xb

    mul-int v0, v2, v1

    .line 106
    .local v0, "newBound":I
    if-nez p3, :cond_1

    .line 108
    iput v0, p0, LSevenZip/Compression/RangeCoder/Encoder;->Range:I

    .line 109
    rsub-int v2, v1, 0x800

    ushr-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v1

    int-to-short v2, v2

    aput-short v2, p1, p2

    .line 117
    :goto_0
    iget v2, p0, LSevenZip/Compression/RangeCoder/Encoder;->Range:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 119
    iget v2, p0, LSevenZip/Compression/RangeCoder/Encoder;->Range:I

    shl-int/lit8 v2, v2, 0x8

    iput v2, p0, LSevenZip/Compression/RangeCoder/Encoder;->Range:I

    .line 120
    invoke-virtual {p0}, LSevenZip/Compression/RangeCoder/Encoder;->ShiftLow()V

    .line 122
    :cond_0
    return-void

    .line 113
    :cond_1
    iget-wide v2, p0, LSevenZip/Compression/RangeCoder/Encoder;->Low:J

    int-to-long v4, v0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, LSevenZip/Compression/RangeCoder/Encoder;->Low:J

    .line 114
    iget v2, p0, LSevenZip/Compression/RangeCoder/Encoder;->Range:I

    sub-int/2addr v2, v0

    iput v2, p0, LSevenZip/Compression/RangeCoder/Encoder;->Range:I

    .line 115
    ushr-int/lit8 v2, v1, 0x5

    sub-int v2, v1, v2

    int-to-short v2, v2

    aput-short v2, p1, p2

    goto :goto_0
.end method

.method public EncodeDirectBits(II)V
    .locals 6
    .param p1, "v"    # I
    .param p2, "numTotalBits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 74
    iget v1, p0, LSevenZip/Compression/RangeCoder/Encoder;->Range:I

    ushr-int/lit8 v1, v1, 0x1

    iput v1, p0, LSevenZip/Compression/RangeCoder/Encoder;->Range:I

    .line 75
    ushr-int v1, p1, v0

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 76
    iget-wide v2, p0, LSevenZip/Compression/RangeCoder/Encoder;->Low:J

    iget v1, p0, LSevenZip/Compression/RangeCoder/Encoder;->Range:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, LSevenZip/Compression/RangeCoder/Encoder;->Low:J

    .line 77
    :cond_0
    iget v1, p0, LSevenZip/Compression/RangeCoder/Encoder;->Range:I

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 79
    iget v1, p0, LSevenZip/Compression/RangeCoder/Encoder;->Range:I

    shl-int/lit8 v1, v1, 0x8

    iput v1, p0, LSevenZip/Compression/RangeCoder/Encoder;->Range:I

    .line 80
    invoke-virtual {p0}, LSevenZip/Compression/RangeCoder/Encoder;->ShiftLow()V

    .line 72
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 83
    :cond_2
    return-void
.end method

.method public FlushData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 43
    invoke-virtual {p0}, LSevenZip/Compression/RangeCoder/Encoder;->ShiftLow()V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method public FlushStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, LSevenZip/Compression/RangeCoder/Encoder;->Stream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 49
    return-void
.end method

.method public GetProcessedSizeAdd()J
    .locals 4

    .prologue
    .line 88
    iget v0, p0, LSevenZip/Compression/RangeCoder/Encoder;->_cacheSize:I

    int-to-long v0, v0

    iget-wide v2, p0, LSevenZip/Compression/RangeCoder/Encoder;->_position:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public Init()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, LSevenZip/Compression/RangeCoder/Encoder;->_position:J

    .line 34
    iput-wide v0, p0, LSevenZip/Compression/RangeCoder/Encoder;->Low:J

    .line 35
    const/4 v0, -0x1

    iput v0, p0, LSevenZip/Compression/RangeCoder/Encoder;->Range:I

    .line 36
    const/4 v0, 0x1

    iput v0, p0, LSevenZip/Compression/RangeCoder/Encoder;->_cacheSize:I

    .line 37
    const/4 v0, 0x0

    iput v0, p0, LSevenZip/Compression/RangeCoder/Encoder;->_cache:I

    .line 38
    return-void
.end method

.method public ReleaseStream()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, LSevenZip/Compression/RangeCoder/Encoder;->Stream:Ljava/io/OutputStream;

    .line 29
    return-void
.end method

.method public SetStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/OutputStream;

    .prologue
    .line 23
    iput-object p1, p0, LSevenZip/Compression/RangeCoder/Encoder;->Stream:Ljava/io/OutputStream;

    .line 24
    return-void
.end method

.method public ShiftLow()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    iget-wide v2, p0, LSevenZip/Compression/RangeCoder/Encoder;->Low:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    long-to-int v0, v2

    .line 54
    .local v0, "LowHi":I
    if-nez v0, :cond_0

    iget-wide v2, p0, LSevenZip/Compression/RangeCoder/Encoder;->Low:J

    const-wide v4, 0xff000000L

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 56
    :cond_0
    iget-wide v2, p0, LSevenZip/Compression/RangeCoder/Encoder;->_position:J

    iget v4, p0, LSevenZip/Compression/RangeCoder/Encoder;->_cacheSize:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, LSevenZip/Compression/RangeCoder/Encoder;->_position:J

    .line 57
    iget v1, p0, LSevenZip/Compression/RangeCoder/Encoder;->_cache:I

    .line 60
    .local v1, "temp":I
    :cond_1
    iget-object v2, p0, LSevenZip/Compression/RangeCoder/Encoder;->Stream:Ljava/io/OutputStream;

    add-int v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 61
    const/16 v1, 0xff

    .line 63
    iget v2, p0, LSevenZip/Compression/RangeCoder/Encoder;->_cacheSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, LSevenZip/Compression/RangeCoder/Encoder;->_cacheSize:I

    if-nez v2, :cond_1

    .line 64
    iget-wide v2, p0, LSevenZip/Compression/RangeCoder/Encoder;->Low:J

    long-to-int v2, v2

    ushr-int/lit8 v2, v2, 0x18

    iput v2, p0, LSevenZip/Compression/RangeCoder/Encoder;->_cache:I

    .line 66
    .end local v1    # "temp":I
    :cond_2
    iget v2, p0, LSevenZip/Compression/RangeCoder/Encoder;->_cacheSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, LSevenZip/Compression/RangeCoder/Encoder;->_cacheSize:I

    .line 67
    iget-wide v2, p0, LSevenZip/Compression/RangeCoder/Encoder;->Low:J

    const-wide/32 v4, 0xffffff

    and-long/2addr v2, v4

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    iput-wide v2, p0, LSevenZip/Compression/RangeCoder/Encoder;->Low:J

    .line 68
    return-void
.end method
