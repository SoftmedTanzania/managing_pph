.class Lorg/chromium/base/ResourceExtractor$ExtractTask;
.super Landroid/os/AsyncTask;
.source "ResourceExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/ResourceExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtractTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x4000


# instance fields
.field private final mCompletionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/chromium/base/ResourceExtractor;


# direct methods
.method public constructor <init>(Lorg/chromium/base/ResourceExtractor;)V
    .locals 1

    .prologue
    .line 71
    iput-object p1, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->mCompletionCallbacks:Ljava/util/List;

    .line 72
    return-void
.end method

.method static synthetic access$800(Lorg/chromium/base/ResourceExtractor$ExtractTask;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/base/ResourceExtractor$ExtractTask;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->mCompletionCallbacks:Ljava/util/List;

    return-object v0
.end method

.method private beginTraceSection(Ljava/lang/String;)V
    .locals 2
    .param p1, "section"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 305
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 307
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkPakTimestamp(Ljava/io/File;)Ljava/lang/String;
    .locals 11
    .param p1, "outputDir"    # Ljava/io/File;

    .prologue
    const/4 v10, 0x0

    .line 266
    const-string v4, "pak_timestamp-"

    .line 267
    .local v4, "timestampPrefix":Ljava/lang/String;
    iget-object v6, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    invoke-static {v6}, Lorg/chromium/base/ResourceExtractor;->access$300(Lorg/chromium/base/ResourceExtractor;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 268
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 271
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v6, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    invoke-static {v6}, Lorg/chromium/base/ResourceExtractor;->access$300(Lorg/chromium/base/ResourceExtractor;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 276
    if-nez v2, :cond_1

    .line 277
    const-string v1, "pak_timestamp-"

    .line 300
    :cond_0
    :goto_0
    return-object v1

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "pak_timestamp-"

    goto :goto_0

    .line 280
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pak_timestamp-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "expectedTimestamp":Ljava/lang/String;
    new-instance v6, Lorg/chromium/base/ResourceExtractor$ExtractTask$1;

    invoke-direct {v6, p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask$1;-><init>(Lorg/chromium/base/ResourceExtractor$ExtractTask;)V

    invoke-virtual {p1, v6}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v5

    .line 289
    .local v5, "timestamps":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 295
    aget-object v6, v5, v10

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 300
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doInBackgroundImpl()V
    .locals 34

    .prologue
    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lorg/chromium/base/ResourceExtractor;->access$000(Lorg/chromium/base/ResourceExtractor;)Ljava/io/File;

    move-result-object v24

    .line 76
    .local v24, "outputDir":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lorg/chromium/base/ResourceExtractor;->access$100(Lorg/chromium/base/ResourceExtractor;)Ljava/io/File;

    move-result-object v4

    .line 77
    .local v4, "appDataDir":Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v29

    if-nez v29, :cond_1

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->mkdirs()Z

    move-result v29

    if-nez v29, :cond_1

    .line 78
    const-string v29, "ResourceExtractor"

    const-string v30, "Unable to create pak resources directory!"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const/16 v28, 0x0

    .line 83
    .local v28, "timestampFile":Ljava/lang/String;
    const-string v29, "checkPakTimeStamp"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->beginTraceSection(Ljava/lang/String;)V

    .line 85
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->checkPakTimestamp(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v28

    .line 87
    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    .line 89
    if-eqz v28, :cond_2

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lorg/chromium/base/ResourceExtractor;->access$200(Lorg/chromium/base/ResourceExtractor;)V

    .line 93
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lorg/chromium/base/ResourceExtractor;->access$300(Lorg/chromium/base/ResourceExtractor;)Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v27

    .line 95
    .local v27, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Lorg/chromium/base/LocaleUtils;->getDefaultLocale()Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, "currentLocale":Ljava/lang/String;
    const-string v29, "-"

    const/16 v30, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    aget-object v8, v29, v30

    .line 99
    .local v8, "currentLanguage":Ljava/lang/String;
    const-string v29, "Last language"

    const-string v30, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 100
    const/4 v15, 0x1

    .line 101
    .local v15, "filesPresent":Z
    invoke-static {}, Lorg/chromium/base/ResourceExtractor;->access$400()[Ljava/lang/String;

    move-result-object v5

    .local v5, "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget-object v12, v5, v16

    .line 102
    .local v12, "file":Ljava/lang/String;
    invoke-static {v12}, Lorg/chromium/base/ResourceExtractor;->access$500(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_5

    move-object v10, v4

    .line 103
    .local v10, "directory":Ljava/io/File;
    :goto_2
    new-instance v29, Ljava/io/File;

    move-object/from16 v0, v29

    invoke-direct {v0, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->exists()Z

    move-result v29

    if-nez v29, :cond_6

    .line 104
    const/4 v15, 0x0

    .line 108
    .end local v10    # "directory":Ljava/io/File;
    .end local v12    # "file":Ljava/lang/String;
    :cond_3
    if-nez v15, :cond_0

    .line 113
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v15    # "filesPresent":Z
    .end local v16    # "i$":I
    .end local v18    # "len$":I
    :goto_3
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v25, "p":Ljava/lang/StringBuilder;
    invoke-static {}, Lorg/chromium/base/ResourceExtractor;->access$400()[Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v18, v0

    .restart local v18    # "len$":I
    const/16 v16, 0x0

    .restart local v16    # "i$":I
    :goto_4
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    aget-object v20, v5, v16

    .line 115
    .local v20, "mandatoryPak":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->length()I

    move-result v29

    if-lez v29, :cond_4

    const/16 v29, 0x7c

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    :cond_4
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "\\Q"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\\E"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 87
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v8    # "currentLanguage":Ljava/lang/String;
    .end local v9    # "currentLocale":Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v18    # "len$":I
    .end local v20    # "mandatoryPak":Ljava/lang/String;
    .end local v25    # "p":Ljava/lang/StringBuilder;
    .end local v27    # "prefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v29

    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    throw v29

    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v8    # "currentLanguage":Ljava/lang/String;
    .restart local v9    # "currentLocale":Ljava/lang/String;
    .restart local v12    # "file":Ljava/lang/String;
    .restart local v15    # "filesPresent":Z
    .restart local v16    # "i$":I
    .restart local v18    # "len$":I
    .restart local v27    # "prefs":Landroid/content/SharedPreferences;
    :cond_5
    move-object/from16 v10, v24

    .line 102
    goto :goto_2

    .line 101
    .restart local v10    # "directory":Ljava/io/File;
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 110
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "directory":Ljava/io/File;
    .end local v12    # "file":Ljava/lang/String;
    .end local v15    # "filesPresent":Z
    .end local v16    # "i$":I
    .end local v18    # "len$":I
    :cond_7
    invoke-interface/range {v27 .. v27}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v29

    const-string v30, "Last language"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    .line 119
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v16    # "i$":I
    .restart local v18    # "len$":I
    .restart local v25    # "p":Ljava/lang/StringBuilder;
    :cond_8
    invoke-static {}, Lorg/chromium/base/ResourceExtractor;->access$600()Z

    move-result v29

    if-eqz v29, :cond_a

    .line 120
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->length()I

    move-result v29

    if-lez v29, :cond_9

    const/16 v29, 0x7c

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    :cond_9
    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v29, "(-\\w+)?\\.pak"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_a
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v26

    .line 130
    .local v26, "paksToInstall":Ljava/util/regex/Pattern;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lorg/chromium/base/ResourceExtractor;->access$300(Lorg/chromium/base/ResourceExtractor;)Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    .line 131
    .local v19, "manager":Landroid/content/res/AssetManager;
    const-string v29, "WalkAssets"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->beginTraceSection(Ljava/lang/String;)V

    .line 136
    const/4 v6, 0x0

    .line 137
    .local v6, "buffer":[B
    :try_start_1
    const-string v29, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 138
    .local v13, "files":[Ljava/lang/String;
    invoke-static {}, Lorg/chromium/base/ResourceExtractor;->access$700()Lorg/chromium/base/ResourceExtractor$ResourceIntercepter;

    move-result-object v29

    if-eqz v29, :cond_c

    .line 139
    invoke-static {}, Lorg/chromium/base/ResourceExtractor;->access$700()Lorg/chromium/base/ResourceExtractor$ResourceIntercepter;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/chromium/base/ResourceExtractor$ResourceIntercepter;->getInterceptableResourceList()Ljava/util/Set;

    move-result-object v14

    .line 141
    .local v14, "filesIncludingInterceptableFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v14, :cond_c

    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_c

    .line 143
    move-object v5, v13

    array-length v0, v5

    move/from16 v18, v0

    const/16 v16, 0x0

    :goto_5
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    aget-object v12, v5, v16

    .line 144
    .restart local v12    # "file":Ljava/lang/String;
    invoke-interface {v14, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 146
    .end local v12    # "file":Ljava/lang/String;
    :cond_b
    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v29

    move/from16 v0, v29

    new-array v13, v0, [Ljava/lang/String;

    .line 147
    invoke-interface {v14, v13}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 150
    .end local v14    # "filesIncludingInterceptableFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_c
    move-object v5, v13

    array-length v0, v5

    move/from16 v18, v0

    const/16 v16, 0x0

    :goto_6
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_1c

    aget-object v12, v5, v16

    .line 151
    .restart local v12    # "file":Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/regex/Matcher;->matches()Z

    move-result v29

    if-nez v29, :cond_e

    .line 150
    :cond_d
    :goto_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 154
    :cond_e
    new-instance v23, Ljava/io/File;

    invoke-static {v12}, Lorg/chromium/base/ResourceExtractor;->access$500(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_14

    move-object/from16 v29, v4

    :goto_8
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    .local v23, "output":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v29

    if-nez v29, :cond_d

    .line 159
    const/16 v17, 0x0

    .line 160
    .local v17, "is":Ljava/io/InputStream;
    const/16 v21, 0x0

    .line 161
    .local v21, "os":Ljava/io/OutputStream;
    const-string v29, "ExtractResource"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->beginTraceSection(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 163
    :try_start_2
    invoke-static {}, Lorg/chromium/base/ResourceExtractor;->access$700()Lorg/chromium/base/ResourceExtractor$ResourceIntercepter;

    move-result-object v29

    if-eqz v29, :cond_f

    .line 164
    invoke-static {}, Lorg/chromium/base/ResourceExtractor;->access$700()Lorg/chromium/base/ResourceExtractor$ResourceIntercepter;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v0, v12}, Lorg/chromium/base/ResourceExtractor$ResourceIntercepter;->interceptLoadingForResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    .line 166
    :cond_f
    if-nez v17, :cond_10

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    .line 167
    :cond_10
    new-instance v22, Ljava/io/FileOutputStream;

    invoke-direct/range {v22 .. v23}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 168
    .end local v21    # "os":Ljava/io/OutputStream;
    .local v22, "os":Ljava/io/OutputStream;
    :try_start_3
    const-string v29, "ResourceExtractor"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Extracting resource "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-nez v6, :cond_11

    .line 170
    const/16 v29, 0x4000

    move/from16 v0, v29

    new-array v6, v0, [B

    .line 173
    :cond_11
    const/4 v7, 0x0

    .line 174
    .local v7, "count":I
    :goto_9
    const/16 v29, 0x0

    const/16 v30, 0x4000

    move-object/from16 v0, v17

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v7, v0, :cond_15

    .line 175
    const/16 v29, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v6, v1, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_9

    .line 190
    .end local v7    # "count":I
    :catchall_1
    move-exception v29

    move-object/from16 v21, v22

    .line 191
    .end local v22    # "os":Ljava/io/OutputStream;
    .restart local v21    # "os":Ljava/io/OutputStream;
    :goto_a
    if-eqz v17, :cond_12

    .line 192
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 195
    :cond_12
    if-eqz v21, :cond_13

    .line 196
    :try_start_5
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V

    .line 198
    :cond_13
    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    throw v29
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 202
    .end local v12    # "file":Ljava/lang/String;
    .end local v13    # "files":[Ljava/lang/String;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v21    # "os":Ljava/io/OutputStream;
    .end local v23    # "output":Ljava/io/File;
    :catch_0
    move-exception v11

    .line 207
    .local v11, "e":Ljava/io/IOException;
    :try_start_6
    const-string v29, "ResourceExtractor"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Exception unpacking required pak resources: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lorg/chromium/base/ResourceExtractor;->access$200(Lorg/chromium/base/ResourceExtractor;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 211
    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    goto/16 :goto_0

    .end local v11    # "e":Ljava/io/IOException;
    .restart local v12    # "file":Ljava/lang/String;
    .restart local v13    # "files":[Ljava/lang/String;
    :cond_14
    move-object/from16 v29, v24

    .line 154
    goto/16 :goto_8

    .line 177
    .restart local v7    # "count":I
    .restart local v17    # "is":Ljava/io/InputStream;
    .restart local v22    # "os":Ljava/io/OutputStream;
    .restart local v23    # "output":Ljava/io/File;
    :cond_15
    :try_start_7
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->flush()V

    .line 180
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v30

    const-wide/16 v32, 0x0

    cmp-long v29, v30, v32

    if-nez v29, :cond_16

    .line 181
    new-instance v29, Ljava/io/IOException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " extracted with 0 length!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 184
    :cond_16
    invoke-static {v12}, Lorg/chromium/base/ResourceExtractor;->access$500(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_17

    .line 187
    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 191
    :cond_17
    if-eqz v17, :cond_18

    .line 192
    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 195
    :cond_18
    if-eqz v22, :cond_19

    .line 196
    :try_start_9
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V

    .line 198
    :cond_19
    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_7

    .line 211
    .end local v7    # "count":I
    .end local v12    # "file":Ljava/lang/String;
    .end local v13    # "files":[Ljava/lang/String;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v22    # "os":Ljava/io/OutputStream;
    .end local v23    # "output":Ljava/io/File;
    :catchall_2
    move-exception v29

    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    throw v29

    .line 195
    .restart local v7    # "count":I
    .restart local v12    # "file":Ljava/lang/String;
    .restart local v13    # "files":[Ljava/lang/String;
    .restart local v17    # "is":Ljava/io/InputStream;
    .restart local v22    # "os":Ljava/io/OutputStream;
    .restart local v23    # "output":Ljava/io/File;
    :catchall_3
    move-exception v29

    if-eqz v22, :cond_1a

    .line 196
    :try_start_a
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V

    .line 198
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    throw v29

    .line 195
    .end local v7    # "count":I
    .end local v22    # "os":Ljava/io/OutputStream;
    .restart local v21    # "os":Ljava/io/OutputStream;
    :catchall_4
    move-exception v29

    if-eqz v21, :cond_1b

    .line 196
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V

    .line 198
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    throw v29
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 211
    .end local v12    # "file":Ljava/lang/String;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v21    # "os":Ljava/io/OutputStream;
    .end local v23    # "output":Ljava/io/File;
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    .line 215
    if-eqz v28, :cond_0

    .line 217
    :try_start_b
    new-instance v29, Ljava/io/File;

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->createNewFile()Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_0

    .line 218
    :catch_1
    move-exception v11

    .line 221
    .restart local v11    # "e":Ljava/io/IOException;
    const-string v29, "ResourceExtractor"

    const-string v30, "Failed to write resource pak timestamp!"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 190
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v12    # "file":Ljava/lang/String;
    .restart local v17    # "is":Ljava/io/InputStream;
    .restart local v21    # "os":Ljava/io/OutputStream;
    .restart local v23    # "output":Ljava/io/File;
    :catchall_5
    move-exception v29

    goto/16 :goto_a
.end method

.method private endTraceSection()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 311
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0
.end method

.method private onPostExecuteImpl()V
    .locals 2

    .prologue
    .line 242
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->mCompletionCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 243
    iget-object v1, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->mCompletionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_0
    iget-object v1, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->mCompletionCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 246
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "unused"    # [Ljava/lang/Void;

    .prologue
    .line 232
    const-string v0, "ResourceExtractor.ExtractTask.doInBackground"

    invoke-direct {p0, v0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->beginTraceSection(Ljava/lang/String;)V

    .line 234
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->doInBackgroundImpl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    .line 238
    const/4 v0, 0x0

    return-object v0

    .line 236
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 66
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 250
    const-string v0, "ResourceExtractor.ExtractTask.onPostExecute"

    invoke-direct {p0, v0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->beginTraceSection(Ljava/lang/String;)V

    .line 252
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->onPostExecuteImpl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    .line 256
    return-void

    .line 254
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->endTraceSection()V

    throw v0
.end method
