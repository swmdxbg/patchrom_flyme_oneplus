.class Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "OPRingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 378
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    iget v1, v1, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    # getter for: Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->access$000(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    # getter for: Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim1Layout:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->access$000(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    invoke-virtual {v2}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getSim1Enable()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    # getter for: Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->access$100(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 386
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    # getter for: Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->mSim2Layout:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->access$100(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    invoke-virtual {v2}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->getSim2Enable()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 390
    :cond_1
    return-void
.end method
