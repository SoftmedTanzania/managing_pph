.class public Lorg/chromium/media/VideoCapture$CaptureFormat;
.super Ljava/lang/Object;
.source "VideoCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CaptureFormat"
.end annotation


# instance fields
.field final mFramerate:I

.field mHeight:I

.field final mPixelFormat:I

.field mWidth:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "framerate"    # I
    .param p4, "pixelformat"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lorg/chromium/media/VideoCapture$CaptureFormat;->mWidth:I

    .line 32
    iput p2, p0, Lorg/chromium/media/VideoCapture$CaptureFormat;->mHeight:I

    .line 33
    iput p3, p0, Lorg/chromium/media/VideoCapture$CaptureFormat;->mFramerate:I

    .line 34
    iput p4, p0, Lorg/chromium/media/VideoCapture$CaptureFormat;->mPixelFormat:I

    .line 35
    return-void
.end method


# virtual methods
.method public getFramerate()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lorg/chromium/media/VideoCapture$CaptureFormat;->mFramerate:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lorg/chromium/media/VideoCapture$CaptureFormat;->mHeight:I

    return v0
.end method

.method public getPixelFormat()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/chromium/media/VideoCapture$CaptureFormat;->mPixelFormat:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lorg/chromium/media/VideoCapture$CaptureFormat;->mWidth:I

    return v0
.end method
