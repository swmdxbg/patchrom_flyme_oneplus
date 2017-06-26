.class public Lcom/android/settings_ex/SelectableEditTextPreference;
.super Landroid/preference/EditTextPreference;
.source "SelectableEditTextPreference.java"


# static fields
.field public static final SELECTION_CURSOR_END:I = 0x0

.field public static final SELECTION_CURSOR_START:I = 0x1

.field public static final SELECTION_SELECT_ALL:I = 0x2


# instance fields
.field private mSelectionMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings_ex/SelectableEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 54
    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v1

    .line 55
    .local v1, "length":I
    :goto_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 56
    iget v3, p0, Lcom/android/settings_ex/SelectableEditTextPreference;->mSelectionMode:I

    packed-switch v3, :pswitch_data_0

    .line 68
    :cond_0
    :goto_1
    return-void

    .end local v1    # "length":I
    :cond_1
    move v1, v2

    .line 54
    goto :goto_0

    .line 58
    .restart local v1    # "length":I
    :pswitch_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    .line 61
    :pswitch_1
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    .line 64
    :pswitch_2
    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_1

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setInitialSelectionMode(I)V
    .locals 0
    .param p1, "selectionMode"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/android/settings_ex/SelectableEditTextPreference;->mSelectionMode:I

    .line 46
    return-void
.end method
