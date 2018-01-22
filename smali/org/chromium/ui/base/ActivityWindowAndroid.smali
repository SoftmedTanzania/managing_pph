.class public Lorg/chromium/ui/base/ActivityWindowAndroid;
.super Lorg/chromium/ui/base/WindowAndroid;
.source "ActivityWindowAndroid.java"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ActivityStateListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# static fields
.field private static final PERMISSION_QUERIED_KEY_PREFIX:Ljava/lang/String; = "HasRequestedAndroidPermission::"

.field private static final REQUEST_CODE_PREFIX:I = 0x3e8

.field private static final REQUEST_CODE_RANGE_SIZE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ActivityWindowAndroid"


# instance fields
.field private final mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mNextRequestCode:I

.field private final mOutstandingPermissionRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestPermissionsMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/ui/base/ActivityWindowAndroid;-><init>(Landroid/app/Activity;Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listenToActivityState"    # Z

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/WindowAndroid;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mNextRequestCode:I

    .line 71
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mHandler:Landroid/os/Handler;

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mOutstandingPermissionRequests:Landroid/util/SparseArray;

    .line 74
    if-eqz p2, :cond_0

    .line 75
    invoke-static {p0, p1}, Lorg/chromium/base/ApplicationStatus;->registerStateListenerForActivity(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;Landroid/app/Activity;)V

    .line 77
    :cond_0
    return-void
.end method

.method private generateNextRequestCode()I
    .locals 2

    .prologue
    .line 310
    iget v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mNextRequestCode:I

    add-int/lit16 v0, v1, 0x3e8

    .line 311
    .local v0, "requestCode":I
    iget v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mNextRequestCode:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x64

    iput v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mNextRequestCode:I

    .line 312
    return v0
.end method

.method private getHasRequestedPermissionKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 162
    move-object v1, p1

    .line 171
    .local v1, "permissionQueriedKey":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    .line 174
    .local v0, "permissionInfo":Landroid/content/pm/PermissionInfo;
    iget-object v2, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    iget-object v1, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v0    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HasRequestedAndroidPermission::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 177
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private requestPermissionsInternal([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)Z
    .locals 10
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "callback"    # Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 240
    invoke-static {}, Lorg/chromium/base/BuildInfo;->isMncOrLater()Z

    move-result v5

    if-nez v5, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v3

    .line 243
    :cond_1
    iget-object v5, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 244
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 246
    iget-object v5, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mRequestPermissionsMethod:Ljava/lang/reflect/Method;

    if-nez v5, :cond_2

    .line 248
    :try_start_0
    const-class v5, Landroid/app/Activity;

    const-string v6, "requestPermissions"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, [Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mRequestPermissionsMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_2
    invoke-direct {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->generateNextRequestCode()I

    move-result v2

    .line 256
    .local v2, "requestCode":I
    iget-object v5, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mOutstandingPermissionRequests:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 259
    :try_start_1
    iget-object v5, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mRequestPermissionsMethod:Ljava/lang/reflect/Method;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move v3, v4

    .line 260
    goto :goto_0

    .line 250
    .end local v2    # "requestCode":I
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 261
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v2    # "requestCode":I
    :catch_1
    move-exception v1

    .line 262
    .local v1, "e":Ljava/lang/IllegalAccessException;
    iget-object v4, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mOutstandingPermissionRequests:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_0

    .line 263
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 264
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mOutstandingPermissionRequests:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_0

    .line 265
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    iget-object v4, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mOutstandingPermissionRequests:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_0
.end method

.method private storeCallbackData(ILorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "callback"    # Lorg/chromium/ui/base/WindowAndroid$IntentCallback;
    .param p3, "errorId"    # Ljava/lang/Integer;

    .prologue
    .line 316
    iget-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mOutstandingIntents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 317
    iget-object v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public canRequestPermission(Ljava/lang/String;)Z
    .locals 5
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 186
    invoke-static {}, Lorg/chromium/base/BuildInfo;->isMncOrLater()Z

    move-result v4

    if-nez v4, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v3

    .line 188
    :cond_1
    iget-object v4, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 189
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 197
    invoke-direct {p0, p1}, Lorg/chromium/ui/base/ActivityWindowAndroid;->getHasRequestedPermissionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "permissionQueriedKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 199
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public cancelIntent(I)V
    .locals 2
    .param p1, "requestCode"    # I

    .prologue
    .line 131
    iget-object v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 132
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->finishActivity(I)V

    goto :goto_0
.end method

.method public getActivity()Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 144
    iget-object v3, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mOutstandingIntents:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/base/WindowAndroid$IntentCallback;

    .line 145
    .local v0, "callback":Lorg/chromium/ui/base/WindowAndroid$IntentCallback;
    iget-object v3, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mOutstandingIntents:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 146
    iget-object v3, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 148
    .local v1, "errorMessage":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 149
    iget-object v3, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v0, p0, p2, v3, p3}, Lorg/chromium/ui/base/WindowAndroid$IntentCallback;->onIntentCompleted(Lorg/chromium/ui/base/WindowAndroid;ILandroid/content/ContentResolver;Landroid/content/Intent;)V

    .line 158
    :goto_0
    return v2

    .line 153
    :cond_0
    if-eqz v1, :cond_1

    .line 154
    invoke-virtual {p0, v1}, Lorg/chromium/ui/base/ActivityWindowAndroid;->showCallbackNonExistentError(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newState"    # I

    .prologue
    .line 296
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 297
    invoke-virtual {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->onActivityPaused()V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->onActivityResumed()V

    goto :goto_0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 306
    iget-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/chromium/ui/UiUtils;->isKeyboardShowing(Landroid/content/Context;Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->keyboardVisibilityPossiblyChanged(Z)V

    .line 307
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 281
    iget-object v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mOutstandingPermissionRequests:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;

    .line 282
    .local v0, "callback":Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;
    iget-object v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mOutstandingPermissionRequests:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 283
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 285
    :goto_0
    return v1

    .line 284
    :cond_0
    invoke-interface {v0, p2, p3}, Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;->onRequestPermissionsResult([Ljava/lang/String;[I)V

    .line 285
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected registerKeyboardVisibilityCallbacks()V
    .locals 2

    .prologue
    .line 81
    iget-object v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 82
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0
.end method

.method public requestPermissions([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V
    .locals 5
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "callback"    # Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;

    .prologue
    .line 211
    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/base/ActivityWindowAndroid;->requestPermissionsInternal([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 212
    iget-object v3, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mHandler:Landroid/os/Handler;

    new-instance v4, Lorg/chromium/ui/base/ActivityWindowAndroid$1;

    invoke-direct {v4, p0, p1, p2}, Lorg/chromium/ui/base/ActivityWindowAndroid$1;-><init>(Lorg/chromium/ui/base/ActivityWindowAndroid;[Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v3, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 226
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 228
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 229
    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lorg/chromium/ui/base/ActivityWindowAndroid;->getHasRequestedPermissionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 231
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public showCancelableIntent(Landroid/app/PendingIntent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)I
    .locals 9
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "callback"    # Lorg/chromium/ui/base/WindowAndroid$IntentCallback;
    .param p3, "errorId"    # Ljava/lang/Integer;

    .prologue
    const/4 v8, -0x1

    .line 96
    iget-object v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 97
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    move v2, v8

    .line 109
    :goto_0
    return v2

    .line 99
    :cond_0
    invoke-direct {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->generateNextRequestCode()I

    move-result v2

    .line 102
    .local v2, "requestCode":I
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    invoke-direct {p0, v2, p2, p3}, Lorg/chromium/ui/base/ActivityWindowAndroid;->storeCallbackData(ILorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)V

    goto :goto_0

    .line 104
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/content/IntentSender$SendIntentException;
    move v2, v8

    .line 105
    goto :goto_0
.end method

.method public showCancelableIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Lorg/chromium/ui/base/WindowAndroid$IntentCallback;
    .param p3, "errorId"    # Ljava/lang/Integer;

    .prologue
    const/4 v3, -0x1

    .line 114
    iget-object v4, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 115
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    move v2, v3

    .line 126
    :goto_0
    return v2

    .line 117
    :cond_0
    invoke-direct {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->generateNextRequestCode()I

    move-result v2

    .line 120
    .local v2, "requestCode":I
    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    invoke-direct {p0, v2, p2, p3}, Lorg/chromium/ui/base/ActivityWindowAndroid;->storeCallbackData(ILorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)V

    goto :goto_0

    .line 121
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/ActivityNotFoundException;
    move v2, v3

    .line 122
    goto :goto_0
.end method

.method protected unregisterKeyboardVisibilityCallbacks()V
    .locals 2

    .prologue
    .line 88
    iget-object v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 89
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0
.end method
