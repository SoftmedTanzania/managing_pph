.class public Lorg/chromium/content/browser/SelectActionModeCallback;
.super Ljava/lang/Object;
.source "SelectActionModeCallback.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;
    }
.end annotation


# instance fields
.field protected final mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

.field private final mContext:Landroid/content/Context;

.field private mEditable:Z

.field private mIsInsertion:Z

.field private mIsPasswordType:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionHandler"    # Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    .line 111
    return-void
.end method

.method private canPaste()Z
    .locals 3

    .prologue
    .line 233
    invoke-virtual {p0}, Lorg/chromium/content/browser/SelectActionModeCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 235
    .local v0, "clipMgr":Landroid/content/ClipboardManager;
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    return v1
.end method

.method private createActionMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 147
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    sget v2, Lorg/chromium/content/R$menu;->select_action_menu:I

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    iget-boolean v1, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mIsInsertion:Z

    if-eqz v1, :cond_1

    .line 157
    sget v1, Lorg/chromium/content/R$id;->select_action_menu_select_all:I

    invoke-interface {p2, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 158
    sget v1, Lorg/chromium/content/R$id;->select_action_menu_cut:I

    invoke-interface {p2, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 159
    sget v1, Lorg/chromium/content/R$id;->select_action_menu_copy:I

    invoke-interface {p2, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 160
    sget v1, Lorg/chromium/content/R$id;->select_action_menu_share:I

    invoke-interface {p2, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 161
    sget v1, Lorg/chromium/content/R$id;->select_action_menu_web_search:I

    invoke-interface {p2, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 185
    :cond_0
    :goto_1
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v1, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lorg/chromium/content/browser/SelectActionModeCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/chromium/content/R$menu;->select_action_menu:I

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 165
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    iget-boolean v1, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mEditable:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lorg/chromium/content/browser/SelectActionModeCallback;->canPaste()Z

    move-result v1

    if-nez v1, :cond_3

    .line 166
    :cond_2
    sget v1, Lorg/chromium/content/R$id;->select_action_menu_paste:I

    invoke-interface {p2, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 169
    :cond_3
    iget-boolean v1, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mEditable:Z

    if-nez v1, :cond_4

    .line 170
    sget v1, Lorg/chromium/content/R$id;->select_action_menu_cut:I

    invoke-interface {p2, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 173
    :cond_4
    iget-boolean v1, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mEditable:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    invoke-interface {v1}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->isShareAvailable()Z

    move-result v1

    if-nez v1, :cond_6

    .line 174
    :cond_5
    sget v1, Lorg/chromium/content/R$id;->select_action_menu_share:I

    invoke-interface {p2, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 177
    :cond_6
    iget-boolean v1, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mEditable:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    invoke-interface {v1}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->isIncognito()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    invoke-interface {v1}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->isWebSearchAvailable()Z

    move-result v1

    if-nez v1, :cond_8

    .line 178
    :cond_7
    sget v1, Lorg/chromium/content/R$id;->select_action_menu_web_search:I

    invoke-interface {p2, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 181
    :cond_8
    iget-boolean v1, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mIsPasswordType:Z

    if-eqz v1, :cond_0

    .line 182
    sget v1, Lorg/chromium/content/R$id;->select_action_menu_copy:I

    invoke-interface {p2, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 183
    sget v1, Lorg/chromium/content/R$id;->select_action_menu_cut:I

    invoke-interface {p2, v1}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 189
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 191
    .local v0, "id":I
    sget v1, Lorg/chromium/content/R$id;->select_action_menu_select_all:I

    if-ne v0, v1, :cond_0

    .line 192
    iget-object v1, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    invoke-interface {v1}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->selectAll()V

    .line 211
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 193
    :cond_0
    sget v1, Lorg/chromium/content/R$id;->select_action_menu_cut:I

    if-ne v0, v1, :cond_1

    .line 194
    iget-object v1, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    invoke-interface {v1}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->cut()V

    .line 195
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 196
    :cond_1
    sget v1, Lorg/chromium/content/R$id;->select_action_menu_copy:I

    if-ne v0, v1, :cond_2

    .line 197
    iget-object v1, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    invoke-interface {v1}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->copy()V

    .line 198
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 199
    :cond_2
    sget v1, Lorg/chromium/content/R$id;->select_action_menu_paste:I

    if-ne v0, v1, :cond_3

    .line 200
    iget-object v1, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    invoke-interface {v1}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->paste()V

    .line 201
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 202
    :cond_3
    sget v1, Lorg/chromium/content/R$id;->select_action_menu_share:I

    if-ne v0, v1, :cond_4

    .line 203
    iget-object v1, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    invoke-interface {v1}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->share()V

    .line 204
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 205
    :cond_4
    sget v1, Lorg/chromium/content/R$id;->select_action_menu_web_search:I

    if-ne v0, v1, :cond_5

    .line 206
    iget-object v1, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    invoke-interface {v1}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->search()V

    .line 207
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 209
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    invoke-interface {v0}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->isSelectionEditable()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mEditable:Z

    .line 122
    iget-object v0, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    invoke-interface {v0}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->isSelectionPassword()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mIsPasswordType:Z

    .line 123
    iget-object v0, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    invoke-interface {v0}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->isInsertion()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mIsInsertion:Z

    .line 124
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/SelectActionModeCallback;->createActionMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 216
    iget-object v0, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    invoke-interface {v0}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->onDestroyActionMode()V

    .line 217
    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 229
    iget-object v0, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    invoke-interface {v0, p3}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->onGetContentRect(Landroid/graphics/Rect;)V

    .line 230
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 130
    iget-object v3, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    invoke-interface {v3}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->isSelectionEditable()Z

    move-result v0

    .line 131
    .local v0, "isEditableNow":Z
    iget-object v3, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    invoke-interface {v3}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->isSelectionPassword()Z

    move-result v2

    .line 132
    .local v2, "isPasswordNow":Z
    iget-object v3, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    invoke-interface {v3}, Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;->isInsertion()Z

    move-result v1

    .line 133
    .local v1, "isInsertionNow":Z
    iget-boolean v3, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mEditable:Z

    if-ne v3, v0, :cond_0

    iget-boolean v3, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mIsPasswordType:Z

    if-ne v3, v2, :cond_0

    iget-boolean v3, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mIsInsertion:Z

    if-eq v3, v1, :cond_1

    .line 135
    :cond_0
    iput-boolean v0, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mEditable:Z

    .line 136
    iput-boolean v2, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mIsPasswordType:Z

    .line 137
    iput-boolean v1, p0, Lorg/chromium/content/browser/SelectActionModeCallback;->mIsInsertion:Z

    .line 138
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    .line 139
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/SelectActionModeCallback;->createActionMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 140
    const/4 v3, 0x1

    .line 142
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
