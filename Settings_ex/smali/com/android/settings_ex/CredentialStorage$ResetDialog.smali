.class Lcom/android/settings_ex/CredentialStorage$ResetDialog;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetDialog"
.end annotation


# instance fields
.field private mResetConfirmed:Z

.field final synthetic this$0:Lcom/android/settings_ex/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/CredentialStorage;)V
    .locals 3

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/settings_ex/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    new-instance v1, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0a04

    invoke-virtual {v1, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v0

    .line 320
    .local v0, "dialog":Lcom/oneplus/app/OPAlertDialog;
    invoke-virtual {v0, p0}, Lcom/oneplus/app/OPAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 321
    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog;->show()V

    .line 322
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/CredentialStorage;Lcom/android/settings_ex/CredentialStorage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/CredentialStorage;
    .param p2, "x1"    # Lcom/android/settings_ex/CredentialStorage$1;

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CredentialStorage$ResetDialog;-><init>(Lcom/android/settings_ex/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 325
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    .line 326
    return-void

    .line 325
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x0

    .line 329
    iget-boolean v0, p0, Lcom/android/settings_ex/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    if-eqz v0, :cond_0

    .line 330
    iput-boolean v3, p0, Lcom/android/settings_ex/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    .line 331
    new-instance v0, Lcom/android/settings_ex/CredentialStorage$ResetKeyStoreAndKeyChain;

    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/android/settings_ex/CredentialStorage;Lcom/android/settings_ex/CredentialStorage$1;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/CredentialStorage$ResetKeyStoreAndKeyChain;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 335
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    invoke-virtual {v0}, Lcom/android/settings_ex/CredentialStorage;->finish()V

    goto :goto_0
.end method
