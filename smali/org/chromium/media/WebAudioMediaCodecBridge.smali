.class Lorg/chromium/media/WebAudioMediaCodecBridge;
.super Ljava/lang/Object;
.source "WebAudioMediaCodecBridge.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "media"
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "WebAudioMediaCodec"

.field static final TIMEOUT_MICROSECONDS:J = 0x1f4L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createTempFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 33
    .local v0, "outputDirectory":Ljava/io/File;
    const-string v2, "webaudio"

    const-string v3, ".dat"

    invoke-static {v2, v3, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 34
    .local v1, "outputFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static decodeAudioFile(Landroid/content/Context;JIJ)Z
    .locals 36
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "nativeMediaCodecBridge"    # J
    .param p3, "inputFD"    # I
    .param p4, "dataSize"    # J
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 44
    const-wide/16 v10, 0x0

    cmp-long v3, p4, v10

    if-ltz v3, :cond_0

    const-wide/32 v10, 0x7fffffff

    cmp-long v3, p4, v10

    if-lez v3, :cond_1

    .line 45
    :cond_0
    const/16 v24, 0x0

    .line 252
    :goto_0
    return v24

    .line 47
    :cond_1
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    .line 50
    .local v2, "extractor":Landroid/media/MediaExtractor;
    invoke-static/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v28

    .line 52
    .local v28, "encodedFD":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    if-gtz v3, :cond_2

    .line 60
    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 61
    const/16 v24, 0x0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v27

    .line 54
    .local v27, "e":Ljava/lang/Exception;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 56
    const/16 v24, 0x0

    goto :goto_0

    .line 64
    .end local v27    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v29

    .line 67
    .local v29, "format":Landroid/media/MediaFormat;
    const-string v3, "channel-count"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v12

    .line 72
    .local v12, "inputChannelCount":I
    move/from16 v21, v12

    .line 74
    .local v21, "outputChannelCount":I
    const-string v3, "sample-rate"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v13

    .line 75
    .local v13, "sampleRate":I
    const-string v3, "mime"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 77
    .local v31, "mime":Ljava/lang/String;
    const-wide/16 v14, 0x0

    .line 78
    .local v14, "durationMicroseconds":J
    const-string v3, "durationUs"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 80
    :try_start_1
    const-string v3, "durationUs"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v14

    .line 90
    :cond_3
    :goto_1
    const-wide/32 v10, 0x7fffffff

    cmp-long v3, v14, v10

    if-lez v3, :cond_4

    .line 91
    const-wide/16 v14, 0x0

    .line 94
    :cond_4
    const-string v3, "WebAudioMediaCodec"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Initial: Tracks: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " Format: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :try_start_2
    invoke-static/range {v31 .. v31}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 107
    .local v4, "codec":Landroid/media/MediaCodec;
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    :try_start_3
    move-object/from16 v0, v29

    invoke-virtual {v4, v0, v3, v6, v10}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 113
    :try_start_4
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 121
    :try_start_5
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v22

    .line 128
    .local v22, "codecInputBuffers":[Ljava/nio/ByteBuffer;
    :try_start_6
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v23

    .line 135
    .local v23, "codecOutputBuffers":[Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 137
    const/16 v34, 0x0

    .line 138
    .local v34, "sawInputEOS":Z
    const/16 v35, 0x0

    .line 139
    .local v35, "sawOutputEOS":Z
    const/16 v25, 0x0

    .line 140
    .local v25, "destinationInitialized":Z
    const/16 v24, 0x1

    .line 143
    .local v24, "decodedSuccessfully":Z
    :cond_5
    :goto_2
    if-nez v35, :cond_9

    .line 144
    if-nez v34, :cond_6

    .line 148
    const-wide/16 v10, 0x1f4

    :try_start_7
    invoke-virtual {v4, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-result v5

    .line 155
    .local v5, "inputBufIndex":I
    if-ltz v5, :cond_6

    .line 156
    aget-object v26, v22, v5

    .line 157
    .local v26, "dstBuf":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    .line 158
    .local v7, "sampleSize":I
    const-wide/16 v8, 0x0

    .line 160
    .local v8, "presentationTimeMicroSec":J
    if-gez v7, :cond_a

    .line 161
    const/16 v34, 0x1

    .line 162
    const/4 v7, 0x0

    .line 168
    :goto_3
    const/4 v6, 0x0

    if-eqz v34, :cond_b

    const/4 v10, 0x4

    :goto_4
    :try_start_8
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 184
    if-nez v34, :cond_6

    .line 185
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    .line 191
    .end local v5    # "inputBufIndex":I
    .end local v7    # "sampleSize":I
    .end local v8    # "presentationTimeMicroSec":J
    .end local v26    # "dstBuf":Ljava/nio/ByteBuffer;
    :cond_6
    new-instance v30, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v30 .. v30}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 195
    .local v30, "info":Landroid/media/MediaCodec$BufferInfo;
    const-wide/16 v10, 0x1f4

    :try_start_9
    move-object/from16 v0, v30

    invoke-virtual {v4, v0, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    move-result v33

    .line 205
    .local v33, "outputBufIndex":I
    if-ltz v33, :cond_d

    .line 206
    aget-object v18, v23, v33

    .line 208
    .local v18, "buf":Ljava/nio/ByteBuffer;
    if-nez v25, :cond_7

    .line 213
    const-string v3, "WebAudioMediaCodec"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Final:  Rate: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " Channels: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " Mime: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " Duration: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " microsec"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v10, p1

    .line 218
    invoke-static/range {v10 .. v15}, Lorg/chromium/media/WebAudioMediaCodecBridge;->nativeInitializeDestination(JIIJ)V

    .line 222
    const/16 v25, 0x1

    .line 225
    :cond_7
    if-eqz v25, :cond_8

    move-object/from16 v0, v30

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v3, :cond_8

    .line 226
    move-object/from16 v0, v30

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v19, v0

    move-wide/from16 v16, p1

    move/from16 v20, v12

    invoke-static/range {v16 .. v21}, Lorg/chromium/media/WebAudioMediaCodecBridge;->nativeOnChunkDecoded(JLjava/nio/ByteBuffer;III)V

    .line 230
    :cond_8
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 231
    const/4 v3, 0x0

    move/from16 v0, v33

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 233
    move-object/from16 v0, v30

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    .line 234
    const/16 v35, 0x1

    goto/16 :goto_2

    .line 81
    .end local v4    # "codec":Landroid/media/MediaCodec;
    .end local v18    # "buf":Ljava/nio/ByteBuffer;
    .end local v22    # "codecInputBuffers":[Ljava/nio/ByteBuffer;
    .end local v23    # "codecOutputBuffers":[Ljava/nio/ByteBuffer;
    .end local v24    # "decodedSuccessfully":Z
    .end local v25    # "destinationInitialized":Z
    .end local v30    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v33    # "outputBufIndex":I
    .end local v34    # "sawInputEOS":Z
    .end local v35    # "sawOutputEOS":Z
    :catch_1
    move-exception v27

    .line 82
    .restart local v27    # "e":Ljava/lang/Exception;
    const-string v3, "WebAudioMediaCodec"

    const-string v6, "Cannot get duration"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 100
    .end local v27    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v27

    .line 101
    .restart local v27    # "e":Ljava/lang/Exception;
    const-string v3, "WebAudioMediaCodec"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to create MediaCodec for mime type: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 103
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 108
    .end local v27    # "e":Ljava/lang/Exception;
    .restart local v4    # "codec":Landroid/media/MediaCodec;
    :catch_3
    move-exception v27

    .line 109
    .restart local v27    # "e":Ljava/lang/Exception;
    const-string v3, "WebAudioMediaCodec"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to configure codec for format "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-static {v3, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 114
    .end local v27    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v27

    .line 115
    .restart local v27    # "e":Ljava/lang/Exception;
    const-string v3, "WebAudioMediaCodec"

    const-string v6, "Unable to start()"

    move-object/from16 v0, v27

    invoke-static {v3, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 122
    .end local v27    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v27

    .line 123
    .restart local v27    # "e":Ljava/lang/Exception;
    const-string v3, "WebAudioMediaCodec"

    const-string v6, "getInputBuffers() failed"

    move-object/from16 v0, v27

    invoke-static {v3, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 129
    .end local v27    # "e":Ljava/lang/Exception;
    .restart local v22    # "codecInputBuffers":[Ljava/nio/ByteBuffer;
    :catch_6
    move-exception v27

    .line 130
    .restart local v27    # "e":Ljava/lang/Exception;
    const-string v3, "WebAudioMediaCodec"

    const-string v6, "getOutputBuffers() failed"

    move-object/from16 v0, v27

    invoke-static {v3, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 149
    .end local v27    # "e":Ljava/lang/Exception;
    .restart local v23    # "codecOutputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v24    # "decodedSuccessfully":Z
    .restart local v25    # "destinationInitialized":Z
    .restart local v34    # "sawInputEOS":Z
    .restart local v35    # "sawOutputEOS":Z
    :catch_7
    move-exception v27

    .line 150
    .restart local v27    # "e":Ljava/lang/Exception;
    const-string v3, "WebAudioMediaCodec"

    const-string v6, "dequeueInputBuffer(500) failed."

    move-object/from16 v0, v27

    invoke-static {v3, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    const/16 v24, 0x0

    .line 246
    .end local v27    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_5
    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 248
    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    .line 249
    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    .line 250
    const/4 v4, 0x0

    .line 252
    goto/16 :goto_0

    .line 164
    .restart local v5    # "inputBufIndex":I
    .restart local v7    # "sampleSize":I
    .restart local v8    # "presentationTimeMicroSec":J
    .restart local v26    # "dstBuf":Ljava/nio/ByteBuffer;
    :cond_a
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    goto/16 :goto_3

    .line 168
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 173
    :catch_8
    move-exception v27

    .line 174
    .restart local v27    # "e":Ljava/lang/Exception;
    const-string v6, "WebAudioMediaCodec"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "queueInputBuffer("

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ", 0, "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ", "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ", "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v34, :cond_c

    const/4 v3, 0x4

    :goto_6
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ") failed."

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-static {v6, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    const/16 v24, 0x0

    .line 181
    goto :goto_5

    .line 174
    :cond_c
    const/4 v3, 0x0

    goto :goto_6

    .line 196
    .end local v5    # "inputBufIndex":I
    .end local v7    # "sampleSize":I
    .end local v8    # "presentationTimeMicroSec":J
    .end local v26    # "dstBuf":Ljava/nio/ByteBuffer;
    .end local v27    # "e":Ljava/lang/Exception;
    .restart local v30    # "info":Landroid/media/MediaCodec$BufferInfo;
    :catch_9
    move-exception v27

    .line 197
    .restart local v27    # "e":Ljava/lang/Exception;
    const-string v3, "WebAudioMediaCodec"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dequeueOutputBuffer("

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ", "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v10, 0x1f4

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ") failed"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    const/16 v24, 0x0

    .line 202
    goto/16 :goto_5

    .line 236
    .end local v27    # "e":Ljava/lang/Exception;
    .restart local v33    # "outputBufIndex":I
    :cond_d
    const/4 v3, -0x3

    move/from16 v0, v33

    if-ne v0, v3, :cond_e

    .line 237
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v23

    goto/16 :goto_2

    .line 238
    :cond_e
    const/4 v3, -0x2

    move/from16 v0, v33

    if-ne v0, v3, :cond_5

    .line 239
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v32

    .line 240
    .local v32, "newFormat":Landroid/media/MediaFormat;
    const-string v3, "channel-count"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v21

    .line 241
    const-string v3, "sample-rate"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v13

    .line 242
    const-string v3, "WebAudioMediaCodec"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "output format changed to "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private static native nativeInitializeDestination(JIIJ)V
.end method

.method private static native nativeOnChunkDecoded(JLjava/nio/ByteBuffer;III)V
.end method
