.class Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$1;
.super Landroid/os/Handler;
.source "ChooseLockComplexPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 166
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment$Stage;)V

    .line 169
    :cond_0
    return-void
.end method
