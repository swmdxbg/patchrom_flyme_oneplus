.class Lcom/android/settings_ex/notification/NotificationSettings$4;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/NotificationSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/NotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationSettings$4;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 233
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 234
    .local v1, "intents":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.oneplus.dirac.simplemanager"

    const-string v3, "com.oneplus.dirac.simplemanager.SimpleManager"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 238
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings$4;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 239
    const/4 v2, 0x1

    return v2
.end method
