.class public Lorg/xwalk/core/internal/XWalkAutofillClient;
.super Ljava/lang/Object;
.source "XWalkAutofillClient.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "xwalk"
.end annotation


# instance fields
.field private mAutofillPopup:Lorg/chromium/ui/autofill/AutofillPopup;

.field private mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private final mNativeXWalkAutofillClient:J


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "nativeXWalkAutofillClient"    # J

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lorg/xwalk/core/internal/XWalkAutofillClient;->mNativeXWalkAutofillClient:J

    .line 35
    return-void
.end method

.method static synthetic access$000(Lorg/xwalk/core/internal/XWalkAutofillClient;)J
    .locals 2
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkAutofillClient;

    .prologue
    .line 22
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkAutofillClient;->mNativeXWalkAutofillClient:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/xwalk/core/internal/XWalkAutofillClient;JI)V
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkAutofillClient;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkAutofillClient;->nativeSuggestionSelected(JI)V

    return-void
.end method

.method private static addToAutofillSuggestionArray([Lorg/chromium/ui/autofill/AutofillSuggestion;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0, "array"    # [Lorg/chromium/ui/autofill/AutofillSuggestion;
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "uniqueId"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lorg/chromium/ui/autofill/AutofillSuggestion;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1, p4}, Lorg/chromium/ui/autofill/AutofillSuggestion;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, p0, p1

    .line 87
    return-void
.end method

.method public static create(J)Lorg/xwalk/core/internal/XWalkAutofillClient;
    .locals 2
    .param p0, "nativeClient"    # J
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lorg/xwalk/core/internal/XWalkAutofillClient;

    invoke-direct {v0, p0, p1}, Lorg/xwalk/core/internal/XWalkAutofillClient;-><init>(J)V

    return-object v0
.end method

.method private static createAutofillSuggestionArray(I)[Lorg/chromium/ui/autofill/AutofillSuggestion;
    .locals 1
    .param p0, "size"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 73
    new-array v0, p0, [Lorg/chromium/ui/autofill/AutofillSuggestion;

    return-object v0
.end method

.method private native nativeSuggestionSelected(JI)V
.end method

.method private showAutofillPopup(FFFFZ[Lorg/chromium/ui/autofill/AutofillSuggestion;)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "isRtl"    # Z
    .param p6, "suggestions"    # [Lorg/chromium/ui/autofill/AutofillSuggestion;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkAutofillClient;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkAutofillClient;->mAutofillPopup:Lorg/chromium/ui/autofill/AutofillPopup;

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Lorg/chromium/ui/autofill/AutofillPopup;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkAutofillClient;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkAutofillClient;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object v2

    new-instance v3, Lorg/xwalk/core/internal/XWalkAutofillClient$1;

    invoke-direct {v3, p0}, Lorg/xwalk/core/internal/XWalkAutofillClient$1;-><init>(Lorg/xwalk/core/internal/XWalkAutofillClient;)V

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/ui/autofill/AutofillPopup;-><init>(Landroid/content/Context;Lorg/chromium/ui/base/ViewAndroidDelegate;Lorg/chromium/ui/autofill/AutofillPopup$AutofillPopupDelegate;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkAutofillClient;->mAutofillPopup:Lorg/chromium/ui/autofill/AutofillPopup;

    .line 60
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkAutofillClient;->mAutofillPopup:Lorg/chromium/ui/autofill/AutofillPopup;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/ui/autofill/AutofillPopup;->setAnchorRect(FFFF)V

    .line 61
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkAutofillClient;->mAutofillPopup:Lorg/chromium/ui/autofill/AutofillPopup;

    invoke-virtual {v0, p6, p5}, Lorg/chromium/ui/autofill/AutofillPopup;->filterAndShow([Lorg/chromium/ui/autofill/AutofillSuggestion;Z)V

    goto :goto_0
.end method


# virtual methods
.method public hideAutofillPopup()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkAutofillClient;->mAutofillPopup:Lorg/chromium/ui/autofill/AutofillPopup;

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkAutofillClient;->mAutofillPopup:Lorg/chromium/ui/autofill/AutofillPopup;

    invoke-virtual {v0}, Lorg/chromium/ui/autofill/AutofillPopup;->dismiss()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkAutofillClient;->mAutofillPopup:Lorg/chromium/ui/autofill/AutofillPopup;

    goto :goto_0
.end method

.method public init(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0
    .param p1, "contentViewCore"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 38
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkAutofillClient;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 39
    return-void
.end method
