.class Lorg/xwalk/core/internal/XWalkSettings$1;
.super Ljava/lang/Object;
.source "XWalkSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/internal/XWalkSettings;->setUserAgentString(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/internal/XWalkSettings;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkSettings;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettings$1;->this$0:Lorg/xwalk/core/internal/XWalkSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 617
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings$1;->this$0:Lorg/xwalk/core/internal/XWalkSettings;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettings;->access$400(Lorg/xwalk/core/internal/XWalkSettings;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettings$1;->this$0:Lorg/xwalk/core/internal/XWalkSettings;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettings$1;->this$0:Lorg/xwalk/core/internal/XWalkSettings;

    invoke-static {v1}, Lorg/xwalk/core/internal/XWalkSettings;->access$400(Lorg/xwalk/core/internal/XWalkSettings;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/xwalk/core/internal/XWalkSettings;->access$700(Lorg/xwalk/core/internal/XWalkSettings;J)V

    .line 620
    :cond_0
    return-void
.end method
