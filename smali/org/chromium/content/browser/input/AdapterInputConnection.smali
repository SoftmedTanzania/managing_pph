.class public Lorg/chromium/content/browser/input/AdapterInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "AdapterInputConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/input/AdapterInputConnection$ImeState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final INVALID_COMPOSITION:I = -0x1

.field public static final INVALID_SELECTION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "cr.InputConnection"


# instance fields
.field private final mEditable:Landroid/text/Editable;

.field private final mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

.field private final mInternalView:Landroid/view/View;

.field private mLastUpdateCompositionEnd:I

.field private mLastUpdateCompositionStart:I

.field private mLastUpdateSelectionEnd:I

.field private mLastUpdateSelectionStart:I

.field private mNumNestedBatchEdits:I

.field private mPendingAccent:I

.field private mSingleLine:Z


# direct methods
.method constructor <init>(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;Landroid/text/Editable;Landroid/view/inputmethod/EditorInfo;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "imeAdapter"    # Lorg/chromium/content/browser/input/ImeAdapter;
    .param p3, "editable"    # Landroid/text/Editable;
    .param p4, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const/16 v7, 0xf

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 56
    invoke-direct {p0, p1, v4}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 45
    iput v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    .line 48
    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionStart:I

    .line 49
    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionEnd:I

    .line 50
    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionStart:I

    .line 51
    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionEnd:I

    .line 57
    iput-object p1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mInternalView:Landroid/view/View;

    .line 58
    iput-object p2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    .line 59
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v2, p0}, Lorg/chromium/content/browser/input/ImeAdapter;->setInputConnection(Lorg/chromium/content/browser/input/AdapterInputConnection;)V

    .line 60
    iput-object p3, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    .line 65
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->finishComposingText()Z

    .line 67
    iput-boolean v4, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mSingleLine:Z

    .line 68
    const/high16 v2, 0x12000000

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 70
    const/16 v2, 0xa1

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 73
    invoke-virtual {p2}, Lorg/chromium/content/browser/input/ImeAdapter;->getTextInputType()I

    move-result v1

    .line 74
    .local v1, "inputType":I
    invoke-virtual {p2}, Lorg/chromium/content/browser/input/ImeAdapter;->getTextInputFlags()I

    move-result v0

    .line 75
    .local v0, "inputFlags":I
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    .line 76
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 79
    :cond_0
    if-ne v1, v4, :cond_4

    .line 81
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 82
    and-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_1

    .line 83
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v3, 0x8000

    or-int/2addr v2, v3

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 129
    :cond_1
    :goto_0
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_d

    .line 130
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 137
    :cond_2
    :goto_1
    if-ne v1, v7, :cond_3

    .line 138
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 141
    :cond_3
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 142
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 143
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionStart:I

    .line 144
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionEnd:I

    .line 147
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    iget v3, p4, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v4, p4, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-static {v2, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 148
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 149
    return-void

    .line 85
    :cond_4
    const/16 v2, 0xe

    if-eq v1, v2, :cond_5

    if-ne v1, v7, :cond_7

    .line 87
    :cond_5
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 88
    and-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_6

    .line 89
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v3, 0x8000

    or-int/2addr v2, v3

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 91
    :cond_6
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 92
    iput-boolean v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mSingleLine:Z

    goto :goto_0

    .line 93
    :cond_7
    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 95
    const/16 v2, 0xe1

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 97
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 98
    :cond_8
    if-ne v1, v6, :cond_9

    .line 100
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x3

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 101
    :cond_9
    const/4 v2, 0x7

    if-ne v1, v2, :cond_a

    .line 103
    const/16 v2, 0x11

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 105
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 106
    :cond_a
    const/4 v2, 0x4

    if-ne v1, v2, :cond_b

    .line 108
    const/16 v2, 0xd1

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 110
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto/16 :goto_0

    .line 111
    :cond_b
    const/4 v2, 0x6

    if-ne v1, v2, :cond_c

    .line 115
    iput v6, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 116
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x5

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto/16 :goto_0

    .line 117
    :cond_c
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 119
    const/16 v2, 0x2002

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 122
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x5

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto/16 :goto_0

    .line 131
    :cond_d
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_e

    .line 132
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto/16 :goto_1

    .line 133
    :cond_e
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_2

    .line 134
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto/16 :goto_1
.end method

.method private deleteSurroundingTextImpl(IIZ)Z
    .locals 16
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I
    .param p3, "fromPhysicalKey"    # Z

    .prologue
    .line 375
    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    if-eqz v2, :cond_0

    .line 376
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->finishComposingText()Z

    .line 379
    :cond_0
    move/from16 v12, p1

    .line 380
    .local v12, "originalBeforeLength":I
    move/from16 v11, p2

    .line 381
    .local v11, "originalAfterLength":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v15

    .line 382
    .local v15, "selectionStart":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v14

    .line 383
    .local v14, "selectionEnd":I
    move v10, v15

    .line 384
    .local v10, "availableBefore":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    sub-int v9, v2, v14

    .line 385
    .local v9, "availableAfter":I
    move/from16 v0, p1

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 386
    move/from16 v0, p2

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    sub-int v3, v15, p1

    invoke-static {v2, v3}, Lorg/chromium/content/browser/input/AdapterInputConnection;->isIndexBetweenUtf16SurrogatePair(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 391
    add-int/lit8 p1, p1, 0x1

    .line 393
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    add-int v3, v14, p2

    invoke-static {v2, v3}, Lorg/chromium/content/browser/input/AdapterInputConnection;->isIndexBetweenUtf16SurrogatePair(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 394
    add-int/lit8 p2, p2, 0x1

    .line 397
    :cond_2
    invoke-super/range {p0 .. p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    .line 398
    invoke-direct/range {p0 .. p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 402
    if-eqz p3, :cond_3

    .line 403
    const/4 v13, 0x1

    .line 427
    :goto_0
    return v13

    .line 409
    :cond_3
    const/4 v6, 0x0

    .line 410
    .local v6, "keyCode":I
    const/4 v2, 0x1

    if-ne v12, v2, :cond_5

    if-nez v11, :cond_5

    .line 411
    const/16 v6, 0x43

    .line 416
    :cond_4
    :goto_1
    const/4 v13, 0x1

    .line 417
    .local v13, "result":Z
    if-nez v6, :cond_6

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/4 v3, 0x7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/chromium/content/browser/input/ImeAdapter;->sendSyntheticKeyEvent(IJIII)Z

    move-result v13

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->deleteSurroundingText(II)Z

    move-result v2

    and-int/2addr v13, v2

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/16 v3, 0x9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/chromium/content/browser/input/ImeAdapter;->sendSyntheticKeyEvent(IJIII)Z

    move-result v2

    and-int/2addr v13, v2

    goto :goto_0

    .line 412
    .end local v13    # "result":Z
    :cond_5
    if-nez v12, :cond_4

    const/4 v2, 0x1

    if-ne v11, v2, :cond_4

    .line 413
    const/16 v6, 0x70

    goto :goto_1

    .line 424
    .restart local v13    # "result":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/4 v3, 0x6

    invoke-virtual {v2, v6, v3}, Lorg/chromium/content/browser/input/ImeAdapter;->sendKeyEventWithKeyCode(II)V

    goto :goto_0
.end method

.method private getInputMethodManagerWrapper()Lorg/chromium/content/browser/input/InputMethodManagerWrapper;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->getInputMethodManagerWrapper()Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    move-result-object v0

    return-object v0
.end method

.method static isIndexBetweenUtf16SurrogatePair(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 364
    if-lez p1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybePerformEmptyCompositionWorkaround(Ljava/lang/CharSequence;)Z
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, -0x1

    .line 597
    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v5}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 598
    .local v4, "selectionStart":I
    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v5}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 599
    .local v3, "selectionEnd":I
    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v5}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .line 600
    .local v1, "compositionStart":I
    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v5}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v0

    .line 601
    .local v0, "compositionEnd":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-ne v4, v3, :cond_0

    if-eq v1, v6, :cond_0

    if-eq v0, v6, :cond_0

    .line 604
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->beginBatchEdit()Z

    .line 605
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->finishComposingText()Z

    .line 606
    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v5}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 607
    .local v2, "selection":I
    sub-int v5, v2, v1

    sub-int v6, v2, v0

    invoke-virtual {p0, v5, v6}, Lorg/chromium/content/browser/input/AdapterInputConnection;->deleteSurroundingText(II)Z

    .line 608
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->endBatchEdit()Z

    .line 609
    const/4 v5, 0x1

    .line 611
    .end local v2    # "selection":I
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private replaceSelectionWithUnicodeChar(I)V
    .locals 5
    .param p1, "unicodeChar"    # I

    .prologue
    .line 495
    if-nez p1, :cond_0

    .line 505
    :goto_0
    return-void

    .line 496
    :cond_0
    iget-object v3, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 497
    .local v1, "selectionStart":I
    iget-object v3, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 498
    .local v0, "selectionEnd":I
    if-le v1, v0, :cond_1

    .line 499
    move v2, v1

    .line 500
    .local v2, "temp":I
    move v1, v0

    .line 501
    move v0, v2

    .line 503
    .end local v2    # "temp":I
    :cond_1
    iget-object v3, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    int-to-char v4, p1

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v0, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 504
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    goto :goto_0
.end method

.method private updateSelectionIfRequired()V
    .locals 6

    .prologue
    .line 217
    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    if-eqz v0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 219
    .local v2, "selectionStart":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 220
    .local v3, "selectionEnd":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 221
    .local v4, "compositionStart":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 223
    .local v5, "compositionEnd":I
    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionStart:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionEnd:I

    if-ne v0, v3, :cond_2

    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionStart:I

    if-ne v0, v4, :cond_2

    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionEnd:I

    if-eq v0, v5, :cond_0

    .line 235
    :cond_2
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getInputMethodManagerWrapper()Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mInternalView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->updateSelection(Landroid/view/View;IIII)V

    .line 237
    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionStart:I

    .line 238
    iput v3, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionEnd:I

    .line 239
    iput v4, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionStart:I

    .line 240
    iput v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionEnd:I

    goto :goto_0
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    .line 333
    const/4 v0, 0x1

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 262
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/AdapterInputConnection;->maybePerformEmptyCompositionWorkaround(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    :goto_0
    return v0

    .line 263
    :cond_0
    iput v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    .line 264
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 265
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 266
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    :goto_1
    invoke-virtual {v2, p1, p2, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->checkCompositionQueueAndCallNative(Ljava/lang/CharSequence;IZ)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public deleteSurroundingText(II)Z
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    .line 353
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->deleteSurroundingTextImpl(IIZ)Z

    move-result v0

    return v0
.end method

.method public endBatchEdit()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 341
    iget v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    if-nez v1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v0

    .line 342
    :cond_1
    iget v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    .line 344
    iget v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    if-nez v1, :cond_2

    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 345
    :cond_2
    iget v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public finishComposingText()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 514
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    .line 516
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 524
    :goto_0
    return v2

    .line 520
    :cond_0
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    .line 521
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 522
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->finishComposingText()V

    goto :goto_0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 2
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .prologue
    .line 317
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 318
    .local v0, "et":Landroid/view/inputmethod/ExtractedText;
    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 319
    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 320
    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 321
    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 322
    iget-boolean v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mSingleLine:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 323
    return-object v0

    .line 322
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getImeStateForTesting()Lorg/chromium/content/browser/input/AdapterInputConnection$ImeState;
    .locals 6
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 634
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, "text":Ljava/lang/String;
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 636
    .local v2, "selectionStart":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 637
    .local v3, "selectionEnd":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 638
    .local v4, "compositionStart":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 639
    .local v5, "compositionEnd":I
    new-instance v0, Lorg/chromium/content/browser/input/AdapterInputConnection$ImeState;

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/input/AdapterInputConnection$ImeState;-><init>(Ljava/lang/String;IIII)V

    return-object v0
.end method

.method isActive()Z
    .locals 2

    .prologue
    .line 580
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getInputMethodManagerWrapper()Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mInternalView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->isActive(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public performContextMenuAction(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 296
    packed-switch p1, :pswitch_data_0

    .line 306
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 298
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->selectAll()Z

    move-result v0

    goto :goto_0

    .line 300
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->cut()Z

    move-result v0

    goto :goto_0

    .line 302
    :pswitch_2
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->copy()Z

    move-result v0

    goto :goto_0

    .line 304
    :pswitch_3
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->paste()Z

    move-result v0

    goto :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public performEditorAction(I)Z
    .locals 7
    .param p1, "actionCode"    # I

    .prologue
    const/4 v5, 0x0

    .line 276
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->restartInput()V

    .line 279
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 280
    .local v2, "timeStampMs":J
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/4 v1, 0x7

    const/16 v4, 0x3d

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/content/browser/input/ImeAdapter;->sendSyntheticKeyEvent(IJIII)Z

    .line 287
    .end local v2    # "timeStampMs":J
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 283
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/16 v1, 0x42

    const/16 v4, 0x16

    invoke-virtual {v0, v1, v4}, Lorg/chromium/content/browser/input/ImeAdapter;->sendKeyEventWithKeyCode(II)V

    goto :goto_0
.end method

.method restartInput()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 546
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getInputMethodManagerWrapper()Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mInternalView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->restartInput(Landroid/view/View;)V

    .line 547
    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    .line 548
    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    .line 549
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 440
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 441
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 442
    .local v3, "keycode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v5

    .line 447
    .local v5, "unicodeChar":I
    if-eqz v0, :cond_0

    .line 448
    iget-object v6, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v6, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->translateAndSendNativeEvents(Landroid/view/KeyEvent;)Z

    .line 486
    :goto_0
    return v7

    .line 456
    :cond_0
    const/16 v6, 0x43

    if-ne v3, v6, :cond_2

    .line 457
    invoke-direct {p0, v7, v8, v7}, Lorg/chromium/content/browser/input/AdapterInputConnection;->deleteSurroundingTextImpl(IIZ)Z

    .line 484
    :cond_1
    :goto_1
    invoke-direct {p0, v5}, Lorg/chromium/content/browser/input/AdapterInputConnection;->replaceSelectionWithUnicodeChar(I)V

    .line 485
    iget-object v6, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v6, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->translateAndSendNativeEvents(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 458
    :cond_2
    const/16 v6, 0x70

    if-ne v3, v6, :cond_3

    .line 459
    invoke-direct {p0, v8, v7, v7}, Lorg/chromium/content/browser/input/AdapterInputConnection;->deleteSurroundingTextImpl(IIZ)Z

    goto :goto_1

    .line 460
    :cond_3
    const/16 v6, 0x42

    if-ne v3, v6, :cond_4

    .line 463
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->finishComposingText()Z

    goto :goto_1

    .line 464
    :cond_4
    const/high16 v6, -0x80000000

    and-int/2addr v6, v5

    if-eqz v6, :cond_5

    .line 466
    const v6, 0x7fffffff

    and-int v4, v5, v6

    .line 467
    .local v4, "pendingAccent":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v7}, Lorg/chromium/content/browser/input/AdapterInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 470
    iput v4, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    goto :goto_0

    .line 472
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "pendingAccent":I
    :cond_5
    iget v6, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    .line 473
    iget v6, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    invoke-static {v6, v5}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v2

    .line 474
    .local v2, "combined":I
    if-eqz v2, :cond_6

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v7}, Lorg/chromium/content/browser/input/AdapterInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 482
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->finishComposingText()Z

    goto :goto_1
.end method

.method public setComposingRegion(II)Z
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 557
    iget-object v4, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v3

    .line 558
    .local v3, "textLength":I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 559
    .local v0, "a":I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 560
    .local v1, "b":I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 561
    :cond_0
    if-gez v1, :cond_1

    const/4 v1, 0x0

    .line 562
    :cond_1
    if-le v0, v3, :cond_2

    move v0, v3

    .line 563
    :cond_2
    if-le v1, v3, :cond_3

    move v1, v3

    .line 565
    :cond_3
    if-ne v0, v1, :cond_5

    .line 566
    iget-object v4, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v4}, Lorg/chromium/content/browser/input/AdapterInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 570
    :goto_0
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 572
    const/4 v2, 0x0

    .line 573
    .local v2, "regionText":Ljava/lang/CharSequence;
    if-le v1, v0, :cond_4

    .line 574
    iget-object v4, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v4, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 576
    :cond_4
    iget-object v4, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v4, v2, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->setComposingRegion(Ljava/lang/CharSequence;II)Z

    move-result v4

    return v4

    .line 568
    .end local v2    # "regionText":Ljava/lang/CharSequence;
    :cond_5
    invoke-super {p0, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    goto :goto_0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    const/4 v1, 0x0

    .line 249
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/AdapterInputConnection;->maybePerformEmptyCompositionWorkaround(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 253
    :goto_0
    return v0

    .line 250
    :cond_0
    iput v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    .line 251
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 252
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 253
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1, p2, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->checkCompositionQueueAndCallNative(Ljava/lang/CharSequence;IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public setSelection(II)Z
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 533
    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 534
    .local v0, "textLength":I
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-gt p1, v0, :cond_0

    if-le p2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 537
    :goto_0
    return v1

    .line 535
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setSelection(II)Z

    .line 536
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 537
    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v1, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->setEditableSelectionOffsets(II)Z

    move-result v1

    goto :goto_0
.end method

.method public updateState(Ljava/lang/String;IIIIZ)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "selectionStart"    # I
    .param p3, "selectionEnd"    # I
    .param p4, "compositionStart"    # I
    .param p5, "compositionEnd"    # I
    .param p6, "isNonImeChange"    # Z
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 177
    if-nez p6, :cond_0

    .line 202
    :goto_0
    return-void

    .line 180
    :cond_0
    const/16 v2, 0xa0

    const/16 v3, 0x20

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 183
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 184
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 185
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p5, v2}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 187
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "prevText":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 190
    .local v1, "textUnchanged":Z
    if-nez v1, :cond_1

    .line 191
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v2, v3, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 194
    :cond_1
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2, p2, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 196
    if-ne p4, p5, :cond_2

    .line 197
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2}, Lorg/chromium/content/browser/input/AdapterInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 201
    :goto_1
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    goto :goto_0

    .line 199
    :cond_2
    invoke-super {p0, p4, p5}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    goto :goto_1
.end method
