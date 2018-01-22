.class public Lwww/UNFPA/UN_Managing_Postpartum_Hemorrhage/MainActivity;
.super Lorg/apache/cordova/CordovaActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lwww/UNFPA/UN_Managing_Postpartum_Hemorrhage/MainActivity;
    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/cordova/CordovaActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lwww/UNFPA/UN_Managing_Postpartum_Hemorrhage/MainActivity;
    move-object v1, p1

    .local v1, "savedInstanceState":Landroid/os/Bundle;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/apache/cordova/CordovaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lwww/UNFPA/UN_Managing_Postpartum_Hemorrhage/MainActivity;->launchUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lwww/UNFPA/UN_Managing_Postpartum_Hemorrhage/MainActivity;->loadUrl(Ljava/lang/String;)V

    .line 33
    return-void
.end method
