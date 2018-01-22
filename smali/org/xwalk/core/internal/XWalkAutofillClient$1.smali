.class Lorg/xwalk/core/internal/XWalkAutofillClient$1;
.super Ljava/lang/Object;
.source "XWalkAutofillClient.java"

# interfaces
.implements Lorg/chromium/ui/autofill/AutofillPopup$AutofillPopupDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/internal/XWalkAutofillClient;->showAutofillPopup(FFFFZ[Lorg/chromium/ui/autofill/AutofillSuggestion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/internal/XWalkAutofillClient;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkAutofillClient;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkAutofillClient$1;->this$0:Lorg/xwalk/core/internal/XWalkAutofillClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissed()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public suggestionSelected(I)V
    .locals 4
    .param p1, "listIndex"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkAutofillClient$1;->this$0:Lorg/xwalk/core/internal/XWalkAutofillClient;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkAutofillClient$1;->this$0:Lorg/xwalk/core/internal/XWalkAutofillClient;

    invoke-static {v1}, Lorg/xwalk/core/internal/XWalkAutofillClient;->access$000(Lorg/xwalk/core/internal/XWalkAutofillClient;)J

    move-result-wide v2

    invoke-static {v0, v2, v3, p1}, Lorg/xwalk/core/internal/XWalkAutofillClient;->access$100(Lorg/xwalk/core/internal/XWalkAutofillClient;JI)V

    .line 57
    return-void
.end method
