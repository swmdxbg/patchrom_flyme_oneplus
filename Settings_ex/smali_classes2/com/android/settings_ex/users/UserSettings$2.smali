.class Lcom/android/settings_ex/users/UserSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/users/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/users/UserSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/users/UserSettings;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/settings_ex/users/UserSettings$2;->this$0:Lcom/android/settings_ex/users/UserSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 190
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings$2;->this$0:Lcom/android/settings_ex/users/UserSettings;

    invoke-static {v1, v3}, Lcom/android/settings_ex/users/UserSettings;->-set1(Lcom/android/settings_ex/users/UserSettings;I)I

    .line 198
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings$2;->this$0:Lcom/android/settings_ex/users/UserSettings;

    invoke-static {v1}, Lcom/android/settings_ex/users/UserSettings;->-get1(Lcom/android/settings_ex/users/UserSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 189
    return-void

    .line 192
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 194
    .local v0, "userHandle":I
    if-eq v0, v3, :cond_0

    .line 195
    iget-object v1, p0, Lcom/android/settings_ex/users/UserSettings$2;->this$0:Lcom/android/settings_ex/users/UserSettings;

    invoke-static {v1}, Lcom/android/settings_ex/users/UserSettings;->-get3(Lcom/android/settings_ex/users/UserSettings;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method
