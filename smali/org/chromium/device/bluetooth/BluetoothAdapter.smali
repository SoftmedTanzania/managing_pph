.class final Lorg/chromium/device/bluetooth/BluetoothAdapter;
.super Ljava/lang/Object;
.source "BluetoothAdapter.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "device"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mHasBluetoothPermission:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "Bluetooth"

    invoke-static {v0}, Lorg/chromium/base/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/device/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/device/bluetooth/BluetoothAdapter;->mHasBluetoothPermission:Z

    .line 50
    iget-boolean v0, p0, Lorg/chromium/device/bluetooth/BluetoothAdapter;->mHasBluetoothPermission:Z

    if-nez v0, :cond_2

    .line 51
    sget-object v0, Lorg/chromium/device/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Bluetooth API disabled; BLUETOOTH and BLUETOOTH_ADMIN permissions required."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 45
    goto :goto_0

    .line 56
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/device/bluetooth/BluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 57
    iget-object v0, p0, Lorg/chromium/device/bluetooth/BluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/device/bluetooth/BluetoothAdapter;->TAG:Ljava/lang/String;

    const-string v2, "No adapter found."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static create(Landroid/content/Context;)Lorg/chromium/device/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lorg/chromium/device/bluetooth/BluetoothAdapter;

    invoke-direct {v0, p0}, Lorg/chromium/device/bluetooth/BluetoothAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static createWithoutPermissionForTesting(Landroid/content/Context;)Lorg/chromium/device/bluetooth/BluetoothAdapter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lorg/chromium/device/bluetooth/BluetoothAdapter$1;

    invoke-direct {v0, p0}, Lorg/chromium/device/bluetooth/BluetoothAdapter$1;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, "contextWithoutPermission":Landroid/content/Context;
    new-instance v1, Lorg/chromium/device/bluetooth/BluetoothAdapter;

    invoke-direct {v1, v0}, Lorg/chromium/device/bluetooth/BluetoothAdapter;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method private getAddress()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/BluetoothAdapter;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/chromium/device/bluetooth/BluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/BluetoothAdapter;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/chromium/device/bluetooth/BluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private hasBluetoothPermission()Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/chromium/device/bluetooth/BluetoothAdapter;->mHasBluetoothPermission:Z

    return v0
.end method

.method private isDiscoverable()Z
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/BluetoothAdapter;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/device/bluetooth/BluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDiscovering()Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/BluetoothAdapter;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/device/bluetooth/BluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPowered()Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/BluetoothAdapter;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/device/bluetooth/BluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPresent()Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lorg/chromium/device/bluetooth/BluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
