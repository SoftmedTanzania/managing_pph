.class Lorg/chromium/ui/base/WindowAndroid$2;
.super Ljava/lang/Object;
.source "WindowAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/ui/base/WindowAndroid;->requestFileAccess(Lorg/chromium/ui/base/WindowAndroid$FileAccessCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/base/WindowAndroid;

.field final synthetic val$callback:Lorg/chromium/ui/base/WindowAndroid$FileAccessCallback;


# direct methods
.method constructor <init>(Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/ui/base/WindowAndroid$FileAccessCallback;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lorg/chromium/ui/base/WindowAndroid$2;->this$0:Lorg/chromium/ui/base/WindowAndroid;

    iput-object p2, p0, Lorg/chromium/ui/base/WindowAndroid$2;->val$callback:Lorg/chromium/ui/base/WindowAndroid$FileAccessCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid$2;->val$callback:Lorg/chromium/ui/base/WindowAndroid$FileAccessCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/chromium/ui/base/WindowAndroid$FileAccessCallback;->onFileAccessResult(Z)V

    .line 275
    return-void
.end method
