.class Lorg/xwalk/core/XWalkUpdater$XWalkLibraryListener$1;
.super Ljava/lang/Object;
.source "XWalkUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/XWalkUpdater$XWalkLibraryListener;->onDownloadStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/xwalk/core/XWalkUpdater$XWalkLibraryListener;


# direct methods
.method constructor <init>(Lorg/xwalk/core/XWalkUpdater$XWalkLibraryListener;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lorg/xwalk/core/XWalkUpdater$XWalkLibraryListener$1;->this$1:Lorg/xwalk/core/XWalkUpdater$XWalkLibraryListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 227
    invoke-static {}, Lorg/xwalk/core/XWalkLibraryLoader;->cancelDownload()Z

    .line 228
    return-void
.end method
