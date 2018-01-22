.class Lorg/chromium/content/browser/ContentViewCore$9;
.super Lorg/chromium/content_public/browser/AccessibilitySnapshotCallback;
.source "ContentViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ContentViewCore;->onProvideVirtualStructure(Landroid/view/ViewStructure;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ContentViewCore;

.field final synthetic val$viewRoot:Landroid/view/ViewStructure;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentViewCore;Landroid/view/ViewStructure;)V
    .locals 0

    .prologue
    .line 2980
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore$9;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    iput-object p2, p0, Lorg/chromium/content/browser/ContentViewCore$9;->val$viewRoot:Landroid/view/ViewStructure;

    invoke-direct {p0}, Lorg/chromium/content_public/browser/AccessibilitySnapshotCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilitySnapshot(Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;)V
    .locals 3
    .param p1, "root"    # Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;

    .prologue
    const/4 v2, 0x0

    .line 2983
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$9;->val$viewRoot:Landroid/view/ViewStructure;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    .line 2984
    if-nez p1, :cond_0

    .line 2985
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$9;->val$viewRoot:Landroid/view/ViewStructure;

    invoke-virtual {v0}, Landroid/view/ViewStructure;->asyncCommit()V

    .line 2989
    :goto_0
    return-void

    .line 2988
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$9;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$9;->val$viewRoot:Landroid/view/ViewStructure;

    invoke-static {v0, v1, p1, v2, v2}, Lorg/chromium/content/browser/ContentViewCore;->access$2700(Lorg/chromium/content/browser/ContentViewCore;Landroid/view/ViewStructure;Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;II)V

    goto :goto_0
.end method
