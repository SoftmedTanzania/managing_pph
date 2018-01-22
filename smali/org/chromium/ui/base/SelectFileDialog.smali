.class Lorg/chromium/ui/base/SelectFileDialog;
.super Ljava/lang/Object;
.source "SelectFileDialog.java"

# interfaces
.implements Lorg/chromium/ui/base/WindowAndroid$IntentCallback;
.implements Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "ui"
.end annotation


# static fields
.field private static final ALL_AUDIO_TYPES:Ljava/lang/String; = "audio/*"

.field private static final ALL_IMAGE_TYPES:Ljava/lang/String; = "image/*"

.field private static final ALL_VIDEO_TYPES:Ljava/lang/String; = "video/*"

.field private static final ANY_TYPES:Ljava/lang/String; = "*/*"

.field private static final AUDIO_TYPE:Ljava/lang/String; = "audio/"

.field private static final IMAGE_TYPE:Ljava/lang/String; = "image/"

.field private static final TAG:Ljava/lang/String; = "SelectFileDialog"

.field private static final VIDEO_TYPE:Ljava/lang/String; = "video/"


# instance fields
.field private mAllowMultiple:Z

.field private mCameraOutputUri:Landroid/net/Uri;

.field private mCapture:Z

.field private mFileTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNativeSelectFileDialog:J

.field private mSupportsAudioCapture:Z

.field private mSupportsImageCapture:Z

.field private mSupportsVideoCapture:Z

.field private mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "nativeSelectFileDialog"    # J

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-wide p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mNativeSelectFileDialog:J

    .line 62
    return-void
.end method

