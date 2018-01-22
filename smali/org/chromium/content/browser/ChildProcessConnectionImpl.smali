.class public Lorg/chromium/content/browser/ChildProcessConnectionImpl;
.super Ljava/lang/Object;
.source "ChildProcessConnectionImpl.java"

# interfaces
.implements Lorg/chromium/content/browser/ChildProcessConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;,
        Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "ChildProcessConnection"


# instance fields
.field private final mAlwaysInForeground:Z

.field private mConnectionCallback:Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;

.field private mConnectionParams:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

.field private final mContext:Landroid/content/Context;

.field private final mDeathCallback:Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;

.field private final mInSandbox:Z

.field private mInitialBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

.field private mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

.field private final mLock:Ljava/lang/Object;

.field private mPid:I

.field private mService:Lorg/chromium/content/common/IChildProcessService;

.field private final mServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/chromium/content/app/ChildProcessService;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceConnectComplete:Z

.field private mServiceDisconnected:Z

.field private final mServiceNumber:I

.field private mStrongBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

.field private mStrongBindingCount:I

.field private mWaivedBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

.field private mWasOomProtected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;IZLorg/chromium/content/browser/ChildProcessConnection$DeathCallback;Ljava/lang/Class;Lorg/chromium/content/app/ChromiumLinkerParams;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # I
    .param p3, "inSandbox"    # Z
    .param p4, "deathCallback"    # Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;
    .param p6, "chromiumLinkerParams"    # Lorg/chromium/content/app/ChromiumLinkerParams;
    .param p7, "alwaysInForeground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ",
            "Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/chromium/content/app/ChildProcessService;",
            ">;",
            "Lorg/chromium/content/app/ChromiumLinkerParams;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p5, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/chromium/content/app/ChildProcessService;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    .line 44
    iput-object v3, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mService:Lorg/chromium/content/common/IChildProcessService;

    .line 46
    iput-boolean v2, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceConnectComplete:Z

    .line 49
    iput-boolean v2, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceDisconnected:Z

    .line 52
    iput-boolean v2, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mWasOomProtected:Z

    .line 53
    iput v2, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mPid:I

    .line 56
    iput-object v3, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mInitialBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    .line 61
    iput-object v3, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    .line 64
    iput-object v3, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mWaivedBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    .line 66
    iput v2, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBindingCount:I

    .line 69
    iput-object v3, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

    .line 202
    iput-object p1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mContext:Landroid/content/Context;

    .line 203
    iput p2, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceNumber:I

    .line 204
    iput-boolean p3, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mInSandbox:Z

    .line 205
    iput-object p4, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mDeathCallback:Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;

    .line 206
    iput-object p5, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceClass:Ljava/lang/Class;

    .line 207
    iput-object p6, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

    .line 208
    iput-boolean p7, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mAlwaysInForeground:Z

    .line 209
    const/4 v0, 0x1

    .line 210
    .local v0, "initialFlags":I
    iget-boolean v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mAlwaysInForeground:Z

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x40

    .line 211
    :cond_0
    new-instance v1, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-direct {v1, p0, v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;-><init>(Lorg/chromium/content/browser/ChildProcessConnectionImpl;I)V

    iput-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mInitialBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    .line 212
    new-instance v1, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    const/16 v2, 0x41

    invoke-direct {v1, p0, v2}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;-><init>(Lorg/chromium/content/browser/ChildProcessConnectionImpl;I)V

    iput-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    .line 214
    new-instance v1, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    const/16 v2, 0x21

    invoke-direct {v1, p0, v2}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;-><init>(Lorg/chromium/content/browser/ChildProcessConnectionImpl;I)V

    iput-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mWaivedBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    .line 216
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/chromium/content/browser/ChildProcessConnectionImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessConnectionImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mWasOomProtected:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->isCurrentlyOomProtected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)I
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    .prologue
    .line 33
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mPid:I

    return v0
.end method

.method static synthetic access$1300(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mDeathCallback:Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionCallback:Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;

    return-object v0
.end method

.method static synthetic access$1402(Lorg/chromium/content/browser/ChildProcessConnectionImpl;Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;)Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessConnectionImpl;
    .param p1, "x1"    # Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;

    .prologue
    .line 33
    iput-object p1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionCallback:Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;

    return-object p1
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)I
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    .prologue
    .line 33
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceNumber:I

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Lorg/chromium/content/app/ChromiumLinkerParams;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    .prologue
    .line 33
    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceConnectComplete:Z

    return v0
.end method

