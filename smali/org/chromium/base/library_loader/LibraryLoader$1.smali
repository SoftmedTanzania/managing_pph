.class Lorg/chromium/base/library_loader/LibraryLoader$1;
.super Landroid/os/AsyncTask;
.source "LibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/library_loader/LibraryLoader;->asyncPrefetchLibrariesToMemory(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/base/library_loader/LibraryLoader;


# direct methods
.method constructor <init>(Lorg/chromium/base/library_loader/LibraryLoader;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lorg/chromium/base/library_loader/LibraryLoader$1;->this$0:Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 208
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/base/library_loader/LibraryLoader$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 211
    const-string v1, "LibraryLoader.asyncPrefetchLibrariesToMemory"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->access$000()Z

    move-result v0

    .line 213
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 214
    const-string v1, "LibraryLoader"

    const-string v2, "Forking a process to prefetch the native library failed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    const-string v1, "LibraryLoader.PrefetchStatus"

    invoke-static {v1, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 217
    const-string v1, "LibraryLoader.asyncPrefetchLibrariesToMemory"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 218
    const/4 v1, 0x0

    return-object v1
.end method