.method private acceptSpecificType(Ljava/lang/String;)Z
    .locals 3
    .param p1, "accept"    # Ljava/lang/String;

    .prologue
    .line 357
    iget-object v2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 358
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    const/4 v2, 0x1

    .line 362
    .end local v1    # "type":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private acceptsSpecificType(Ljava/lang/String;)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 341
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/chromium/ui/base/SelectFileDialog;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/ui/base/SelectFileDialog;

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/ui/base/SelectFileDialog;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/ui/base/SelectFileDialog;

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mNativeSelectFileDialog:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/chromium/ui/base/SelectFileDialog;J[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/base/SelectFileDialog;
    .param p1, "x1"    # J
    .param p3, "x2"    # [Ljava/lang/String;
    .param p4, "x3"    # [Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/ui/base/SelectFileDialog;->nativeOnMultipleFilesSelected(J[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/ui/base/SelectFileDialog;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/base/SelectFileDialog;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/ui/base/SelectFileDialog;->nativeOnFileSelected(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private captureCamcorder()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCapture:Z

    if-eqz v0, :cond_0

    const-string v0, "video/*"

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/SelectFileDialog;->acceptsSpecificType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private captureCamera()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCapture:Z

    if-eqz v0, :cond_0

    const-string v0, "image/*"

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/SelectFileDialog;->acceptsSpecificType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private captureMicrophone()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCapture:Z

    if-eqz v0, :cond_0

    const-string v0, "audio/*"

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/SelectFileDialog;->acceptsSpecificType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static create(J)Lorg/chromium/ui/base/SelectFileDialog;
    .locals 2
    .param p0, "nativeSelectFileDialog"    # J
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 415
    new-instance v0, Lorg/chromium/ui/base/SelectFileDialog;

    invoke-direct {v0, p0, p1}, Lorg/chromium/ui/base/SelectFileDialog;-><init>(J)V

    return-object v0
.end method

.method private getCameraIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, "camera":Landroid/content/Intent;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 194
    :try_start_0
    invoke-direct {p0, p1}, Lorg/chromium/ui/base/SelectFileDialog;->getFileForImageCapture(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/chromium/ui/UiUtils;->getUriForImageCaptureFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    iget-object v2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 207
    .end local v0    # "camera":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-object v0

    .line 196
    .restart local v0    # "camera":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "SelectFileDialog"

    const-string v3, "Cannot retrieve content uri from file"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 202
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    const-string v2, "output"

    iget-object v3, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 203
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "images"

    iget-object v4, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-static {v2, v3, v4}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    goto :goto_1
.end method

.method private getFileForImageCapture(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-static {p1}, Lorg/chromium/ui/UiUtils;->getDirectoryForImageCapture(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 221
    .local v0, "photoFile":Ljava/io/File;
    return-object v0
.end method

.method private launchSelectFileIntent()V
    .locals 10

    .prologue
    .line 108
    iget-object v8, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    const-string v9, "android.permission.CAMERA"

    invoke-virtual {v8, v9}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v6

    .line 109
    .local v6, "hasCameraPermission":Z
    iget-object v8, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    const-string v9, "android.permission.RECORD_AUDIO"

    invoke-virtual {v8, v9}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v5

    .line 112
    .local v5, "hasAudioPermission":Z
    const/4 v1, 0x0

    .line 113
    .local v1, "camera":Landroid/content/Intent;
    iget-boolean v8, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsImageCapture:Z

    if-eqz v8, :cond_1

    if-eqz v6, :cond_1

    .line 114
    iget-object v8, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v8}, Lorg/chromium/ui/base/WindowAndroid;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/chromium/ui/base/SelectFileDialog;->getCameraIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 118
    if-nez v1, :cond_1

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->captureCamera()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 119
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const/4 v0, 0x0

    .line 125
    .local v0, "camcorder":Landroid/content/Intent;
    iget-boolean v8, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsVideoCapture:Z

    if-eqz v8, :cond_2

    if-eqz v6, :cond_2

    .line 126
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "camcorder":Landroid/content/Intent;
    const-string v8, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .restart local v0    # "camcorder":Landroid/content/Intent;
    :cond_2
    const/4 v7, 0x0

    .line 130
    .local v7, "soundRecorder":Landroid/content/Intent;
    iget-boolean v8, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsAudioCapture:Z

    if-eqz v8, :cond_3

    if-eqz v5, :cond_3

    .line 131
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "soundRecorder":Landroid/content/Intent;
    const-string v8, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .restart local v7    # "soundRecorder":Landroid/content/Intent;
    :cond_3
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->captureCamera()Z

    move-result v8

    if-eqz v8, :cond_c

    if-eqz v1, :cond_c

    .line 138
    iget-object v8, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    sget v9, Lorg/chromium/ui/R$string;->low_memory_error:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v1, p0, v9}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 145
    :cond_4
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.GET_CONTENT"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v4, "getContentIntent":Landroid/content/Intent;
    const-string v8, "android.intent.category.OPENABLE"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x12

    if-lt v8, v9, :cond_5

    iget-boolean v8, p0, Lorg/chromium/ui/base/SelectFileDialog;->mAllowMultiple:Z

    if-eqz v8, :cond_5

    .line 149
    const-string v8, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v3, "extraIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->noSpecificType()Z

    move-result v8

    if-nez v8, :cond_7

    .line 157
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowImageTypes()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 158
    if-eqz v1, :cond_6

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_6
    const-string v8, "image/*"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    :cond_7
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 171
    const-string v8, "*/*"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    if-eqz v1, :cond_8

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_9
    if-eqz v7, :cond_a

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_a
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.CHOOSER"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v2, "chooser":Landroid/content/Intent;
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_b

    .line 179
    const-string v9, "android.intent.extra.INITIAL_INTENTS"

    const/4 v8, 0x0

    new-array v8, v8, [Landroid/content/Intent;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/os/Parcelable;

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 182
    :cond_b
    const-string v8, "android.intent.extra.INTENT"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 184
    iget-object v8, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    sget v9, Lorg/chromium/ui/R$string;->low_memory_error:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v2, p0, v9}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 185
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    goto/16 :goto_0

    .line 139
    .end local v2    # "chooser":Landroid/content/Intent;
    .end local v3    # "extraIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v4    # "getContentIntent":Landroid/content/Intent;
    :cond_c
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->captureCamcorder()Z

    move-result v8

    if-eqz v8, :cond_d

    if-eqz v0, :cond_d

    .line 140
    iget-object v8, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    sget v9, Lorg/chromium/ui/R$string;->low_memory_error:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v0, p0, v9}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto/16 :goto_0

    .line 141
    :cond_d
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->captureMicrophone()Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v7, :cond_4

    .line 142
    iget-object v8, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    sget v9, Lorg/chromium/ui/R$string;->low_memory_error:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v7, p0, v9}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto/16 :goto_0

    .line 160
    .restart local v3    # "extraIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v4    # "getContentIntent":Landroid/content/Intent;
    :cond_e
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowVideoTypes()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 161
    if-eqz v0, :cond_f

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_f
    const-string v8, "video/*"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 163
    :cond_10
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowAudioTypes()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 164
    if-eqz v7, :cond_11

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_11
    const-string v8, "audio/*"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1
