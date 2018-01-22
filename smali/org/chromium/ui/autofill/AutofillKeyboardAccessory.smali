.class public Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;
.super Landroid/widget/ListView;
.source "AutofillKeyboardAccessory.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lorg/chromium/ui/base/WindowAndroid$KeyboardVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/autofill/AutofillKeyboardAccessory$AutofillKeyboardAccessoryDelegate;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAutofillCallback:Lorg/chromium/ui/autofill/AutofillKeyboardAccessory$AutofillKeyboardAccessoryDelegate;

.field private final mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/ui/autofill/AutofillKeyboardAccessory$AutofillKeyboardAccessoryDelegate;)V
    .locals 2
    .param p1, "windowAndroid"    # Lorg/chromium/ui/base/WindowAndroid;
    .param p2, "autofillCallback"    # Lorg/chromium/ui/autofill/AutofillKeyboardAccessory$AutofillKeyboardAccessoryDelegate;

    .prologue
    .line 53
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 54
    sget-boolean v0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_0
    sget-boolean v0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :cond_1
    iput-object p1, p0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    .line 57
    iput-object p2, p0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->mAutofillCallback:Lorg/chromium/ui/autofill/AutofillKeyboardAccessory$AutofillKeyboardAccessoryDelegate;

    .line 59
    iget-object v0, p0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0, p0}, Lorg/chromium/ui/base/WindowAndroid;->addKeyboardVisibilityListener(Lorg/chromium/ui/base/WindowAndroid$KeyboardVisibilityListener;)V

    .line 60
    invoke-virtual {p0, p0}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 61
    invoke-virtual {p0}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/chromium/ui/R$string;->autofill_popup_content_description:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/ui/R$color;->keyboard_accessory_suggestion_background_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->setBackgroundColor(I)V

    .line 65
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 105
    iget-object v1, p0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v1}, Lorg/chromium/ui/base/WindowAndroid;->getKeyboardAccessoryView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 106
    .local v0, "container":Landroid/view/ViewGroup;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 107
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 108
    iget-object v1, p0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v1, p0}, Lorg/chromium/ui/base/WindowAndroid;->removeKeyboardVisibilityListener(Lorg/chromium/ui/base/WindowAndroid$KeyboardVisibilityListener;)V

    .line 109
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 110
    return-void
.end method

.method public keyboardVisibilityChanged(Z)V
    .locals 1
    .param p1, "isShowing"    # Z

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    invoke-virtual {p0}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->dismiss()V

    .line 121
    iget-object v0, p0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->mAutofillCallback:Lorg/chromium/ui/autofill/AutofillKeyboardAccessory$AutofillKeyboardAccessoryDelegate;

    invoke-interface {v0}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory$AutofillKeyboardAccessoryDelegate;->dismissed()V

    .line 123
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->mAutofillCallback:Lorg/chromium/ui/autofill/AutofillKeyboardAccessory$AutofillKeyboardAccessoryDelegate;

    invoke-interface {v0, p3}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory$AutofillKeyboardAccessoryDelegate;->suggestionSelected(I)V

    .line 115
    return-void
.end method

.method public showWithSuggestions([Lorg/chromium/ui/autofill/AutofillSuggestion;Z)V
    .locals 10
    .param p1, "suggestions"    # [Lorg/chromium/ui/autofill/AutofillSuggestion;
    .param p2, "isRtl"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x0

    .line 74
    new-instance v6, Lorg/chromium/ui/autofill/SuggestionAdapter;

    invoke-virtual {p0}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8, p1}, Lorg/chromium/ui/autofill/SuggestionAdapter;-><init>(Landroid/content/Context;[Lorg/chromium/ui/DropdownItem;)V

    invoke-virtual {p0, v6}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    if-eqz p2, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-static {p0, v6}, Lorg/chromium/base/ApiCompatibilityUtils;->setLayoutDirection(Landroid/view/View;I)V

    .line 78
    const/4 v1, -0x2

    .line 80
    .local v1, "height":I
    const/4 v5, 0x2

    .line 81
    .local v5, "suggestionLimit":I
    invoke-virtual {p0}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 82
    .local v3, "listAdapter":Landroid/widget/ListAdapter;
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-le v6, v9, :cond_1

    .line 83
    const/4 v1, 0x0

    .line 84
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v9, :cond_1

    .line 85
    const/4 v6, 0x0

    invoke-interface {v3, v2, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 86
    .local v4, "listItem":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v1, v6

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "height":I
    .end local v2    # "i":I
    .end local v3    # "listAdapter":Landroid/widget/ListAdapter;
    .end local v4    # "listItem":Landroid/view/View;
    .end local v5    # "suggestionLimit":I
    :cond_0
    move v6, v7

    .line 75
    goto :goto_0

    .line 90
    .restart local v1    # "height":I
    .restart local v3    # "listAdapter":Landroid/widget/ListAdapter;
    .restart local v5    # "suggestionLimit":I
    :cond_1
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v6, v8, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v6}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-virtual {p0}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_2

    .line 94
    iget-object v6, p0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v6}, Lorg/chromium/ui/base/WindowAndroid;->getKeyboardAccessoryView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 95
    .local v0, "container":Landroid/view/ViewGroup;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 96
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 97
    const/16 v6, 0x20

    invoke-virtual {p0, v6}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->sendAccessibilityEvent(I)V

    .line 99
    .end local v0    # "container":Landroid/view/ViewGroup;
    :cond_2
    return-void
.end method
