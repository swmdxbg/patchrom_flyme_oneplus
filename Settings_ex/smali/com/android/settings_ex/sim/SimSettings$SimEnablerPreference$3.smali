.class Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference$3;
.super Landroid/os/Handler;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;)V
    .locals 0

    .prologue
    .line 806
    iput-object p1, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 810
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 846
    :goto_0
    return-void

    .line 812
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;

    iget-object v3, v3, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # invokes: Lcom/android/settings_ex/sim/SimSettings;->simEnablerUpdate()V
    invoke-static {v3}, Lcom/android/settings_ex/sim/SimSettings;->access$1100(Lcom/android/settings_ex/sim/SimSettings;)V

    .line 815
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 816
    .local v2, "result":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 817
    .local v1, "newProvisionedState":I
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVT_SHOW_RESULT_DLG result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new provisioned state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->access$1200(Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;Ljava/lang/String;)V

    .line 819
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;

    invoke-virtual {v3}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->update()V

    .line 820
    if-eqz v2, :cond_1

    .line 821
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const v0, 0x7f0c00fc

    .line 824
    .local v0, "msgId":I
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;

    const/4 v4, 0x2

    # invokes: Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V
    invoke-static {v3, v4, v0}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->access$1300(Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;II)V

    .line 828
    .end local v0    # "msgId":I
    :goto_2
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;

    # getter for: Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->access$1400(Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 821
    :cond_0
    const v0, 0x7f0c00fe

    goto :goto_1

    .line 826
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;

    const/4 v4, 0x3

    const/4 v5, 0x0

    # invokes: Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V
    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->access$1300(Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;II)V

    goto :goto_2

    .line 832
    .end local v1    # "newProvisionedState":I
    .end local v2    # "result":I
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;

    const-string v4, "EVT_SHOW_PROGRESS_DLG"

    # invokes: Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->access$1200(Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;Ljava/lang/String;)V

    .line 833
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;

    # invokes: Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->showProgressDialog()V
    invoke-static {v3}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->access$1500(Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;)V

    goto :goto_0

    .line 837
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;

    const-string v4, "EVT_PROGRESS_DLG_TIME_OUT"

    # invokes: Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->access$1200(Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;Ljava/lang/String;)V

    .line 838
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->sProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/android/settings_ex/sim/SimSettings;->access$900()Landroid/app/ProgressDialog;

    move-result-object v4

    # invokes: Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    invoke-static {v3, v4}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->access$1600(Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v3

    check-cast v3, Landroid/app/ProgressDialog;

    # setter for: Lcom/android/settings_ex/sim/SimSettings;->sProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/settings_ex/sim/SimSettings;->access$902(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 840
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference$3;->this$1:Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;

    invoke-virtual {v3}, Lcom/android/settings_ex/sim/SimSettings$SimEnablerPreference;->update()V

    goto :goto_0

    .line 810
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
