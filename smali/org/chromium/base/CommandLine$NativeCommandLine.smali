.class Lorg/chromium/base/CommandLine$NativeCommandLine;
.super Lorg/chromium/base/CommandLine;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeCommandLine"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/base/CommandLine;-><init>(Lorg/chromium/base/CommandLine$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/base/CommandLine$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/base/CommandLine$1;

    .prologue
    .line 345
    invoke-direct {p0}, Lorg/chromium/base/CommandLine$NativeCommandLine;-><init>()V

    return-void
.end method


# virtual methods
.method public appendSwitch(Ljava/lang/String;)V
    .locals 0
    .param p1, "switchString"    # Ljava/lang/String;

    .prologue
    .line 358
    invoke-static {p1}, Lorg/chromium/base/CommandLine;->access$500(Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method public appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "switchString"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-static {p1, p2}, Lorg/chromium/base/CommandLine;->access$600(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public appendSwitchesAndArguments([Ljava/lang/String;)V
    .locals 0
    .param p1, "array"    # [Ljava/lang/String;

    .prologue
    .line 368
    invoke-static {p1}, Lorg/chromium/base/CommandLine;->access$700([Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public getSwitchValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "switchString"    # Ljava/lang/String;

    .prologue
    .line 353
    invoke-static {p1}, Lorg/chromium/base/CommandLine;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasSwitch(Ljava/lang/String;)Z
    .locals 1
    .param p1, "switchString"    # Ljava/lang/String;

    .prologue
    .line 348
    invoke-static {p1}, Lorg/chromium/base/CommandLine;->access$300(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNativeImplementation()Z
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x1

    return v0
.end method
