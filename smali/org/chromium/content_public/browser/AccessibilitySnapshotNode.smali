.class public Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;
.super Ljava/lang/Object;
.source "AccessibilitySnapshotNode.java"


# annotations
.annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
    value = {
        "URF_UNREAD_PUBLIC_OR_PROTECTED_FIELD"
    }
.end annotation


# instance fields
.field public bgcolor:I

.field public bold:Z

.field public children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;",
            ">;"
        }
    .end annotation
.end field

.field public className:Ljava/lang/String;

.field public color:I

.field public hasStyle:Z

.field public height:I

.field public italic:Z

.field public lineThrough:Z

.field public scrollX:I

.field public scrollY:I

.field public text:Ljava/lang/String;

.field public textSize:F

.field public underline:Z

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IIIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "text"    # Ljava/lang/String;
    .param p8, "className"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->children:Ljava/util/ArrayList;

    .line 35
    iput p1, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->x:I

    .line 36
    iput p2, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->y:I

    .line 37
    iput p3, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->scrollX:I

    .line 38
    iput p4, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->scrollY:I

    .line 39
    iput p5, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->width:I

    .line 40
    iput p6, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->height:I

    .line 41
    iput-object p7, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->text:Ljava/lang/String;

    .line 42
    iput-object p8, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->className:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public addChild(Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;)V
    .locals 1
    .param p1, "node"    # Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public setStyle(IIFZZZZ)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "bgcolor"    # I
    .param p3, "textSize"    # F
    .param p4, "bold"    # Z
    .param p5, "italic"    # Z
    .param p6, "underline"    # Z
    .param p7, "lineThrough"    # Z

    .prologue
    .line 47
    iput p1, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->color:I

    .line 48
    iput p2, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->bgcolor:I

    .line 49
    iput p3, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->textSize:F

    .line 50
    iput-boolean p4, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->bold:Z

    .line 51
    iput-boolean p5, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->italic:Z

    .line 52
    iput-boolean p6, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->underline:Z

    .line 53
    iput-boolean p7, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->lineThrough:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->hasStyle:Z

    .line 55
    return-void
.end method
