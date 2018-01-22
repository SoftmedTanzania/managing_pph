.class public Lorg/xwalk/core/internal/XWalkUIClientInternal;
.super Ljava/lang/Object;
.source "XWalkUIClientInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/internal/XWalkUIClientInternal$9;,
        Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;,
        Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;,
        Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;,
        Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;
    }
.end annotation

.annotation build Lorg/xwalk/core/internal/XWalkAPI;
    createExternally = true
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDecorView:Landroid/view/View;

.field private mDialog:Landroid/app/AlertDialog;

.field private mIsFullscreen:Z

.field private mOriginalForceNotFullscreen:Z

.field private mOriginalFullscreen:Z

.field private mPromptText:Landroid/widget/EditText;

.field private mSystemUiFlag:I

.field private mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/xwalk/core/internal/XWalkUIClientInternal;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 2
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mIsFullscreen:Z

    .line 58
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mDecorView:Landroid/view/View;

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 61
    const/16 v0, 0x700

    iput v0, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mSystemUiFlag:I

    .line 65
    :cond_0
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lorg/xwalk/core/internal/XWalkUIClientInternal;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkUIClientInternal;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mPromptText:Landroid/widget/EditText;

    return-object v0
.end method

.method private onJsAlert(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;

    .prologue
    .line 387
    move-object v1, p4

    .line 388
    .local v1, "fResult":Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 389
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    sget v3, Lorg/xwalk/core/internal/R$string;->js_alert_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/xwalk/core/internal/XWalkUIClientInternal$2;

    invoke-direct {v4, p0, v1}, Lorg/xwalk/core/internal/XWalkUIClientInternal$2;-><init>(Lorg/xwalk/core/internal/XWalkUIClientInternal;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lorg/xwalk/core/internal/XWalkUIClientInternal$1;

    invoke-direct {v3, p0, v1}, Lorg/xwalk/core/internal/XWalkUIClientInternal$1;-><init>(Lorg/xwalk/core/internal/XWalkUIClientInternal;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 406
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mDialog:Landroid/app/AlertDialog;

    .line 407
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 408
    const/4 v2, 0x0

    return v2
.end method

.method private onJsConfirm(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;

    .prologue
    .line 413
    move-object v1, p4

    .line 414
    .local v1, "fResult":Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 415
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    sget v3, Lorg/xwalk/core/internal/R$string;->js_confirm_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/xwalk/core/internal/XWalkUIClientInternal$5;

    invoke-direct {v4, p0, v1}, Lorg/xwalk/core/internal/XWalkUIClientInternal$5;-><init>(Lorg/xwalk/core/internal/XWalkUIClientInternal;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/xwalk/core/internal/XWalkUIClientInternal$4;

    invoke-direct {v4, p0}, Lorg/xwalk/core/internal/XWalkUIClientInternal$4;-><init>(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lorg/xwalk/core/internal/XWalkUIClientInternal$3;

    invoke-direct {v3, p0, v1}, Lorg/xwalk/core/internal/XWalkUIClientInternal$3;-><init>(Lorg/xwalk/core/internal/XWalkUIClientInternal;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 442
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mDialog:Landroid/app/AlertDialog;

    .line 443
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 444
    const/4 v2, 0x0

    return v2
.end method

.method private onJsPrompt(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z
    .locals 6
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;

    .prologue
    const/4 v5, 0x0

    .line 449
    move-object v1, p5

    .line 450
    .local v1, "fResult":Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 451
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    sget v3, Lorg/xwalk/core/internal/R$string;->js_prompt_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/xwalk/core/internal/XWalkUIClientInternal$8;

    invoke-direct {v4, p0, v1}, Lorg/xwalk/core/internal/XWalkUIClientInternal$8;-><init>(Lorg/xwalk/core/internal/XWalkUIClientInternal;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/xwalk/core/internal/XWalkUIClientInternal$7;

    invoke-direct {v4, p0}, Lorg/xwalk/core/internal/XWalkUIClientInternal$7;-><init>(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lorg/xwalk/core/internal/XWalkUIClientInternal$6;

    invoke-direct {v3, p0, v1}, Lorg/xwalk/core/internal/XWalkUIClientInternal$6;-><init>(Lorg/xwalk/core/internal/XWalkUIClientInternal;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 477
    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mPromptText:Landroid/widget/EditText;

    .line 478
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mPromptText:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 479
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mPromptText:Landroid/widget/EditText;

    invoke-virtual {v2, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mPromptText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    .line 482
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mPromptText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 483
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mDialog:Landroid/app/AlertDialog;

    .line 484
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 485
    return v5
.end method


# virtual methods
.method public onConsoleMessage(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;ILjava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "lineNumber"    # I
    .param p4, "sourceId"    # Ljava/lang/String;
    .param p5, "messageType"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateWindowRequested(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;Landroid/webkit/ValueCallback;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "initiator"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/internal/XWalkViewInternal;",
            "Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Lorg/xwalk/core/internal/XWalkViewInternal;",
            ">;)Z"
        }
    .end annotation

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 79
    .local p3, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Lorg/xwalk/core/internal/XWalkViewInternal;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onDidChangeThemeColor(Lorg/xwalk/core/internal/XWalkViewInternal;I)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "color"    # I

    .prologue
    .line 87
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/chromium/base/ApiCompatibilityUtils;->setStatusBarColor(Landroid/view/Window;I)V

    goto :goto_0
.end method

.method public onFullscreenToggled(Lorg/xwalk/core/internal/XWalkViewInternal;Z)V
    .locals 7
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "enterFullscreen"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    const/16 v6, 0x800

    const/16 v5, 0x400

    const/16 v2, 0x13

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 188
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 189
    .local v0, "activity":Landroid/app/Activity;
    if-eqz p2, :cond_4

    .line 190
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_1

    .line 192
    iput-boolean v4, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mOriginalForceNotFullscreen:Z

    .line 193
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 198
    :goto_0
    iget-boolean v1, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mIsFullscreen:Z

    if-nez v1, :cond_0

    .line 199
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_2

    .line 200
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mDecorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    iput v1, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mSystemUiFlag:I

    .line 201
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mDecorView:Landroid/view/View;

    const/16 v2, 0x1706

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 217
    :goto_1
    iput-boolean v4, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mIsFullscreen:Z

    .line 234
    :cond_0
    :goto_2
    return-void

    .line 196
    :cond_1
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mOriginalForceNotFullscreen:Z

    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_3

    .line 211
    iput-boolean v4, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mOriginalFullscreen:Z

    goto :goto_1

    .line 213
    :cond_3
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mOriginalFullscreen:Z

    .line 214
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    .line 220
    :cond_4
    iget-boolean v1, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mOriginalForceNotFullscreen:Z

    if-eqz v1, :cond_5

    .line 221
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->addFlags(I)V

    .line 224
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_7

    .line 225
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mDecorView:Landroid/view/View;

    iget v2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mSystemUiFlag:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 232
    :cond_6
    :goto_3
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mIsFullscreen:Z

    goto :goto_2

    .line 228
    :cond_7
    iget-boolean v1, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->mOriginalFullscreen:Z

    if-nez v1, :cond_6

    .line 229
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_3
.end method

.method public onIconAvailable(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "startDownload"    # Landroid/os/Message;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 100
    return-void
.end method

.method public onJavascriptCloseWindow(Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 129
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 132
    :cond_0
    return-void
.end method

.method public onJavascriptModalDialog(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z
    .locals 6
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "type"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "defaultValue"    # Ljava/lang/String;
    .param p6, "result"    # Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 163
    sget-object v0, Lorg/xwalk/core/internal/XWalkUIClientInternal$9;->$SwitchMap$org$xwalk$core$internal$XWalkUIClientInternal$JavascriptMessageTypeInternal:[I

    invoke-virtual {p2}, Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 176
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkUIClientInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 165
    :pswitch_0
    invoke-direct {p0, p1, p3, p4, p6}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJsAlert(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z

    move-result v0

    .line 177
    :goto_0
    return v0

    .line 167
    :pswitch_1
    invoke-direct {p0, p1, p3, p4, p6}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJsConfirm(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 169
    invoke-direct/range {v0 .. v5}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJsPrompt(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z

    move-result v0

    goto :goto_0

    .line 172
    :pswitch_3
    invoke-direct {p0, p1, p3, p4, p6}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJsConfirm(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z

    move-result v0

    goto :goto_0

    .line 177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPageLoadStarted(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 368
    return-void
.end method

.method public onPageLoadStopped(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "status"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 383
    return-void
.end method

.method public onReceivedIcon(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/Bitmap;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 111
    return-void
.end method

.method public onReceivedTitle(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "title"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 337
    return-void
.end method

.method public onRequestFocus(Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 120
    return-void
.end method

.method public onScaleChanged(Lorg/xwalk/core/internal/XWalkViewInternal;FF)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 263
    return-void
.end method

.method public onUnhandledKeyEvent(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 298
    return-void
.end method

.method public openFileChooser(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p3, "acceptType"    # Ljava/lang/String;
    .param p4, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/internal/XWalkViewInternal;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 251
    .local p2, "uploadFile":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 252
    return-void
.end method

.method public shouldOverrideKeyEvent(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method
