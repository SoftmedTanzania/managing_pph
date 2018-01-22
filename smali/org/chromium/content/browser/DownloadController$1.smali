.class Lorg/chromium/content/browser/DownloadController$1;
.super Ljava/lang/Object;
.source "DownloadController.java"

# interfaces
.implements Lorg/chromium/ui/base/WindowAndroid$FileAccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/DownloadController;->requestFileAccess(Lorg/chromium/content/browser/ContentViewCore;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/DownloadController;

.field final synthetic val$callbackId:J


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/DownloadController;J)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lorg/chromium/content/browser/DownloadController$1;->this$0:Lorg/chromium/content/browser/DownloadController;

    iput-wide p2, p0, Lorg/chromium/content/browser/DownloadController$1;->val$callbackId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileAccessResult(Z)V
    .locals 4
    .param p1, "granted"    # Z

    .prologue
    .line 188
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadController$1;->this$0:Lorg/chromium/content/browser/DownloadController;

    iget-wide v2, p0, Lorg/chromium/content/browser/DownloadController$1;->val$callbackId:J

    invoke-static {v0, v2, v3, p1}, Lorg/chromium/content/browser/DownloadController;->access$000(Lorg/chromium/content/browser/DownloadController;JZ)V

    .line 189
    return-void
.end method
