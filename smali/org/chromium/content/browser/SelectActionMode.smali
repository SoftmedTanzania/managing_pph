.class public Lorg/chromium/content/browser/SelectActionMode;
.super Ljava/lang/Object;
.source "SelectActionMode.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "SelectActionMode"


# instance fields
.field protected final mActionMode:Landroid/view/ActionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lorg/chromium/content/browser/SelectActionMode;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/SelectActionMode;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "actionMode"    # Landroid/view/ActionMode;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-boolean v0, Lorg/chromium/content/browser/SelectActionMode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 25
    :cond_0
    iput-object p1, p0, Lorg/chromium/content/browser/SelectActionMode;->mActionMode:Landroid/view/ActionMode;

    .line 26
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/chromium/content/browser/SelectActionMode;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 33
    return-void
.end method

.method public invalidate()V
    .locals 3

    .prologue
    .line 41
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/SelectActionMode;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "SelectActionMode"

    const-string v2, "Ignoring NPE from ActionMode.invalidate() as workaround for L"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public invalidateContentRect()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method
