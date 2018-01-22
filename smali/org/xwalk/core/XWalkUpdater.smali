.class public Lorg/xwalk/core/XWalkUpdater;
.super Ljava/lang/Object;
.source "XWalkUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/XWalkUpdater$XWalkLibraryListener;,
        Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XWalkActivity"

.field private static final XWALK_APK_MARKET_URL:Ljava/lang/String; = "market://details?id=org.xwalk.core"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCancelCommand:Ljava/lang/Runnable;

.field private mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

.field private mDownloadCommand:Ljava/lang/Runnable;

.field private mUpdateListener:Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;

.field private mXWalkApkUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;Landroid/app/Activity;)V
    .locals 1
    .param p1, "listener"    # Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 114
    new-instance v0, Lorg/xwalk/core/XWalkDialogManager;

    invoke-direct {v0, p2}, Lorg/xwalk/core/XWalkDialogManager;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/xwalk/core/XWalkUpdater;-><init>(Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;Landroid/app/Activity;Lorg/xwalk/core/XWalkDialogManager;)V

    .line 115
    return-void
.end method

.method constructor <init>(Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;Landroid/app/Activity;Lorg/xwalk/core/XWalkDialogManager;)V
    .locals 1
    .param p1, "listener"    # Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "dialogManager"    # Lorg/xwalk/core/XWalkDialogManager;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lorg/xwalk/core/XWalkUpdater;->mUpdateListener:Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;

    .line 120
    iput-object p2, p0, Lorg/xwalk/core/XWalkUpdater;->mActivity:Landroid/app/Activity;

    .line 121
    iput-object p3, p0, Lorg/xwalk/core/XWalkUpdater;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    .line 123
    new-instance v0, Lorg/xwalk/core/XWalkUpdater$1;

    invoke-direct {v0, p0}, Lorg/xwalk/core/XWalkUpdater$1;-><init>(Lorg/xwalk/core/XWalkUpdater;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mDownloadCommand:Ljava/lang/Runnable;

    .line 129
    new-instance v0, Lorg/xwalk/core/XWalkUpdater$2;

    invoke-direct {v0, p0}, Lorg/xwalk/core/XWalkUpdater$2;-><init>(Lorg/xwalk/core/XWalkUpdater;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mCancelCommand:Ljava/lang/Runnable;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lorg/xwalk/core/XWalkUpdater;)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/XWalkUpdater;

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/xwalk/core/XWalkUpdater;->downloadXWalkApk()V

    return-void
.end method

.method static synthetic access$100(Lorg/xwalk/core/XWalkUpdater;)Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkUpdater;

    .prologue
    .line 85
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mUpdateListener:Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;

    return-object v0
.end method

.method static synthetic access$300(Lorg/xwalk/core/XWalkUpdater;)Lorg/xwalk/core/XWalkDialogManager;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkUpdater;

    .prologue
    .line 85
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    return-object v0
.end method

.method static synthetic access$400(Lorg/xwalk/core/XWalkUpdater;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkUpdater;

    .prologue
    .line 85
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lorg/xwalk/core/XWalkUpdater;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkUpdater;

    .prologue
    .line 85
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mCancelCommand:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lorg/xwalk/core/XWalkUpdater;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkUpdater;

    .prologue
    .line 85
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mDownloadCommand:Ljava/lang/Runnable;

    return-object v0
.end method

.method private downloadXWalkApk()V
    .locals 5

    .prologue
    .line 184
    invoke-direct {p0}, Lorg/xwalk/core/XWalkUpdater;->getXWalkApkUrl()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "downloadUrl":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 186
    new-instance v3, Lorg/xwalk/core/XWalkUpdater$XWalkLibraryListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/xwalk/core/XWalkUpdater$XWalkLibraryListener;-><init>(Lorg/xwalk/core/XWalkUpdater;Lorg/xwalk/core/XWalkUpdater$1;)V

    iget-object v4, p0, Lorg/xwalk/core/XWalkUpdater;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v4, v0}, Lorg/xwalk/core/XWalkLibraryLoader;->startDownload(Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    :goto_0
    return-void

    .line 191
    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lorg/xwalk/core/XWalkUpdater;->mActivity:Landroid/app/Activity;

    const-string v4, "market://details?id=org.xwalk.core"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 194
    const-string v3, "XWalkActivity"

    const-string v4, "Market opened"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v3, p0, Lorg/xwalk/core/XWalkUpdater;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    invoke-virtual {v3}, Lorg/xwalk/core/XWalkDialogManager;->dismissDialog()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "XWalkActivity"

    const-string v4, "Market open failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v3, p0, Lorg/xwalk/core/XWalkUpdater;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    iget-object v4, p0, Lorg/xwalk/core/XWalkUpdater;->mCancelCommand:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lorg/xwalk/core/XWalkDialogManager;->showMarketOpenError(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private getXWalkApkUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 203
    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater;->mXWalkApkUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater;->mXWalkApkUrl:Ljava/lang/String;

    .line 218
    :goto_0
    return-object v2

    .line 209
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 210
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 212
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "xwalk_apk_url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/XWalkUpdater;->mXWalkApkUrl:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_1
    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater;->mXWalkApkUrl:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    iput-object v2, p0, Lorg/xwalk/core/XWalkUpdater;->mXWalkApkUrl:Ljava/lang/String;

    .line 217
    :cond_1
    const-string v2, "XWalkActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crosswalk APK download URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/xwalk/core/XWalkUpdater;->mXWalkApkUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater;->mXWalkApkUrl:Ljava/lang/String;

    goto :goto_0

    .line 213
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public dismissDialog()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkDialogManager;->isShowingDialog()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkDialogManager;->dismissDialog()V

    .line 170
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setXWalkApkUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lorg/xwalk/core/XWalkUpdater;->mXWalkApkUrl:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public updateXWalkRuntime()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 151
    iget-object v3, p0, Lorg/xwalk/core/XWalkUpdater;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    invoke-virtual {v3}, Lorg/xwalk/core/XWalkDialogManager;->isShowingDialog()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v1

    .line 153
    :cond_1
    invoke-static {}, Lorg/xwalk/core/XWalkLibraryLoader;->getLibraryStatus()I

    move-result v0

    .line 154
    .local v0, "status":I
    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    .line 157
    const-string v1, "XWalkActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update the Crosswalk runtime with status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v1, p0, Lorg/xwalk/core/XWalkUpdater;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    iget-object v3, p0, Lorg/xwalk/core/XWalkUpdater;->mCancelCommand:Ljava/lang/Runnable;

    iget-object v4, p0, Lorg/xwalk/core/XWalkUpdater;->mDownloadCommand:Ljava/lang/Runnable;

    invoke-virtual {v1, v0, v3, v4}, Lorg/xwalk/core/XWalkDialogManager;->showInitializationError(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    move v1, v2

    .line 159
    goto :goto_0
.end method