.method static synthetic access$502(Lorg/chromium/content/browser/ChildProcessConnectionImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessConnectionImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceConnectComplete:Z

    return p1
.end method

.method static synthetic access$602(Lorg/chromium/content/browser/ChildProcessConnectionImpl;Lorg/chromium/content/common/IChildProcessService;)Lorg/chromium/content/common/IChildProcessService;
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessConnectionImpl;
    .param p1, "x1"    # Lorg/chromium/content/common/IChildProcessService;

    .prologue
    .line 33
    iput-object p1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mService:Lorg/chromium/content/common/IChildProcessService;

    return-object p1
.end method

.method static synthetic access$700(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionParams:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

    return-object v0
.end method

.method static synthetic access$800(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->doConnectionSetupLocked()V

    return-void
.end method

.method static synthetic access$900(Lorg/chromium/content/browser/ChildProcessConnectionImpl;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    .prologue
    .line 33
    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceDisconnected:Z

    return v0
.end method

.method static synthetic access$902(Lorg/chromium/content/browser/ChildProcessConnectionImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessConnectionImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceDisconnected:Z

    return p1
.end method

.method private doConnectionSetupLocked()V
    .locals 18

    .prologue
    .line 316
    :try_start_0
    const-string v15, "ChildProcessConnectionImpl.doConnectionSetupLocked"

    invoke-static {v15}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 317
    sget-boolean v15, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->$assertionsDisabled:Z

    if-nez v15, :cond_1

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceConnectComplete:Z

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mService:Lorg/chromium/content/common/IChildProcessService;

    if-nez v15, :cond_1

    :cond_0
    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    :catchall_0
    move-exception v15

    const-string v16, "ChildProcessConnectionImpl.doConnectionSetupLocked"

    invoke-static/range {v16 .. v16}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v15

    .line 318
    :cond_1
    :try_start_1
    sget-boolean v15, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->$assertionsDisabled:Z

    if-nez v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionParams:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

    if-nez v15, :cond_2

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 320
    :cond_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 321
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v15, "com.google.android.apps.chrome.extra.command_line"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionParams:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;->mCommandLine:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionParams:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

    iget-object v6, v15, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;->mFilesToBeMapped:[Lorg/chromium/content/browser/FileDescriptorInfo;

    .line 324
    .local v6, "fileInfos":[Lorg/chromium/content/browser/FileDescriptorInfo;
    array-length v15, v6

    new-array v13, v15, [Landroid/os/ParcelFileDescriptor;

    .line 325
    .local v13, "parcelFiles":[Landroid/os/ParcelFileDescriptor;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v15, v6

    if-ge v7, v15, :cond_5

    .line 326
    aget-object v15, v6, v7

    iget v15, v15, Lorg/chromium/content/browser/FileDescriptorInfo;->mFd:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 328
    const-string v15, "ChildProcessConnection"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid FD (id="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    aget-object v17, v6, v7

    move-object/from16 v0, v17

    iget v0, v0, Lorg/chromium/content/browser/FileDescriptorInfo;->mId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") for process connection, "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "aborting connection."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    const-string v15, "ChildProcessConnectionImpl.doConnectionSetupLocked"

    invoke-static {v15}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 381
    :goto_1
    return-void

    .line 332
    :cond_3
    :try_start_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "com.google.android.apps.chrome.extra.extraFile_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 333
    .local v9, "idName":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "com.google.android.apps.chrome.extra.extraFile_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_fd"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 334
    .local v5, "fdName":Ljava/lang/String;
    aget-object v15, v6, v7

    iget-boolean v15, v15, Lorg/chromium/content/browser/FileDescriptorInfo;->mAutoClose:Z

    if-eqz v15, :cond_4

    .line 336
    aget-object v15, v6, v7

    iget v15, v15, Lorg/chromium/content/browser/FileDescriptorInfo;->mFd:I

    invoke-static {v15}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    aput-object v15, v13, v7

    .line 348
    :goto_2
    aget-object v15, v13, v7

    invoke-virtual {v3, v5, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 349
    aget-object v15, v6, v7

    iget v15, v15, Lorg/chromium/content/browser/FileDescriptorInfo;->mId:I

    invoke-virtual {v3, v9, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 325
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 339
    :cond_4
    :try_start_3
    aget-object v15, v6, v7

    iget v15, v15, Lorg/chromium/content/browser/FileDescriptorInfo;->mFd:I

    invoke-static {v15}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    aput-object v15, v13, v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 340
    :catch_0
    move-exception v4

    .line 341
    .local v4, "e":Ljava/io/IOException;
    :try_start_4
    const-string v15, "ChildProcessConnection"

    const-string v16, "Invalid FD provided for process connection, aborting connection."

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 379
    const-string v15, "ChildProcessConnectionImpl.doConnectionSetupLocked"

    invoke-static {v15}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    goto :goto_1

    .line 352
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "fdName":Ljava/lang/String;
    .end local v9    # "idName":Ljava/lang/String;
    :cond_5
    :try_start_5
    const-string v15, "com.google.android.apps.chrome.extra.cpu_count"

    invoke-static {}, Lorg/chromium/base/CpuFeatures;->getCount()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    const-string v15, "com.google.android.apps.chrome.extra.cpu_features"

    invoke-static {}, Lorg/chromium/base/CpuFeatures;->getMask()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v3, v15, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 355
    const-string v15, "org.chromium.base.android.linker.shared_relros"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionParams:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;->mSharedRelros:Landroid/os/Bundle;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 359
    :try_start_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mService:Lorg/chromium/content/common/IChildProcessService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionParams:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v15, v3, v0}, Lorg/chromium/content/common/IChildProcessService;->setupConnection(Landroid/os/Bundle;Lorg/chromium/content/common/IChildProcessCallback;)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mPid:I

    .line 360
    sget-boolean v15, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->$assertionsDisabled:Z

    if-nez v15, :cond_6

    move-object/from16 v0, p0

    iget v15, v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mPid:I

    if-nez v15, :cond_6

    new-instance v15, Ljava/lang/AssertionError;

    const-string v16, "Child service claims to be run by a process of pid=0."

    invoke-direct/range {v15 .. v16}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v15
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 361
    :catch_1
    move-exception v14

    .line 362
    .local v14, "re":Landroid/os/RemoteException;
    :try_start_7
    const-string v15, "ChildProcessConnection"

    const-string v16, "Failed to setup connection."

    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 366
    .end local v14    # "re":Landroid/os/RemoteException;
    :cond_6
    move-object v2, v13

    .local v2, "arr$":[Landroid/os/ParcelFileDescriptor;
    :try_start_8
    array-length v11, v2

    .local v11, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_3
    if-ge v8, v11, :cond_8

    aget-object v12, v2, v8

    .line 367
    .local v12, "parcelFile":Landroid/os/ParcelFileDescriptor;
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 366
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 369
    .end local v8    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "parcelFile":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v10

    .line 370
    .local v10, "ioe":Ljava/io/IOException;
    :try_start_9
    const-string v15, "ChildProcessConnection"

    const-string v16, "Failed to close FD."

    move-object/from16 v0, v16

    invoke-static {v15, v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    .end local v10    # "ioe":Ljava/io/IOException;
    :cond_8
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionParams:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

    .line 374
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionCallback:Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;

    if-eqz v15, :cond_9

    .line 375
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionCallback:Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mPid:I

    move/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;->onConnected(I)V

    .line 377
    :cond_9
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionCallback:Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 379
    const-string v15, "ChildProcessConnectionImpl.doConnectionSetupLocked"

    invoke-static {v15}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private isCurrentlyOomProtected()Z
    .locals 2

    .prologue
    .line 417
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 418
    :try_start_0
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceDisconnected:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 419
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mAlwaysInForeground:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->isApplicationInForeground()Z

    move-result v0

    monitor-exit v1

    .line 420
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mInitialBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->isBound()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->isBound()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addStrongBinding()V
    .locals 4

    .prologue
    .line 437
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 438
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mService:Lorg/chromium/content/common/IChildProcessService;

    if-nez v0, :cond_0

    .line 439
    const-string v0, "ChildProcessConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The connection is not bound for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    monitor-exit v1

    .line 447
    :goto_0
    return-void

    .line 442
    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBindingCount:I

    if-nez v0, :cond_1

    .line 443
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->bind([Ljava/lang/String;)Z

    .line 445
    :cond_1
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBindingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBindingCount:I

    .line 446
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public crashServiceForTesting()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 467
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mService:Lorg/chromium/content/common/IChildProcessService;

    invoke-interface {v1}, Lorg/chromium/content/common/IChildProcessService;->crashIntentionallyForTesting()V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Landroid/os/DeadObjectException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public dropOomBindings()V
    .locals 2

    .prologue
    .line 426
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 427
    :try_start_0
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mAlwaysInForeground:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 428
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mInitialBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->unbind()V

    .line 430
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBindingCount:I

    .line 431
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->unbind()V

    .line 432
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    return-void
.end method

.method public getPid()I
    .locals 2

    .prologue
    .line 237
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :try_start_0
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mPid:I

    monitor-exit v1

    return v0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getService()Lorg/chromium/content/common/IChildProcessService;
    .locals 2

    .prologue
    .line 230
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 231
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mService:Lorg/chromium/content/common/IChildProcessService;

    monitor-exit v1

    return-object v0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getServiceNumber()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceNumber:I

    return v0
.end method

.method public isConnected()Z
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 476
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mService:Lorg/chromium/content/common/IChildProcessService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInSandbox()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mInSandbox:Z

    return v0
.end method

.method public isInitialBindingBound()Z
    .locals 2

    .prologue
    .line 385
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 386
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mInitialBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->isBound()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOomProtectedOrWasWhenDied()Z
    .locals 2

    .prologue
    .line 407
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 408
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceDisconnected:Z

    if-eqz v0, :cond_0

    .line 409
    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mWasOomProtected:Z

    monitor-exit v1

    .line 411
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->isCurrentlyOomProtected()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isStrongBindingBound()Z
    .locals 2

    .prologue
    .line 392
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 393
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->isBound()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeInitialBinding()V
    .locals 2

    .prologue
    .line 399
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 400
    :try_start_0
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mAlwaysInForeground:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 401
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mInitialBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->unbind()V

    .line 402
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    return-void
.end method

.method public removeStrongBinding()V
    .locals 4

    .prologue
    .line 451
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 452
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mService:Lorg/chromium/content/common/IChildProcessService;

    if-nez v0, :cond_0

    .line 453
    const-string v0, "ChildProcessConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The connection is not bound for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    monitor-exit v1

    .line 462
    :goto_0
    return-void

    .line 456
    :cond_0
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBindingCount:I

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 457
    :cond_1
    :try_start_1
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBindingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBindingCount:I

    .line 458
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBindingCount:I

    if-nez v0, :cond_2

    .line 459
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->unbind()V

    .line 461
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setupConnection([Ljava/lang/String;[Lorg/chromium/content/browser/FileDescriptorInfo;Lorg/chromium/content/common/IChildProcessCallback;Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "commandLine"    # [Ljava/lang/String;
    .param p2, "filesToBeMapped"    # [Lorg/chromium/content/browser/FileDescriptorInfo;
    .param p3, "processCallback"    # Lorg/chromium/content/common/IChildProcessCallback;
    .param p4, "connectionCallback"    # Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;
    .param p5, "sharedRelros"    # Landroid/os/Bundle;

    .prologue
    .line 272
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 273
    :try_start_0
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionParams:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 274
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceDisconnected:Z

    if-eqz v0, :cond_1

    .line 275
    const-string v0, "ChildProcessConnection"

    const-string v2, "Tried to setup a connection that already disconnected."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;->onConnected(I)V

    .line 277
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    :goto_0
    return-void

    .line 280
    :cond_1
    :try_start_2
    const-string v0, "ChildProcessConnectionImpl.setupConnection"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 281
    iput-object p4, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionCallback:Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;

    .line 282
    new-instance v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

    invoke-direct {v0, p1, p2, p3, p5}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;-><init>([Ljava/lang/String;[Lorg/chromium/content/browser/FileDescriptorInfo;Lorg/chromium/content/common/IChildProcessCallback;Landroid/os/Bundle;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionParams:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

    .line 286
    iget-boolean v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mServiceConnectComplete:Z

    if-eqz v0, :cond_2

    .line 287
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->doConnectionSetupLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 290
    :cond_2
    :try_start_3
    const-string v0, "ChildProcessConnectionImpl.setupConnection"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 292
    monitor-exit v1

    goto :goto_0

    .line 290
    :catchall_1
    move-exception v0

    const-string v2, "ChildProcessConnectionImpl.setupConnection"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public start([Ljava/lang/String;)V
    .locals 3
    .param p1, "commandLine"    # [Ljava/lang/String;

    .prologue
    .line 245
    :try_start_0
    const-string v0, "ChildProcessConnectionImpl.start"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 247
    :try_start_1
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 261
    :catchall_1
    move-exception v0

    const-string v1, "ChildProcessConnectionImpl.start"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    :try_start_3
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionParams:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v2, "setupConnection() called before start() in ChildProcessConnectionImpl."

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 251
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mInitialBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->bind([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 252
    const-string v0, "ChildProcessConnection"

    const-string v2, "Failed to establish the service connection."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mDeathCallback:Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;

    invoke-interface {v0, p0}, Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;->onChildProcessDied(Lorg/chromium/content/browser/ChildProcessConnection;)V

    .line 259
    :goto_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 261
    const-string v0, "ChildProcessConnectionImpl.start"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 263
    return-void

    .line 257
    :cond_2
    :try_start_4
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mWaivedBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->bind([Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 297
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mInitialBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->unbind()V

    .line 299
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->unbind()V

    .line 300
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mWaivedBinding:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessConnectionImpl$ChildServiceConnection;->unbind()V

    .line 301
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mStrongBindingCount:I

    .line 302
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mService:Lorg/chromium/content/common/IChildProcessService;

    if-eqz v0, :cond_0

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mService:Lorg/chromium/content/common/IChildProcessService;

    .line 305
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->mConnectionParams:Lorg/chromium/content/browser/ChildProcessConnectionImpl$ConnectionParams;

    .line 306
    monitor-exit v1

    .line 307
    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
