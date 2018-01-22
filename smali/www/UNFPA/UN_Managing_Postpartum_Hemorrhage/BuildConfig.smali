.class public final Lwww/UNFPA/UN_Managing_Postpartum_Hemorrhage/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "www.UNFPA.UN_Managing_Postpartum_Hemorrhage"

.field public static final BUILD_TYPE:Ljava/lang/String; = "debug"

.field public static final DEBUG:Z

.field public static final FLAVOR:Ljava/lang/String; = "armv7"

.field public static final VERSION_CODE:I = 0xc

.field public static final VERSION_NAME:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "true"

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lwww/UNFPA/UN_Managing_Postpartum_Hemorrhage/BuildConfig;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lwww/UNFPA/UN_Managing_Postpartum_Hemorrhage/BuildConfig;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
