.class Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$2;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localEffectiveUserId:I

.field final synthetic val$pattern:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;Landroid/content/Intent;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iput-object p2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$2;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$2;->val$pattern:Ljava/util/List;

    iput p4, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$2;->val$localEffectiveUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 6
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v0, v0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$202(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 478
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    # invokes: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->isInternalActivity()Z
    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->access$600(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$2;->val$intent:Landroid/content/Intent;

    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 481
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$2;->val$intent:Landroid/content/Intent;

    const-string v1, "password"

    iget-object v2, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$2;->val$pattern:Ljava/util/List;

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$2;->this$1:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$2;->val$pattern:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$2;->val$intent:Landroid/content/Intent;

    iget v5, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4$2;->val$localEffectiveUserId:I

    move v2, p1

    move v4, p2

    # invokes: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->onPatternChecked(Ljava/util/List;ZLandroid/content/Intent;II)V
    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;->access$500(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$4;Ljava/util/List;ZLandroid/content/Intent;II)V

    .line 486
    return-void
.end method