.end method

.method private native nativeOnFileNotSelected(J)V
.end method

.method private native nativeOnFileSelected(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeOnMultipleFilesSelected(J[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method private noSpecificType()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 320
    iget-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    const-string v2, "*/*"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onFileNotSelected()V
    .locals 2

    .prologue
    .line 312
    iget-wide v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mNativeSelectFileDialog:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/ui/base/SelectFileDialog;->nativeOnFileNotSelected(J)V

    .line 313
    return-void
.end method

.method private selectFile([Ljava/lang/String;ZZLorg/chromium/ui/base/WindowAndroid;)V
    .locals 4
    .param p1, "fileTypes"    # [Ljava/lang/String;
    .param p2, "capture"    # Z
    .param p3, "multiple"    # Z
    .param p4, "window"    # Lorg/chromium/ui/base/WindowAndroid;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    .line 76
    iput-boolean p2, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCapture:Z

    .line 77
    iput-boolean p3, p0, Lorg/chromium/ui/base/SelectFileDialog;->mAllowMultiple:Z

    .line 78
    iput-object p4, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    .line 80
    iget-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/chromium/ui/base/WindowAndroid;->canResolveActivity(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsImageCapture:Z

    .line 82
    iget-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/chromium/ui/base/WindowAndroid;->canResolveActivity(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsVideoCapture:Z

    .line 84
    iget-object v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/chromium/ui/base/WindowAndroid;->canResolveActivity(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsAudioCapture:Z

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v0, "missingPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsImageCapture:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowImageTypes()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsVideoCapture:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowVideoTypes()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "android.permission.CAMERA"

    invoke-virtual {p4, v1}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    const-string v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_2
    iget-boolean v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mSupportsAudioCapture:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowAudioTypes()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {p4, v1}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 96
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 100
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->launchSelectFileIntent()V

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p4, v1, p0}, Lorg/chromium/ui/base/WindowAndroid;->requestPermissions([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V

    goto :goto_0
.end method

.method private shouldShowAudioTypes()Z
    .locals 2

    .prologue
    .line 337
    const-string v0, "audio/*"

    const-string v1, "audio/"

    invoke-direct {p0, v0, v1}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private shouldShowImageTypes()Z
    .locals 2

    .prologue
    .line 329
    const-string v0, "image/*"

    const-string v1, "image/"

    invoke-direct {p0, v0, v1}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private shouldShowTypes(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "allTypes"    # Ljava/lang/String;
    .param p2, "specificType"    # Ljava/lang/String;

    .prologue
    .line 324
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->noSpecificType()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->mFileTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 325
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p2}, Lorg/chromium/ui/base/SelectFileDialog;->acceptSpecificType(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private shouldShowVideoTypes()Z
    .locals 2

    .prologue
    .line 333
    const-string v0, "video/*"

    const-string v1, "video/"

    invoke-direct {p0, v0, v1}, Lorg/chromium/ui/base/SelectFileDialog;->shouldShowTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onIntentCompleted(Lorg/chromium/ui/base/WindowAndroid;ILandroid/content/ContentResolver;Landroid/content/Intent;)V
    .locals 10
    .param p1, "window"    # Lorg/chromium/ui/base/WindowAndroid;
    .param p2, "resultCode"    # I
    .param p3, "contentResolver"    # Landroid/content/ContentResolver;
    .param p4, "results"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/16 v7, 0x12

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 236
    const/4 v6, -0x1

    if-eq p2, v6, :cond_0

    .line 237
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    .line 298
    :goto_0
    return-void

    .line 241
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_3

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v7, :cond_1

    invoke-virtual {p4}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v6

    if-nez v6, :cond_3

    .line 250
    :cond_1
    const-string v6, "file"

    iget-object v7, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, "path":Ljava/lang/String;
    :goto_1
    iget-wide v6, p0, Lorg/chromium/ui/base/SelectFileDialog;->mNativeSelectFileDialog:J

    iget-object v8, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v4, v8}, Lorg/chromium/ui/base/SelectFileDialog;->nativeOnFileSelected(JLjava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v8, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v6}, Lorg/chromium/ui/base/WindowAndroid;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 250
    .end local v4    # "path":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCameraOutputUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 265
    :cond_3
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v7, :cond_6

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_6

    invoke-virtual {p4}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 267
    invoke-virtual {p4}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 269
    .local v0, "clipData":Landroid/content/ClipData;
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    .line 270
    .local v3, "itemCount":I
    if-nez v3, :cond_4

    .line 271
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    goto :goto_0

    .line 275
    :cond_4
    new-array v1, v3, [Landroid/net/Uri;

    .line 276
    .local v1, "filePathArray":[Landroid/net/Uri;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_5

    .line 277
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v1, v2

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 279
    :cond_5
    new-instance v5, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;

    invoke-direct {v5, p0, p3, v9}, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;-><init>(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/ContentResolver;Z)V

    .line 280
    .local v5, "task":Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;
    invoke-virtual {v5, v1}, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 284
    .end local v0    # "clipData":Landroid/content/ClipData;
    .end local v1    # "filePathArray":[Landroid/net/Uri;
    .end local v2    # "i":I
    .end local v3    # "itemCount":I
    .end local v5    # "task":Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;
    :cond_6
    const-string v6, "file"

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 285
    iget-wide v6, p0, Lorg/chromium/ui/base/SelectFileDialog;->mNativeSelectFileDialog:J

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-direct {p0, v6, v7, v8, v9}, Lorg/chromium/ui/base/SelectFileDialog;->nativeOnFileSelected(JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 290
    :cond_7
    const-string v6, "content"

    invoke-virtual {p4}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 291
    new-instance v5, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;

    invoke-direct {v5, p0, p3, v8}, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;-><init>(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/ContentResolver;Z)V

    .line 292
    .restart local v5    # "task":Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;
    new-array v6, v9, [Landroid/net/Uri;

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v6}, Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 296
    .end local v5    # "task":Lorg/chromium/ui/base/SelectFileDialog$GetDisplayNameTask;
    :cond_8
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    .line 297
    sget v6, Lorg/chromium/ui/R$string;->opening_file_error:I

    invoke-virtual {p1, v6}, Lorg/chromium/ui/base/WindowAndroid;->showError(I)V

    goto/16 :goto_0
.end method

.method public onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .prologue
    .line 302
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 303
    aget v1, p2, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->mCapture:Z

    if-eqz v1, :cond_0

    .line 304
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->onFileNotSelected()V

    .line 309
    :goto_1
    return-void

    .line 302
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_1
    invoke-direct {p0}, Lorg/chromium/ui/base/SelectFileDialog;->launchSelectFileIntent()V

    goto :goto_1
.end method
