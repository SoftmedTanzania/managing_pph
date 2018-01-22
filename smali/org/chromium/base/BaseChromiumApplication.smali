.class public Lorg/chromium/base/BaseChromiumApplication;
.super Landroid/app/Application;
.source "BaseChromiumApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static initCommandLine(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/BaseChromiumApplication;

    invoke-virtual {v0}, Lorg/chromium/base/BaseChromiumApplication;->initCommandLine()V

    .line 29
    return-void
.end method


# virtual methods
.method public initCommandLine()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 16
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatusManager;->init(Landroid/app/Application;)V

    .line 17
    return-void
.end method
