.class public abstract Lcom/oneplus/settings/ui/CustomDialogPreference;
.super Landroid/support/v7/preference/Preference;
.source "CustomDialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;
    }
.end annotation


# instance fields
.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogLayoutResId:I

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mNeutralButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/ui/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    sget-object v1, Lcom/android/internal/R$styleable;->DialogPreference:[I

    .line 72
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 75
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 77
    iget v1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialogLayoutResId:I

    .line 76
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialogLayoutResId:I

    .line 78
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getDialogLayoutResource()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialogLayoutResId:I

    return v0
.end method

.method public getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNeutralButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mNeutralButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 349
    return-void

    .line 351
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 308
    return-void
.end method

.method protected onClick()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 234
    iget-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 236
    :cond_0
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 233
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 313
    iput p2, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mWhichButtonClicked:I

    .line 312
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 293
    iget v1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialogLayoutResId:I

    if-nez v1, :cond_0

    .line 294
    return-object v2

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 298
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected onDialogClosed(I)V
    .locals 0
    .param p1, "whichButton"    # I

    .prologue
    .line 330
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialog:Landroid/app/Dialog;

    .line 321
    iget v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mWhichButtonClicked:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onDialogClosed(I)V

    .line 317
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 229
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 372
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 378
    check-cast v0, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;

    .line 379
    .local v0, "myState":Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/support/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 380
    iget-boolean v1, v0, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, v0, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 371
    :cond_0
    return-void

    .line 374
    .end local v0    # "myState":Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 375
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 359
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 360
    .local v1, "superState":Landroid/os/Parcelable;
    iget-object v2, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    new-instance v0, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 365
    .local v0, "myState":Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;->isDialogShowing:Z

    .line 366
    iget-object v2, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    .line 367
    return-object v0

    .line 361
    .end local v0    # "myState":Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;
    :cond_0
    return-object v1
.end method

.method public setDialogLayoutResource(I)V
    .locals 0
    .param p1, "dialogLayoutResId"    # I

    .prologue
    .line 207
    iput p1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialogLayoutResId:I

    .line 206
    return-void
.end method

.method public setNegativeButtonText(I)V
    .locals 1
    .param p1, "negativeButtonTextResId"    # I

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "negativeButtonText"    # Ljava/lang/CharSequence;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 138
    return-void
.end method

.method public setNeutralButtonText(I)V
    .locals 1
    .param p1, "neutralButtonTextResId"    # I

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->setNeutralButtonText(Ljava/lang/CharSequence;)V

    .line 182
    return-void
.end method

.method public setNeutralButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "neutralButtonText"    # Ljava/lang/CharSequence;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 172
    return-void
.end method

.method public setPositiveButtonText(I)V
    .locals 1
    .param p1, "positiveButtonTextResId"    # I

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/CharSequence;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 104
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 249
    .local v1, "context":Landroid/content/Context;
    const/4 v3, -0x2

    iput v3, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mWhichButtonClicked:I

    .line 251
    new-instance v3, Landroid/app/AlertDialog$Builder;

    const v4, 0x7f100417

    invoke-direct {v3, v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 253
    iget-object v3, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 254
    iget-object v3, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 257
    :cond_0
    iget-object v3, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 258
    iget-object v3, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 261
    :cond_1
    iget-object v3, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 262
    iget-object v3, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mNeutralButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 265
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    .line 266
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 267
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 268
    iget-object v3, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 271
    :cond_3
    iget-object v3, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 276
    iget-object v3, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialog:Landroid/app/Dialog;

    .line 277
    .local v2, "dialog":Landroid/app/Dialog;
    if-eqz p1, :cond_4

    .line 278
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 280
    :cond_4
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 281
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 246
    return-void
.end method
