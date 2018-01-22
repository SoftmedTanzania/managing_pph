.class Lorg/xwalk/core/XWalkDialogManager;
.super Ljava/lang/Object;
.source "XWalkDialogManager.java"


# static fields
.field private static final PACKAGE_RE:Ljava/lang/String; = "[a-z]+\\.[a-z0-9]+\\.[a-z0-9]+.*"

.field private static final TAG:Ljava/lang/String; = "XWalkLib"


# instance fields
.field private mActiveDialog:Landroid/app/Dialog;

.field private mApplicationName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private buildAlertDialog()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 155
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 156
    .local v0, "dialog":Landroid/app/AlertDialog;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 157
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 158
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 159
    return-object v0
.end method

.method private buildProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 146
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 147
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 148
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 149
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 150
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 151
    return-object v0
.end method

.method private replaceApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v2, p0, Lorg/xwalk/core/XWalkDialogManager;->mApplicationName:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 185
    :try_start_0
    iget-object v2, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 186
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 188
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lorg/xwalk/core/XWalkDialogManager;->mApplicationName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    iget-object v2, p0, Lorg/xwalk/core/XWalkDialogManager;->mApplicationName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/xwalk/core/XWalkDialogManager;->mApplicationName:Ljava/lang/String;

    const-string v3, "[a-z]+\\.[a-z0-9]+\\.[a-z0-9]+.*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    :cond_0
    const-string v2, "this application"

    iput-object v2, p0, Lorg/xwalk/core/XWalkDialogManager;->mApplicationName:Ljava/lang/String;

    .line 195
    :cond_1
    const-string v2, "XWalkLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crosswalk application name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/xwalk/core/XWalkDialogManager;->mApplicationName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_2
    const-string v2, "APP_NAME"

    iget-object v3, p0, Lorg/xwalk/core/XWalkDialogManager;->mApplicationName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 199
    const-string v2, "this"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 200
    const-string v2, "this"

    const-string v3, "This"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 202
    :cond_3
    return-object p1

    .line 189
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private setNegativeButton(Landroid/app/AlertDialog;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/AlertDialog;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 173
    const/4 v0, -0x2

    new-instance v1, Lorg/xwalk/core/XWalkDialogManager$2;

    invoke-direct {v1, p0, p3}, Lorg/xwalk/core/XWalkDialogManager$2;-><init>(Lorg/xwalk/core/XWalkDialogManager;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0, p2, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 180
    return-void
.end method

.method private setPositiveButton(Landroid/app/AlertDialog;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/AlertDialog;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 163
    const/4 v0, -0x1

    new-instance v1, Lorg/xwalk/core/XWalkDialogManager$1;

    invoke-direct {v1, p0, p3}, Lorg/xwalk/core/XWalkDialogManager$1;-><init>(Lorg/xwalk/core/XWalkDialogManager;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0, p2, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 170
    return-void
.end method

.method private showDialog(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 34
    iput-object p1, p0, Lorg/xwalk/core/XWalkDialogManager;->mActiveDialog:Landroid/app/Dialog;

    .line 35
    iget-object v0, p0, Lorg/xwalk/core/XWalkDialogManager;->mActiveDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 36
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/xwalk/core/XWalkDialogManager;->mActiveDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xwalk/core/XWalkDialogManager;->mActiveDialog:Landroid/app/Dialog;

    .line 41
    return-void
.end method

.method public isShowingDialog()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/xwalk/core/XWalkDialogManager;->mActiveDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/XWalkDialogManager;->mActiveDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingProgressDialog()Z
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/xwalk/core/XWalkDialogManager;->isShowingDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/XWalkDialogManager;->mActiveDialog:Landroid/app/Dialog;

    instance-of v0, v0, Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setProgress(II)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "max"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lorg/xwalk/core/XWalkDialogManager;->mActiveDialog:Landroid/app/Dialog;

    check-cast v0, Landroid/app/ProgressDialog;

    .line 53
    .local v0, "dialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 54
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 55
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 56
    return-void
.end method

.method public showDecompressProgress(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "cancelCommand"    # Ljava/lang/Runnable;

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/xwalk/core/XWalkDialogManager;->buildProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    .line 108
    .local v0, "dialog":Landroid/app/ProgressDialog;
    iget-object v1, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    sget v2, Lorg/xwalk/core/R$string;->crosswalk_install_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v1, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    sget v2, Lorg/xwalk/core/R$string;->decompression_progress_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v1, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    sget v2, Lorg/xwalk/core/R$string;->xwalk_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lorg/xwalk/core/XWalkDialogManager;->setNegativeButton(Landroid/app/AlertDialog;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 111
    invoke-direct {p0, v0}, Lorg/xwalk/core/XWalkDialogManager;->showDialog(Landroid/app/Dialog;)V

    .line 112
    return-void
.end method

.method public showDownloadError(IILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "error"    # I
    .param p3, "cancelCommand"    # Ljava/lang/Runnable;
    .param p4, "downloadCommand"    # Ljava/lang/Runnable;

    .prologue
    .line 126
    iget-object v2, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    sget v3, Lorg/xwalk/core/R$string;->download_failed_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "message":Ljava/lang/String;
    const/16 v2, 0x10

    if-ne p1, v2, :cond_2

    .line 128
    const/16 v2, 0x3ef

    if-ne p2, v2, :cond_1

    .line 129
    iget-object v2, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    sget v3, Lorg/xwalk/core/R$string;->download_failed_device_not_found:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/xwalk/core/XWalkDialogManager;->buildAlertDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 138
    .local v0, "dialog":Landroid/app/AlertDialog;
    iget-object v2, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    sget v3, Lorg/xwalk/core/R$string;->crosswalk_install_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v2, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    sget v3, Lorg/xwalk/core/R$string;->xwalk_retry:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p4}, Lorg/xwalk/core/XWalkDialogManager;->setPositiveButton(Landroid/app/AlertDialog;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 141
    iget-object v2, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    sget v3, Lorg/xwalk/core/R$string;->xwalk_cancel:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p3}, Lorg/xwalk/core/XWalkDialogManager;->setNegativeButton(Landroid/app/AlertDialog;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 142
    invoke-direct {p0, v0}, Lorg/xwalk/core/XWalkDialogManager;->showDialog(Landroid/app/Dialog;)V

    .line 143
    return-void

    .line 130
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_1
    const/16 v2, 0x3ee

    if-ne p2, v2, :cond_0

    .line 131
    iget-object v2, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    sget v3, Lorg/xwalk/core/R$string;->download_failed_insufficient_space:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 133
    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 134
    iget-object v2, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    sget v3, Lorg/xwalk/core/R$string;->download_failed_time_out:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public showDownloadProgress(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "cancelCommand"    # Ljava/lang/Runnable;

    .prologue
    .line 115
    invoke-direct {p0}, Lorg/xwalk/core/XWalkDialogManager;->buildProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    .line 116
    .local v0, "dialog":Landroid/app/ProgressDialog;
    iget-object v1, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    sget v2, Lorg/xwalk/core/R$string;->crosswalk_install_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    sget v2, Lorg/xwalk/core/R$string;->download_progress_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 118
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 119
    iget-object v1, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    sget v2, Lorg/xwalk/core/R$string;->xwalk_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lorg/xwalk/core/XWalkDialogManager;->setNegativeButton(Landroid/app/AlertDialog;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 120
    invoke-direct {p0, v0}, Lorg/xwalk/core/XWalkDialogManager;->showDialog(Landroid/app/Dialog;)V

    .line 122
    return-void
.end method

.method public showInitializationError(ILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "cancelCommand"    # Ljava/lang/Runnable;
    .param p3, "downloadCommand"    # Ljava/lang/Runnable;

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/xwalk/core/XWalkDialogManager;->buildAlertDialog()Landroid/app/AlertDialog;

    move-result-object v1

    .line 61
    .local v1, "dialog":Landroid/app/AlertDialog;
    iget-object v3, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    sget v4, Lorg/xwalk/core/R$string;->xwalk_close:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "cancelText":Ljava/lang/String;
    iget-object v3, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    sget v4, Lorg/xwalk/core/R$string;->xwalk_continue:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "downloadText":Ljava/lang/String;
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 65
    iget-object v3, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    sget v4, Lorg/xwalk/core/R$string;->startup_not_found_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v3, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    sget v4, Lorg/xwalk/core/R$string;->startup_not_found_message:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/xwalk/core/XWalkDialogManager;->replaceApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 68
    invoke-direct {p0, v1, v2, p3}, Lorg/xwalk/core/XWalkDialogManager;->setPositiveButton(Landroid/app/AlertDialog;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 69
    invoke-direct {p0, v1, v0, p2}, Lorg/xwalk/core/XWalkDialogManager;->setNegativeButton(Landroid/app/AlertDialog;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 95
    :goto_0
    invoke-direct {p0, v1}, Lorg/xwalk/core/XWalkDialogManager;->showDialog(Landroid/app/Dialog;)V

    .line 96
    return-void

    .line 70
    :cond_0
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    .line 71
    iget-object v3, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    sget v4, Lorg/xwalk/core/R$string;->startup_architecture_mismatch_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v3, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    sget v4, Lorg/xwalk/core/R$string;->startup_architecture_mismatch_message:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/xwalk/core/XWalkDialogManager;->replaceApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 74
    invoke-direct {p0, v1, v2, p3}, Lorg/xwalk/core/XWalkDialogManager;->setPositiveButton(Landroid/app/AlertDialog;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 75
    invoke-direct {p0, v1, v0, p2}, Lorg/xwalk/core/XWalkDialogManager;->setNegativeButton(Landroid/app/AlertDialog;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 76
    :cond_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    .line 77
    iget-object v3, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    sget v4, Lorg/xwalk/core/R$string;->startup_signature_check_error_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v3, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    sget v4, Lorg/xwalk/core/R$string;->startup_signature_check_error_message:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/xwalk/core/XWalkDialogManager;->replaceApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 80
    invoke-direct {p0, v1, v0, p2}, Lorg/xwalk/core/XWalkDialogManager;->setNegativeButton(Landroid/app/AlertDialog;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 81
    :cond_2
    const/4 v3, 0x5

    if-ne p1, v3, :cond_3

    .line 82
    iget-object v3, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    sget v4, Lorg/xwalk/core/R$string;->startup_older_version_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v3, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    sget v4, Lorg/xwalk/core/R$string;->startup_older_version_message:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/xwalk/core/XWalkDialogManager;->replaceApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 85
    invoke-direct {p0, v1, v2, p3}, Lorg/xwalk/core/XWalkDialogManager;->setPositiveButton(Landroid/app/AlertDialog;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 86
    invoke-direct {p0, v1, v0, p2}, Lorg/xwalk/core/XWalkDialogManager;->setNegativeButton(Landroid/app/AlertDialog;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 87
    :cond_3
    const/4 v3, 0x6

    if-ne p1, v3, :cond_4

    .line 88
    iget-object v3, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    sget v4, Lorg/xwalk/core/R$string;->startup_newer_version_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v3, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    sget v4, Lorg/xwalk/core/R$string;->startup_newer_version_message:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/xwalk/core/XWalkDialogManager;->replaceApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 91
    invoke-direct {p0, v1, v0, p2}, Lorg/xwalk/core/XWalkDialogManager;->setNegativeButton(Landroid/app/AlertDialog;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 93
    :cond_4
    invoke-static {}, Ljunit/framework/Assert;->fail()V

    goto/16 :goto_0
.end method

.method public showMarketOpenError(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "cancelCommand"    # Ljava/lang/Runnable;

    .prologue
    .line 99
    invoke-direct {p0}, Lorg/xwalk/core/XWalkDialogManager;->buildAlertDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 100
    .local v0, "dialog":Landroid/app/AlertDialog;
    iget-object v1, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    sget v2, Lorg/xwalk/core/R$string;->crosswalk_install_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v1, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    sget v2, Lorg/xwalk/core/R$string;->market_open_failed_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v1, p0, Lorg/xwalk/core/XWalkDialogManager;->mContext:Landroid/content/Context;

    sget v2, Lorg/xwalk/core/R$string;->xwalk_close:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lorg/xwalk/core/XWalkDialogManager;->setNegativeButton(Landroid/app/AlertDialog;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 103
    invoke-direct {p0, v0}, Lorg/xwalk/core/XWalkDialogManager;->showDialog(Landroid/app/Dialog;)V

    .line 104
    return-void
.end method
