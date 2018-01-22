.class public Lorg/chromium/ui/autofill/SuggestionAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SuggestionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lorg/chromium/ui/DropdownItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lorg/chromium/ui/DropdownItem;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "items"    # [Lorg/chromium/ui/DropdownItem;

    .prologue
    .line 25
    sget v0, Lorg/chromium/ui/R$layout;->autofill_suggestion_item:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 26
    iput-object p1, p0, Lorg/chromium/ui/autofill/SuggestionAdapter;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 31
    move-object v2, p2

    .line 32
    .local v2, "layout":Landroid/view/View;
    if-nez p2, :cond_0

    .line 33
    iget-object v3, p0, Lorg/chromium/ui/autofill/SuggestionAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v5, Lorg/chromium/ui/R$layout;->autofill_suggestion_item:I

    invoke-virtual {v3, v5, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 37
    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/ui/autofill/SuggestionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/DropdownItem;

    .local v0, "item":Lorg/chromium/ui/DropdownItem;
    move-object v1, v2

    .line 38
    check-cast v1, Landroid/widget/TextView;

    .line 39
    .local v1, "labelView":Landroid/widget/TextView;
    invoke-interface {v0}, Lorg/chromium/ui/DropdownItem;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-interface {v0}, Lorg/chromium/ui/DropdownItem;->getIconId()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lorg/chromium/ui/DropdownItem;->getIconId()I

    move-result v3

    :goto_0
    invoke-static {v1, v3, v4, v4, v4}, Lorg/chromium/base/ApiCompatibilityUtils;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V

    .line 43
    return-object v2

    :cond_1
    move v3, v4

    .line 40
    goto :goto_0
.end method
